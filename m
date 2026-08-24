Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4EE34404E
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787594434; cv=none; b=YqRfIJVbMap873PKPSaUb+buregTtwjoz1ttJgHq0k5YrsMnZ+0UV5y+BrBtAEP9yQaS+3c6a+idsCV5YriSnYvG+asA39yfh2aC/a8lt4dfmKpzPruR7JtW5ITIDwdmN4WMJoxABULQzom5+1u2HAGk5+ShoOG1hT1nuPBOK5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787594434; c=relaxed/simple;
	bh=9qHfd11SVR6lGxa0mxLNXsKCGrnNteCBFqLGh0fCPW0=;
	h=To:Subject:From:Message-Id:Date; b=BFt5bKYmcyRAt5wjiTdeTuTHDzzTy0jYSslnCxEpJThWGch41qsOhBVmnEfQv2wj1WUavrkmlfpFvuNbL/9pljLN0laA2T9UBzkpQ78UKwhjG8kUCIfEUO8lIQIR9yA+FGbA12Eo3Qwfx4ma0ZGM/XK7Pf9bNCyqGbIDXzbahHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Niqp6DmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Niqp6DmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1518C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787594433;
	bh=9qHfd11SVR6lGxa0mxLNXsKCGrnNteCBFqLGh0fCPW0=;
	h=To:Subject:From:Date:From;
	b=Niqp6DmSRvE0aa3jZa4clZQda0CvxywFdyiYVptC02IMXxGbjxI4Q/OBqIg4rQzih
	 yR3Qrhi/bi5d+P89egDNQPd41B6lGEyhw7yCi6z2hdm6OSPC/Ss75zTHaSrYpfmv5M
	 crllyhibTfyQFzG6Zb0XxPHV0c9hGjoto/rIctPHdwOM+g89mla1Iqu1JggQVrdzOT
	 ajQrA020a18wipRxFUPEvHdiPUOQosQCrRTYJJFK5dhYZaZnwLgcNmg/0xoNmNM2Kv
	 tl9Y6rcb+vH6YeaC60Z5blPHfeTdAPk+1YtG1p3OxcPNqFcUk60uBEIhL+p5O4MARF
	 e7bZD3n8hmKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB628C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759443369.6911.1790747804908396096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647ff3600ebd4805e0dc25be51b028dd8f4a1841b16f0fac0d70375fc0c6fe1a
Date: Mon, 24 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787594433
