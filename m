Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4489D4D11D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719473063; cv=none; b=R++G00n9bSAuDfH42PbNhGJAQcYhYU6y2KofnLvXnVlicTdFamgqR5fXvDONYYCVjdGwm+6xEDXgcsa8ntWTBZqfip2BdPKK7X7yYUnWoEtYtblEWx4COtYaVglLh+lel0Qy8k+wmlD6txgTUsMz5/fyL2un/0BaYdJ7KJc7fzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719473063; c=relaxed/simple;
	bh=bXlfoyKEbkqx2kh5f39IErt01lnhdsQewvH/xzVz2Bg=;
	h=To:Subject:From:Message-Id:Date; b=n+kH33eXt6B4XGIJ7Oi8Z1j90NnjY/tCrsT1QPToDhTYsdYKb6BJNEQy1mOXDzFUuFtv5OfFkmENhHklckvsXFsehA/R2m35XOieS3Z9gnalMb3CWfr9PdV3EWdJgpW8hEMufYyr+LAR2aY16MpExz6tIDYdeEumKsT6VIgLB4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzJH4ha9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzJH4ha9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEED3C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719473062;
	bh=bXlfoyKEbkqx2kh5f39IErt01lnhdsQewvH/xzVz2Bg=;
	h=To:Subject:From:Date:From;
	b=OzJH4ha9gES/nhTr8ZJ5rfhrt7z0oq9jGb1EXFy4WWXwRkIIqFTpfmj5d5GzvIKrZ
	 CONoEvAX2kMe5bxqAKioyobb1glRF1NX6iLVIhyHMQ1gSU6HqieUR7+6QVqx+yNIdb
	 CaR5/yuxuJi9VMnSnFQoTsErxrJhP4FCPq5ctqOxrxTHevIgzX/CyeARUT49I0XsWH
	 L2xNZ4nk3mIuVtsP8VvmPkLL13LjAK0UX1CL8U+GXQ0/x64dE9BehgY5MqpvaLaoa7
	 TXpWTa0a+4/xb/XIwbtbSU1ojvO7ddxvP6FmlfAsBe9vO9Iwi8j/sWvqAOe1bzLTCi
	 xFBWb+uMFyvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC03DC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947306279.27509.2899320536046872696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4398f25ecb6e1eab26bd691bcf1e2239951bfb26de2a6cbf07f52f449591b99
Date: Thu, 27 Jun 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719473062
