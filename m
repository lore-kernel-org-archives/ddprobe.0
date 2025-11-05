Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F34303A32
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358994; cv=none; b=DtmrooPPXN/toXdoSyjGLaWdEFC7g87eSmq32XT7aW43jhLiwPQEXuvm77IaN9Rz6286oYJk00ZXYBC/E70DJj/Z2GmMC7oI2ddLr3o+EAh8B2FyLEVTr/FIKdqZy7D91czXuHjfCE3zcWOXjmNtgt/XBNSRVMLdslB2SDe3mSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358994; c=relaxed/simple;
	bh=BvbAWtQTuNsLRbvVXUn+aQ7TNsfHsv6vSlCRhKqw3xM=;
	h=To:Subject:From:Message-Id:Date; b=UOq0xlGQGue7wlrq8RQGP0ckZRHsdGTJ6ZRusXBpcTUrUHiVcSAiVQhKqbyoVfSr0edfWNdhzOx8eRdDLUpdXbweWt0NVBC4T5IJKx1aCZ+YOYH+E2k9dNvgsMdzkuKZxu2AHfNbVwIx/qxqM6VxN29qsrr/m6vtelK+QPibNGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF2Ae9js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF2Ae9js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA12C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762358993;
	bh=BvbAWtQTuNsLRbvVXUn+aQ7TNsfHsv6vSlCRhKqw3xM=;
	h=To:Subject:From:Date:From;
	b=KF2Ae9js0KzsHuvm0Lwh9ZXzJu9tKRG1Iot9+euIuCj3uihR5F+1Ux0X+c4iFVo6m
	 ZXAma0xLzWet5WizVimP9byJxPox0DKN2CaAud3eaCjOP/k8SRKL0Ih3qLpt79AzF5
	 z7UXPho8AzVVk80fXDenCgDN3cAYcoNzZY48tidFIcVWW4rCgGJ+x0gDqMCRWC31Vq
	 3eUg7XT+AIOjfKElBTy+/SYHTGa8oH+n5SpmFMCeSflS9PFs2Kgv3LTy1I2VmDQPs0
	 QYnl36fwV4zqIPInIP2c/zC3j6yA6IMnw02X6bhJJEp2foTBN1PxXxgOTbh7Q45ztC
	 MVH7tR/x3dUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A57CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235899358.20311.11455659768428623645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c04b34e0289f15dd42a9aff4d48946aad6b32776efd63bbf1fd5fe8f909e96c
Date: Wed, 05 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762358993
