Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5019F3126D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790461234; cv=none; b=jbP9Ue1J0ZkaAxWp71nUKjYbiPKdeGanIdxup/rWU4R66RgLidAA8gRG+CBprNC4OvTiMBUUPn0wZ9puIeL/b1JI0g7ZcmJ2gcTip+YFqfeG5jqIxpjZdmkRBCgLB6rBmFxi0XJGKndUPWP0BU7DogM8IYD35sJ+u/ZI+9avnIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790461234; c=relaxed/simple;
	bh=8zhWkMWsTWaFK3DZy5e7nQX2xistj4XUBMIRqrcYYw8=;
	h=To:Subject:From:Message-Id:Date; b=VYHyL8qkFO4xRHqZ4CnSv7ZTZBbftwL9QKgeshSwRQVkYgGrLfGlhlnWo1R2YGhbvew/ycyDn5Xq6H6NAikkGwmah7twnLLG++CcAomYXbR7muM+QgM20TBH4MecaxY2Sud//mxZP2GwkxkKR1dQ4kgHI6n+5eeadgciz8j6gZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGeWEU4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGeWEU4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5347C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790461233;
	bh=8zhWkMWsTWaFK3DZy5e7nQX2xistj4XUBMIRqrcYYw8=;
	h=To:Subject:From:Date:From;
	b=LGeWEU4Na4t/X5DeohVinXNN62KZsUdQVj0dIb63MKHZll/gVHX8Cpo5na2uINf0E
	 ZxH88eNnXg5WtQH9IB6PGCPpMnHhpHOagh8si8rkJJcTaO3PIsoSHUPs774f0pjCfj
	 65UyuC/qtr7mh4UShVL7AXo4ZLx2r+X4ywMMaPLYxD3Lcy+xdAlPH4tS3n5poC22tI
	 Qdqkd/D9Jt+IX/6CN+OivwNBR52ysRT1K+zkS8CnKAOp4n8p9Rm7TTeOoppl29XuZf
	 cyP2Xr8v3y16aydMkzmsvh62heJOpDpFxcvH/uQXC/0ApT4iBNjOk+6E/2Md3guZ5F
	 o6HMueTMiH20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B265DC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046123369.4466.651402316951932062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3150f7bf93d9c23abbcc3d8ee297a7633eef6c56b16a68c30c0c2bb5c6faf04c
Date: Sat, 26 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790461233
