@echo off
 
setlocal
set msbuild="%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe"
 
set /p configChoice=Choose your build configuration (Debug = d, Release = r? (d, r) 
 
if /i "%configChoice:~,1%" EQU "D" set config=Debug
if /i "%configChoice:~,1%" EQU "R" set config=Release
 
%msbuild% ci.msbuild /nologo /m /v:m /t:Compile /p:Configuration=%config%
 
pause
endlocal