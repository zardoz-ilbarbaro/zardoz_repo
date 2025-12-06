#!/bin/bash

cd x86_64
rm zardoz_repo*

echo "repo-add"
repo-add -n -R -v zardoz_repo.db.tar.gz *.pkg.tar.zst
rm -v zardoz_repo.db
rm -v zardoz_repo.files
mv -v zardoz_repo.db.tar.gz zardoz_repo.db
mv -v zardoz_repo.files.tar.gz zardoz_repo.files
cd ..
echo "####################################"
echo "Repo Updated!!"
echo "####################################"
