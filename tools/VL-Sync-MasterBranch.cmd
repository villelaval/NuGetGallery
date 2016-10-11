@echo off

git fetch nuget
if %errorlevel% neq 0 exit /b %errorlevel%

git checkout master
if %errorlevel% neq 0 exit /b %errorlevel%

git merge nuget/master
if %errorlevel% neq 0 exit /b %errorlevel%

echo Do "git push" if everything is ok !

