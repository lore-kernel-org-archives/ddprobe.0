Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FD82BFC6C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747162195; cv=none; b=czqKKxsN+ohQkPT8okSctgYCNxJ2Umnt1LfcfAPoTI2ozqfJX6MkPh3rVi2c8IKePa5FWsJKmkzRZfHIjGfEmTD/9WHUIw5VPnCLG5e9qMXcB1MmQl4sK1Ud9esQkRNEziFf2kMgV6IjEEj4mmPKT+iYucXzRlNF7ZkCza4vTrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747162195; c=relaxed/simple;
	bh=WRWqqgkX6+KyVW6o1LAMl8tQEFe/a+K4F5FcI6fhtoc=;
	h=To:Subject:From:Message-Id:Date; b=Dn50j3TY48VWJ3iOJkgjso0VOR8NYuROgEbsGkvIMxpl9QjE0Nk8aPzUR/mxZOwHKBmixhXmNpwwlBZN0glVbMO4j+P6PZFXHhuxlRdOKxzEedWKgVy9NtdJlM2gFx+6AE47fzsSh06F1r4swz3pl1gpBrmUTshgWHFgj/TdhCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hca6pmhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hca6pmhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747162193;
	bh=WRWqqgkX6+KyVW6o1LAMl8tQEFe/a+K4F5FcI6fhtoc=;
	h=To:Subject:From:Date:From;
	b=hca6pmhdFL87JuD7nVUi8RH1To0cY05KH9qdYLyQvl4ESrpsJaHu1cpL0M7NtSG7p
	 jITUb7qq7pHM374jNxou/4WKs4CEQW3z4jNZXd8UrIithz+hkyDp+KDKzmQgZq75FH
	 DvUMTVx89F4h/LttvFIW2My4do+WUmntbAG/8FfZDvUyU+tRcNpdTB/JX5MHSjI65k
	 sExek1uhb6yyY33/r+vphKHqzZ7U1PVOvolqgU6NpMuhR2VL34ZPN7rI1stpgCRbNc
	 wnCxwuXSm8VPLLiqB8/0dMKjRDNTXCg7QAqF8S72KobusYFLU4t4rXnQRvQHXtx+6C
	 a9Mqr8afsxtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94008C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716219359.26038.12649290958963720792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d711a4f575be4bd74b546b2bfc88be5b3446d515f838e3a16db970f2f6874532
Date: Tue, 13 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747162193
