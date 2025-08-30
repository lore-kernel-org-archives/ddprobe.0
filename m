Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21141EDA26
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756524593; cv=none; b=hQkkdNiR6nt+f+eenlgCbMXtfhS8EmBuJANC1ZHF0XIftN39NNHn02TBsA5uzi44l21DE90GExFPPNF06xx1HYrMm784/chvYK4hTVL9KwyEdYMohYWIgdHwlkzsmoONEuSrdF/ygHugdbUZfA2d/nn4bCrhKNqapU4ZoFnNcVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756524593; c=relaxed/simple;
	bh=VU1r4iHmISsthIzSM8E4dA6egM0i9xiOgYNVqjH8Igo=;
	h=To:Subject:From:Message-Id:Date; b=HRuJe3p07dasNvSARNxANf65TZrvsj8nVa+aCahFzlGTbVa7GJLv5IIYTseuEci9Y9YuLfwd1k2J6Q7g2Nxa9CM9pH1RI7Hl619o3TDvEYeuckGTbI3VItFSo7G2YEtFR3z5H3zM2OF0Wfr1pABQPdJhXcq5L8HTkzo74H6ESfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpWZeRuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpWZeRuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2977C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756524593;
	bh=VU1r4iHmISsthIzSM8E4dA6egM0i9xiOgYNVqjH8Igo=;
	h=To:Subject:From:Date:From;
	b=kpWZeRuyzJsF1q0ddv7p1N6jmDr7Wzc7QaU+k1NmOfHDwR/K1p5BM2FY+PLzSWhWe
	 KmeWBJJjXU8Kzu3mdhSWYqYk5sLlxhsEYQEt4p5gUoYCvyb8eGND7oy5mUsHrU0ZCn
	 ni8Xog7Lo4xj1a67+E3Xm+/7/91UF83WzNuGrexwlsY2Sp35N+X3i1scTjJTXq4Zg4
	 4+m73GwNEG8dQ/k+A4nMeUJaVbNeER6tnJ0NlyN1LA7zY3u00Spn8YI+HRVPvvmlQf
	 HrQULnv1iTrNMGhvr/5MFahxa3TUcuE88fKVzNVVkdMIxHaAVHMXcfXoBjPYlE+47s
	 40c3n9iyRjsew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93906CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652459357.11696.10545716609398070187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c21273ee4aebfb440d47888d8a6eef3d465292cfc00a5ba29c5b710daf5461
Date: Sat, 30 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756524593
