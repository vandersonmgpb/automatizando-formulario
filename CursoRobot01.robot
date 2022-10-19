*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}             id:name
${input_phone}            id:phone
${input_email}            id:email
${input_password}         id:password
${textarea_address}       id:address
${button_submit}          name:submit

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation
preencher campos
    Input Text        ${input_name}        Jose da Silva
    Input Text        ${input_phone}       (83)991251233
    Input Text        ${input_email}       testedeemail@email.com
    Input Text        ${input_password}    0246810
    Input Text        ${textarea_address}     rua Eu sou do Brasil
    

clicar em submit
    Click Element     ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenario 1: preencher formulario
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador
