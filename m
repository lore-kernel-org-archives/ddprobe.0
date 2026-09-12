Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5034234A76F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789190434; cv=none; b=G48kc1rLLSZXMXcHjB0fbP7u1zapbIBFuSCG66f0GXIS2W2WyC9UgSE1KR/lHdMgt2D30yOL9nlugp05EWHsO7Gc9TzRlIAxhVxyFFs3zEW0MrKGeG1cRem+iXm4jRPRFpxn0wG+ZLTeEtwSMFckk1tXxuYNIxiQJxLWg2pcA/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789190434; c=relaxed/simple;
	bh=27RsdkkQxln5aGEFZiqvgtcGPl1oFbyWP6tD7eBWEa8=;
	h=To:Subject:From:Message-Id:Date; b=iuagGJXeKzqHhvSFPFFJaPnIyShkysGsFSTljUWf+XvTblsH8mmaPb4QNFG9sLzJBnuC9sBgyAq4e9R1OviKZbm7KWNj48AnMdqHF07YAen6iK4zoZdtsWBRPhvGEiiCnMxI8rN6l7Usw7hUCIRJP8WsL6kbDVUkv9o0Gw9ZbsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWCFeqvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWCFeqvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0D3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789190433;
	bh=27RsdkkQxln5aGEFZiqvgtcGPl1oFbyWP6tD7eBWEa8=;
	h=To:Subject:From:Date:From;
	b=dWCFeqvqrXf+t0QAg7mzNBdWf7zo6y6EJaT23bQfWyCmJzDj0+HCMRD9TNOD+38Bp
	 HaaQgEivx4wqXsd+peOCdXaJyZHlPbp+th2Kozb1SV0vR4wi3nuNF/pNQumDNn0y5W
	 xTI7KOGkTJUBF6I1I7caOmtj/PfBghNDfsEHsFrH7/59+DldA4ocl61La/sN/Ak5oN
	 HEwaBNXSAz3TgVH5cgh6Tvld6PuyxoRK114Wna8+Nnh5Aq40SePf1kH4rueToGtDsQ
	 c7KZVCXZqoBIY4HQ0zHyxqx9XS2KHCHYB8La0J/NPUk9iGEw213Md6Xn000Iiru9RK
	 PAQAi1jCOcyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA330C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919043368.15341.9818691657245229134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a065f642ee827d12d2c7bee046bacbda69081af372c3537f01a8e30907edd255
Date: Sat, 12 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789190433
