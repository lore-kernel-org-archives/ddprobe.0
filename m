Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5BE1FBE80
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754591993; cv=none; b=aCdrmO59BKOxKef+e5+x8J9vMXRIefcsqgXyiAgbLEk24XQi+AQ+OCkNqtLrX1oB0uixIDGjVxap7ERHC4YqJ2Oe/Xk1TrPccq57l+prJGiAjac05aQl1U045EHucHJ9dunBSsRr6rMe8Nh1yBFiWJ9YlmZCljhciZPE4dKtdKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754591993; c=relaxed/simple;
	bh=buZug3GBjAOGYNg0LNlNXSAQNjFEySDwTgYq/JAioKk=;
	h=To:Subject:From:Message-Id:Date; b=hviPEDiEfzP2URQGrZ/7uEw0WiZywoIt5Gf//OR736jz1ILK2tvjhSPQmd2Hj1fsslWSTPLFs2sYm8LPSG915FX2X9d1ZVC7pTrvu4Hzt72LGDXukDsv+LZY1ZuBmCRhOOhikAIJyQFp/s8zvFW8wMCPO49kKPHivShAUzqsCUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRrqqvKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRrqqvKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754591993;
	bh=buZug3GBjAOGYNg0LNlNXSAQNjFEySDwTgYq/JAioKk=;
	h=To:Subject:From:Date:From;
	b=GRrqqvKL4JUHMo6w+bJKI7mdqszPs34HwKOsdao+IYmq2qFm4rnFXtb8Jd37Mp0e8
	 pMHPPpMWG3MDpiwMTE7OpXHD/9HP/VQsfjyDqD+EMGRXY+i0Aey7pCsRRDl3uIX5uV
	 62WuwMCa/EeYDPQX7K8YjRHR3FlHJ4nX8te53Kby48//eJvS4ZaX5T09YjmML1u6c0
	 G7yEYS3I6g7bnVGWcZTQ0pNM57gJoyG6BTzJK/vaxG5RjW6hAxJxxoOfRLlAWOXe3D
	 A4AaWsCyohH/iPRuH1cRPJ4E7xI6hpquer7GzHX6EIAWPTcq3WX0mLSdXt9nwokW+p
	 9mcXHOeCwF3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA6C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459199358.8743.17423029912589003097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19d132621c6b7473993a4cd1d2bd0fc7bbd0613853e3d5f81a6faa77b065151
Date: Thu, 07 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754591993
