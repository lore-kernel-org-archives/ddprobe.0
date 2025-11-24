Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1434A219A79
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764005514; cv=none; b=g4BG/pqnpYeCn7mk6wj0rvxQKDrdBDF3Nob5HDikmi2ffmi6Pvz928t4u2H7NYOgSAalX47sd765ipaE2mcij21foDEg3PW3kJi8gBP4xeuxvAFvjKq61/n5J/M7PJxyeuFJaYpGVPmg5eZ5O9HY96YgQQNibugWCCh7IxPhTeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764005514; c=relaxed/simple;
	bh=OLCxaqbuIQ636yRRqikAZs0c+9Ga4GgZ83DMnaeCM9g=;
	h=To:Subject:From:Message-Id:Date; b=CYVzTDsuskiBVinMRysHP2rSzUdHzAd7wlkZdLINHCZu2c3kLYuvRyReSdm7BGgByyVYEyQmTKmFxHuq+mNR9e2K5C3LHKEQT/a/gk1ro+mtgurzT5XZkBV7XML9GaV0JKw9MwvpMQbJslgAZPTkvjxKMytsaZQWX049W03TrtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkyfUQrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkyfUQrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C2EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764005513;
	bh=OLCxaqbuIQ636yRRqikAZs0c+9Ga4GgZ83DMnaeCM9g=;
	h=To:Subject:From:Date:From;
	b=ZkyfUQrXB3WJn4IxjMMCU+sz85205lVJaxydm19iDYZL+0cGc+b2YBL5x4hSyo095
	 6KUdt6H/M+8bqA8Znoyt2lKMd1QvmP10VPSzISKkJPvY4vEKO08bInupNsdLxde4yc
	 vdYlXRgHiTYjMBBJq3JYzJT4Wpk+wYJkiGd/5o4m0spR0ZIvWo0bTq2XGerlGj8CFj
	 mR5pIhfc7rvqhaqKwnUrhKEsmPBWeW8d820uRGs5HnXhctxy9aEbRzD3Y24Cb0Ww/N
	 AJo2d7Y839vz583KNIfFfR3GtOWsHcQ9KgIXt+DPU69xauBcH6C63vFfjxwOTZIglC
	 nLg3qZN7ukCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04DBCFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400551359.28614.522914388506124704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72757f6b0a7ac969360b214a23b92381264815dc22943cfc17f41c5550b82b94
Date: Mon, 24 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764005513
