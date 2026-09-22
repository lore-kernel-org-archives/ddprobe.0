Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E973ACA5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790092834; cv=none; b=gefeo5Zf111R6kFf8/JogDO6Cq+7v/nwBJP2DtHeHzefp3ksEkzbax/CAPIkHHUHg8QyWxiEVU7VaH1HMEOLjwC6tkjO47lNk42Yl80OfMZRwpUQRRM6INECPknE6fmoTjoYpNlR9WFGF02oqTXK5n7O/GrX9chf7XveTxWXnXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790092834; c=relaxed/simple;
	bh=S+1u1t5ZNvTwIUCR5ZNkPfPNZd7Bc9J8pKgabnrlyik=;
	h=To:Subject:From:Message-Id:Date; b=OcK1Y9u7UP0zRTF2CNsRbmK7mD2vxmIKEsASAWtoN6tIEBv+/JJrdbplujWQylm6vUvn9AOHjgKcPV+221hHNJ8KjE6ioQqWYqa1KDas0XpyPbQXXDB8XVql2D/rEf3Nps19xp2iUeJqf0QA6pMi6obikzGNYY7zDO44jLPGiLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGlEvFIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGlEvFIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAC4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790092833;
	bh=S+1u1t5ZNvTwIUCR5ZNkPfPNZd7Bc9J8pKgabnrlyik=;
	h=To:Subject:From:Date:From;
	b=TGlEvFIof/0jVx7Bzh8xUT4+0u3BYhHNlGKsL5x7WEyIT/LfTsp3naCJoG9+HYfNY
	 V1HtM1Aw04VK5iOw5zmsrg5hcyPDgemjJDIRLhu/BkSZvBVVsLHKkJa1q03HvyDsEb
	 hco4HoTpL6d6Rbs6UZhtPEtuP5AQQDgLph03xTTBRsvO8VrNZRHPyAmmkk+cjBZ/qc
	 H17iiDMsJOhDE1NtYgLOHRrm71tvAeETK7IDAdQ1AUQuOxZVosPIHOcUkAsD1wwIof
	 JAD/hH1OMO4+NSy3EsyiY5pNxBrxihSffulkk/hOMBMX3lp6vHoNw0OtT7lPvDeb0X
	 bqh7HLYGHHvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA11DC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009283375.1585.14394307487005012055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a4bc3186d9a8870af939e7acf488fa854fe8b3e91532eda6195c2d49e355b0
Date: Tue, 22 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790092833
