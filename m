Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2D236829D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787343034; cv=none; b=XmPhHYj0+uWyw+Y6Gy6kDiKYhoNFWT+/MkuLLl/78YamnYtrBKqj9zdRpfPSXLVjcBemIO3D0HsN22UknGbZNmz99j/FrKt7zly99PJsQU6C6ZiZ1h5KTHmR3JOqhuYG335srAQ4TQKTmE+GNHTbZ2/aKvhVtULkaIG+0oOykW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787343034; c=relaxed/simple;
	bh=h8BWViLcXJ5VDojb9IKNEWmfgLCpLe7a///G/feZCgs=;
	h=To:Subject:From:Message-Id:Date; b=DrV/jNvPgiVqME0EIgp6sVxmSC9s5Vp9X36XpJI152zDkuzFKWzxnGXNVEamO/ChCx9tx/anXfllF5SJ6s3tdvIHDyUpOkBY+HR6nrpldV/pin9JtFcxuCJ7jgAANr7+SABWezXOzh56KQJKMbNYBuI2q1c0ppG7pPlDGCReKwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSLgtad1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSLgtad1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2231C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787343033;
	bh=h8BWViLcXJ5VDojb9IKNEWmfgLCpLe7a///G/feZCgs=;
	h=To:Subject:From:Date:From;
	b=DSLgtad1snDJYsBnzeLZidMLtFf4I2FBbe48NGNxPBV/j7iFhFcFWyFfCbI3OOkLq
	 kfgRgHRQdB57rO8GVGThHpbNItNYDJSeWRU95ea3E0sfrXOHDp1gsXwh9NikUCzXi8
	 mZeqytEIqwkhyzwPX/juyYrAMmyAOGmr7ebP0uby9ae12fPEK+BkT9pQ70v3UgQ0X7
	 SBPmLtJnrJpPLPXKOanN2jeUb5OhR4gm0vPrqfDCul9mEWuMgYAdg65BvR7zpEDSn8
	 vtGstDhyYUS9cFBQKwbArkKqNzEkhUgKRrN4d2I61Fw4AWz/X4pU9G4vwjCOX3/lvx
	 yRXkmxfyvdrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB44C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734303373.17986.9533085050989738278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3956d8264b174d0a11981f56176d1389b59ae724867fac77ce41ae90c405c9
Date: Fri, 21 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787343033
