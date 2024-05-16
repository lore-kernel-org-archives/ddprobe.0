Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D63145FFE
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715862143; cv=none; b=MIj0ne1X9U1E1VVviiGJJnLjklBtOwB5ao8HWYf52IJQXDbtrjpIMIfabn1onv5lAf6PG4C5dkEk5UmfNHF1W4wfoaWApet+pZvZzLmQltKPkId3KxJ+hCxObrIX15TC2HqOIoyQo4lIFdxR2z1rgpDepMHlYeTO1nWna85l3oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715862143; c=relaxed/simple;
	bh=hVpl0ofbBhqz6+g0nJJzZ1b9bqbn9gv6ZvUAibYchfg=;
	h=To:Subject:From:Message-Id:Date; b=tBvtxPywJ549Izy+M8WdY6mbspU1D3KEEfUmQexEmqaNpwu3SgAggBGohce+q/djcOE1PAvhHDdyKaadDQRAHs22avLMPidE0NgUf6JRy94yoSuMuXdly4ZP5Lf4wQOjXm2uAPURXwV4nqizgYBIQKdKT+O5Hvmpy1mQv5UIrPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFMUOrR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFMUOrR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D2BC32789
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715862142;
	bh=hVpl0ofbBhqz6+g0nJJzZ1b9bqbn9gv6ZvUAibYchfg=;
	h=To:Subject:From:Date:From;
	b=PFMUOrR3pqFR8KhfAQF7w+jWqanpDAhZXBpu8I3GJ2E7UABqAJuInsLLnpM3drDbG
	 o2zZL9pUQxUhCla4J8/0J31tf7pCPK8DUAm8Gl4Q1n7yKTsVw8Z0CCqj5cmt3CViIo
	 KKj6vX5ck9Ln5iqQOG2waR24mKU2VZPjyCrRo4Q2TlGIlWC2Y8ULCNvh2q7HkJENE7
	 YblUhj6oqspA7npu0gBYmfV4BNkeKjas9Fd2K1xlolShrOQD0BJGZ7t/YV1T50cANM
	 eQLQWUt2g04BSZsaA2+Mn/NIje1UDRfHPTyXa6Ln2+TlZm4Fajxj9+nbMFMURppydB
	 U96bU//JFH85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8801C25B7C
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171586214281.21259.9298489249260725003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda2c9f6ba4a7f0d0cd862ad7850714d82fbf68f794300eb969c3d75a02dcf5a
Date: Thu, 16 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715862142
