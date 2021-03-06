<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
       <c:choose>
            <c:when test="${convidados.size()==0}">
                <em>Nenhum convidado cadastrado</em>
            </c:when>
            <c:otherwise>
                <table id="membersTable">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${convidados}" var="convidado">
                            <tr>
                                <td>${convidado.codigo}</td>
                                <td>${convidado.nome}</td>
                                <spring:url var = "atualizar" value="/atualizar/${convidado.codigo}"/>     
                                <td><a href="${atualizar}">Alterar</a></td>
                                <spring:url var = "excluir" value="/excluir/${convidado.codigo}"/>     
                                <td><a href="${excluir}">Excluir</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
        <div>
            <spring:url var = "index" value="/index"/>        	
        	<button><a href="${index}">Página Inicial</a></button>
        </div>
</body>
</html>