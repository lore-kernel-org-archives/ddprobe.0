Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424B9136E1A
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713880823; cv=none; b=OXVgzqCZhMesa4cgd9Q3nxSXzcPpPa+05+1O1BRPcMblkMvuRSV5LN86wX/O2jUf/KICpw3LbCNcvSDsratSXxtbNyDvjXdXAryCEniOXmJuqlJ/8K/ATrlA+7wAXCMsxqmQan1GrLJPKBeko562iUM+Q1j1GDUEk32piAeJ2dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713880823; c=relaxed/simple;
	bh=HN/UtVRaV0EX7yodEWS9Z+70HpZ1dyaoFa6nra79Y5I=;
	h=To:Subject:From:Message-Id:Date; b=WK+ppgx6ufg6AXFXJKvJsYnPMoGcAr4yiWUEwtCc1eHQZuc1PRD+vSaXQpsxydasAqDKb5tgNmYDp0It503uGU/M5AxKc9yRjWNafA3kWs5p3uripzwzuEp0Chfsu3w31GrnU6RNrHADvZPacaVJwKJM7LSK0+Y8fPWOwFC7J94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIWFqlX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIWFqlX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAC9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713880822;
	bh=HN/UtVRaV0EX7yodEWS9Z+70HpZ1dyaoFa6nra79Y5I=;
	h=To:Subject:From:Date:From;
	b=EIWFqlX+t0YOJFGb/FJI6FCdCU3fqATgp2SJ9Wx3DtaZ4he5nInYtllVN3MTh0nQ6
	 EO2x6Bpa8LSon3/T0IwiBCzZuw8DrXaLB3vkXdOYZQeW9j9eOQIIqeSPDz6GDITakh
	 a+HxhnH+uOOhGVP9jaTdtJ7dNO13U5mwa1HIQEKp+QSbGF8VWfA9twWwyn0Ly6q3Od
	 vwa+HRh6jON7miqp7gSaytgD+w6Yw+dt/GWTUs48pTdx4VpPKJo97LMjcOxPGDcqmn
	 cKH7vyU7n7ugUibpBxRtuDkiL6RnRonqVfN+q1F/q8qzpTT+x+dLKs6naGMlRss4Hc
	 d9O1sRoEknxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97F0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388082281.26495.7923606054571140079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee4655b64ab53b94e8a8b98ecf4a7914157996c314f46b75a9e0a8c2e8b9c5c
Date: Tue, 23 Apr 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713880822
