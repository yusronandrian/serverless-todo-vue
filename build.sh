#!/bin/sh

[ -z "$API_BASE_URL" ] && {
    echo "Missing API_BASE_URL env." 2>&1
    exit 1
}

mkdir -p build/

echo "Frontend Build: Replacing API_BASE_URL with ${API_BASE_URL}..."
for _file in index.html login.html register.html
do
    sed "s#{{API_BASE_URL}}#$API_BASE_URL#g" $_file > build/$_file
done