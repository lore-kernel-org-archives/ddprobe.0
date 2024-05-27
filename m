Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE29101DE
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716849863; cv=none; b=ZK8d6v/tQHaO4Fovn+M7FCQaHwWiyzb+w7dxXrjihnYUm7pD7a2Jfvm9LmZHphr5sDosZX5hFDWlZ2R0o6u27B1mK0nr74ImbtcGOHT5d6Gfrg+SCmbjldKZ7h7TB6XVhCvHsQjCz7tHOqSOTrSmRPoZvnCmukY30Skhmw0c0uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716849863; c=relaxed/simple;
	bh=ofRjQGi8g4mG/9q1sT4OdhwkyBVekXNvqlEstHPG0Os=;
	h=To:Subject:From:Message-Id:Date; b=i/vAomiXffroICTuwB9X76GSzpWKcgkH2ZlN7FrN6lq5rL741rvLQZ/FjlpaNg3BYDpD9UTW14cfD04jS9WLX8Ya/LPbzsR1F6keNCjE2qrMEStsXvI1lP13webPGUPM9mbhtwroaoAcQ4Qx3nLop7DgB1qiZ7kjkdVoEcilZaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op+0Loh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op+0Loh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3105C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716849862;
	bh=ofRjQGi8g4mG/9q1sT4OdhwkyBVekXNvqlEstHPG0Os=;
	h=To:Subject:From:Date:From;
	b=Op+0Loh2Upi9FY1rSvlb2FvltVgBCpahEBdogGcYJv/VU/IE4LQh3nnbg4ugaRKXN
	 782PjKjiT1KgaN/BbOS9yBdr1oN3e0+q87VA9vxqdwcJCfL0Ix6qrzOxWj0roYYNkk
	 gbWILPYRPeKmO1unQyIpLx+83peyRn41eR1Xj7QsnNsXE+pXbNUx+/UgCXOeGPP4l6
	 u6PBaEyDdgCnrUJE6UuwxI9IkqnPrroJD+a+J/pBFPdsOn0f2vDCJyU1IC8XNQXZlI
	 DGxqY9LfS7ec6o0Q78e6GHvld9PiyAfyqIy0eYK79VE6+cpBgO2G+uWV8NaEZGgURs
	 dZeJcH0Bjr3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAADBC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684986275.2145.4308998733287561663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636699b8fd2aad4876d32f3219cd4fcd66a1395d5747fc6cc9b2ce463c8f9b11
Date: Mon, 27 May 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716849862
