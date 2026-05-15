Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BCB3FF1A2
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778860234; cv=none; b=cocfp8YFxcQCvolafOPeetPgHTFHrQBcYWkk75WW6P3WK3TN7H71N0HprQaBeJm5+1A8MFuD0f08v9uuLpJ/ducoQSSBnEmiGnh3pSdTfxka/p0RcegKMj2ZtnsoVkC3oL3qDsvX/B1p5pHUb8rk2pckpgjdj+Cjy3LICYYDubg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778860234; c=relaxed/simple;
	bh=sgdKdzpRHvVnNy0rzHIlUmKFtWFr/KM84d7JX8Vli94=;
	h=To:Subject:From:Message-Id:Date; b=lNqLufrWEsSpl5YYceFdBN9gytHXn5KZNxtaE7w7BwMDPAQla1YFlemj8yZ4An2v8tHrHyoLVsOut6TvS7HHs92sCDjW2YLxVkFbd8Nm+R/SzNNwc/lqtOnlf9x3/WnPY6UXFGMdVri2i+HToEpRG3cmT2jdSvH99t+vXog+5A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSNDlW5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSNDlW5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EF5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778860233;
	bh=sgdKdzpRHvVnNy0rzHIlUmKFtWFr/KM84d7JX8Vli94=;
	h=To:Subject:From:Date:From;
	b=qSNDlW5vvAhO3975YsvA6r5WQdzs2PXjK3f+Q9sLJlFaSbvw1M9vTLWdRBAYXI1D2
	 TtrtRq8fSxSWGHZLdCQwG5MGjqWDpbHtMEdLolHNc01sdCb7imwCTQTFrlV80KQR5f
	 jnuvSg1OIjyz+3R+wv0j2Xdiz+rHPXkbTevzcJIDoh+HoGklE9Svp00css564lhHQX
	 XRaRlKdDSlq2MPlh6tjqmzDhZuympwnfpVuLkxWMgf4AWsYJQN+sT0u7kbr8abj9FQ
	 edaufmeErxD9/GyTaVvndrZq4Xq717bF6mLk6SVy/2xjgqvVIgbb0A7hVWXOdevrrD
	 PZGQdkHalXf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB812CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886023369.17182.424665145000792120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac4c0fca154f12d9433b57e7042d374c4ae51bb606475b875d878692f5a4d2d
Date: Fri, 15 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778860233
