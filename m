Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E02528AAEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769001234; cv=none; b=p/iObk8gI+OKIE9bdREjRqEqUhgFaZUCDQVa2Rwsro1DwwO+7cpJ8YpztfWZF6EHRP3iKyoDRvfJNyEseYbvfPI31y+hyGI9BikeU/kvYBrlZX4bLVWuwxcXOTxjRLhpboihcpszJjYENNK6EFWqLfbmcjI2OA14eNPJpHD7PR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769001234; c=relaxed/simple;
	bh=oBKUKFuCFHeaR3nrarIVO+Ou1RHtWGJ3DE3OlALAfrA=;
	h=To:Subject:From:Message-Id:Date; b=Fb3xNCig856wbJSm4ELwWbBrCPcIO66wtm/ZkGzbTR116Dj5IJ0SbhQMcCsekO2V637OGh5SxBDHcJZfELvGbqYy3VowjpGUiFdaKuaX+LdOSWcMX/KLNfHbwfPYqZ0fbO4NZRUU0OHbs2qlo/pWBwqV2/sAy+2fFPqd9AvcKH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgBQIg/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgBQIg/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769001233;
	bh=oBKUKFuCFHeaR3nrarIVO+Ou1RHtWGJ3DE3OlALAfrA=;
	h=To:Subject:From:Date:From;
	b=hgBQIg/Ey+xsPZ8BJlNtbYg6fBv/MXtrjnBLf6y0Vs3kl0TcNUtyP7tJhv9Bt9RdY
	 e40e5wxdpRv4laYUpy2gitVzkwn3zTFQYU4V+Z00OzlKjkzx8J669uchGKCrsfk313
	 p296GssBMEJAjgeFaO4LbyWU5tqoZEa3B8JMP651GHLGQrFfGXMEJYv4n3PNN6Q88E
	 JMz9nGTxQ3Yf3crPWHTsGeIUtTNJSTPhdnzGWlMBATXYStvRRF6dpHJ44BQX69YKI1
	 7y48AX3bXF3WeWM9rDQxNzZCRRZSTiT5jcnL+g26DyO7vchkD+iloYHs2IAieLEGgP
	 EqanMVsGA55vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94774C44525
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900123359.9401.10115152197500168029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4bb819ca4d7fd84008facf4a7447fefee1d286ccdd61987887ceebf45b7334
Date: Wed, 21 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769001233
