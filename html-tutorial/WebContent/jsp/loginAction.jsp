<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>loginAction</title>
	</head>
	
	<body>
		<%
			String sysid = "jjdev";
			String syspw = "1234";
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			String result = "";
			if(id.equals("")){
				result = "id를 입력하세요";
			}
			else if(pw.equals("")){
				result = "pw를 입력하세요";
			}
			else if(!sysid.equals(id) || !syspw.equals(pw)){
				result = "id나 pw가 틀립니다.";
			}
			else{
				result = "로그인성공";
			}
		%>
		<div><%=result %></div>
	</body>
</html>