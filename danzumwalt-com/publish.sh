#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $0

cd "$DIR/.."
pwd
rm -rf gh-pages
mkdir gh-pages

git clone https://github.com/zumwald/zumwald.github.io.git gh-pages

cd $DIR
pwd

yarn fullbuild

cd $DIR/../gh-pages
git status
git add .
git commit -a
git push

cd $DIR