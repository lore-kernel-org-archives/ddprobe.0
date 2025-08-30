Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1051A9FBC
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756562394; cv=none; b=oCoN9hUJwzMMATOtwAsJA1zWLZa1uJ9n1DTib3sNtMcTDuA4G1gp8QF7XieqCxwbQldFUqc2ie8pCiMu1fKmTxmdRG3sBCNiY65IEJ4faUj0y3Nu1PL7ugI5bERq6O+UYuPPkc7Jb3tIGkU+DxNmNDcXy76huP4njQG1XOq69m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756562394; c=relaxed/simple;
	bh=KSsdF9st98saGHGFlXpcq/tcyl9aekbx2fyRKlSrdLI=;
	h=To:Subject:From:Message-Id:Date; b=DJqBjYgKMshuBi1GQsi+tlyhf1MiBrhoGZhTfaCGtLravGn6EY5PcmTVCDa3qPLv+iijvjs1aj06rJ25EVGFR5wTK50liLbet2GaZKRImLzV0BdN98sKHEF8w1Bf2HYXIp9RJTMtGlP5B2rMAySOKuKsSUv5x4SpMQXDNMszDBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2pV5M7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2pV5M7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756562393;
	bh=KSsdF9st98saGHGFlXpcq/tcyl9aekbx2fyRKlSrdLI=;
	h=To:Subject:From:Date:From;
	b=L2pV5M7CTDyLMdSSq2c3fnaoYnE5oxicf5uyUTWSaa2eWmRNdSjSGWKAb2FYdyU72
	 rts4hK94oKtKOzPgLwgYODTGQ3u521sGuhOeKj1pEa1pzMEhH4ewOzKSF/Yh9MMMk+
	 UgnZUvvhwkMlacyaVnjEhYm6OFTTLrdP95XW0lo2/Yu0vL8ACoxsHrFPNGgvVJD+PG
	 RY81FYXdDVfL7Fh1rDsnzLDmiUT9Vi8uiN9oqtbeSxtxFxeTXn0Dz8LDmh4cUJVeTR
	 keadfqBRdo80BPIwkN1vGK/+OFrcCxw3jYqxT2oZoB2uxJkp7XFg8bCnwDbiRDnOpy
	 hm2nsTsayASDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A7CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656239357.26071.8747158944137726851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d166a93a6b5a674a827f51ea6c9c947ac70f3accb23f190b9eebb4e695a0787
Date: Sat, 30 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756562393
