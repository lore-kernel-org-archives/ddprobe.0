Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133081B0F0F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729031154; cv=none; b=f9oyqx2vsrscdJ4hDew8o5BslL4HGxOKa9fGveO++UrkJj3OleDM3zzrFeo9YgEDvj4fkLAR7zA0g5ymM++UMDUkWWR3mn3sd2QeGB8koSf4w0BFlXMKjug1E4L80Ng5mbSaX26G4wcmnTPrhRWugF6Uqe12leRuiRXF+CzPsaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729031154; c=relaxed/simple;
	bh=bD8/R5V7BgzMMW/ldYIfznjSyZ1NQrWj9TxTzAWT08U=;
	h=To:Subject:From:Message-Id:Date; b=Tr9hvcOuJmGx9J4vbV+STpA4YWxMcMA/lIjz/OclsJ5R3HOj06EVPjlmg3XupvomMifgxs+kEve5lojeBRj9DFgnxgPxOM3OpuN+dplG+Ghm2UtZygJgfToq5I0MVve0m/E0cLd6aKeuR3NSGaf7vIEGCaF01wxfi6X2v2pOzT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otAUe9o8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otAUe9o8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653CC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729031153;
	bh=bD8/R5V7BgzMMW/ldYIfznjSyZ1NQrWj9TxTzAWT08U=;
	h=To:Subject:From:Date:From;
	b=otAUe9o8DX512y+brkFVHsFX4mK46h898NrkmtgflS/nM5dHsteN3txr0zxfDmaY/
	 RT2D/OdWZYlXaxXkRKbXl1FSTHVQw2Frrp5kVPeWrRqmWjBwo/QpC1W+Y3Sfihpw91
	 SehToIewwMi81FZ125B7gryNY6sFBIRUNNTArh3ihY7DCvgbLUPZMbZ47QsQJ2uC52
	 pPxDaOcWx/kh2yXnR4Kd8Citylu+rA9WbJlTH1RZ+nsue+0cHz05Sb3tTLefRGm5ZN
	 AlpJRNoHVBMCgVX8/JaGGK1uUukFFTbNaN/6qKPWtAbVprWSfBailAZcAEjBLRrj4S
	 3xBMVAzMJA3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD5D20681
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903115360.16228.1184001840674244377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c1324641eefc38d42c261966e239e900515b174202344f4f1adaedf2c190c9
Date: Tue, 15 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729031153
