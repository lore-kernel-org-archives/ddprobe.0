Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDA12DF6F4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767956634; cv=none; b=qZtwof12nbao1liz7MxNsCZ4B2wpG7wWOpbsBLWwGlWf6tHBNna2DB15y7kiblm6NHTo8jLBcDaXOhsjEECenu8NIKOhfWdKg30GgQhD1Eiy1EkAABimKrsy/OtTBhgUFC/HGeahlakEv2E8JKa9nvzzNAA5ZiBQ7n91fxNjwxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767956634; c=relaxed/simple;
	bh=KZi8z7XltrYztwAZOTEBbiE82ot0PWyjXxfonIxJy14=;
	h=To:Subject:From:Message-Id:Date; b=eBarSrBRMHhNIq/eFkLOYfElfIcxY1igVQbUJuFjjcO4U4WO5y/xdnO8g+F0vPzgzsJZSW5Zy03fmTufz6TeGe19lWSbAqaLindduTdsR6PAPIt+QdbdcARyn0UtIAxwBENbjfvUJPn/tcz0AZwuaMFIi7DBXfghQUKuALRnHG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3pBmUrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3pBmUrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C7C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767956633;
	bh=KZi8z7XltrYztwAZOTEBbiE82ot0PWyjXxfonIxJy14=;
	h=To:Subject:From:Date:From;
	b=s3pBmUrpR7DS7DIcHfGktKsR2C1Dgq5oM1jPebCL4o0y58luGwqBDdne3/tAr6Ci7
	 6iGXMun2rpnrS/LCCdsTipOOLnv6LbsoO+NIGSRJUAjx0C4knAGsGIXTwaNfhxHdKL
	 JFbpNalVloT6uIwsuJzy7Nw9aknmjHP/We8pZvIelc8mdDWX9df/mP2wwT//e9207O
	 1529E0bl8YOPgYP0WhE9MT7Omx67bEpaIepqj7pPvHiX2V8JmnuXyzhG6Mq7UsMGvH
	 rtL3Dn2SqGLtfNmSrvlmI++LK1J4RR+5eUCcHBK6hsFUCGqReGx/VvP+oZjt3wH5cj
	 +XEj22DOOh1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F7D1680F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795663358.1095.15659467333538134083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a23e1a5515231156ccb48582c31a99c428483daf470396c431bc0203319caa
Date: Fri, 09 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767956633
