Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378773431E3
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778391034; cv=none; b=G2LU1vwMl1qaDmpsDY7VGfChoxCh+7A1hESPjCW03/SJpbM0cdgdSilH78bO214JBvDIy0pzOHr/hfhSrEwo8xS4IwnYlFn+CP9/npRR+iaCk9GcCEI++sPW6Ma/U7tw5KlLiJaj5gETFwhni1gOqr77x5MJxNAng+g1IGGs+9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778391034; c=relaxed/simple;
	bh=kw/B0fMh/rOKl6lQiymKhxlRjIKLuzSwlWLE4wfe+Qg=;
	h=To:Subject:From:Message-Id:Date; b=sMkqx6sHhFlQOnkPYakjzlqt9lsbHfAdEFM1SceNavG0PzloiKNW1CK9WakjmLTf2EYzyQ1CdUCsqrHhsm4mqvsiZM0PJClgAx5LFsfQ9Cs6ZqypyZgF0M3qgPy/rM62B4L3p/5BjJMRtWAZAR8MRUK7BefB/lz/qleGcIJLiGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqxvTi3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqxvTi3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12FFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778391033;
	bh=kw/B0fMh/rOKl6lQiymKhxlRjIKLuzSwlWLE4wfe+Qg=;
	h=To:Subject:From:Date:From;
	b=OqxvTi3oHVvqch8lzFutrcpVp5bqaiCqs2NDpjoSnGL3vNbjKJMgV7EtPp+PmUlVd
	 fuF/Mw6Q6CuQWscYpNxEon9z5/D43DcQX1LnJYn9bpQrayS2yyqyolHNLGMv9OVLjW
	 ZrgmJem71VULN5vfczTFXt5o3+onBTcUCz27dL4EM1n96MkWrtdKUHrlTDuB00C+V6
	 drZ4ZO3/xwFQafT130Z+eqC/TlPwFs9ikzhW7lCA8ASEJyETsoYUwSvFmGwGSmVTVf
	 z80GKWOjDbQb7MDMvcAuQZ2C9LL0w4Tfn1Af3984Gpvt3uvBYV+gYK/hZH4yQd6Gth
	 eT9gsQ6z6Lt3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD49BCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839103368.20542.7131806895686910488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc21d618814ee6d4ffda048336ef833e790598bb24eb0b5d1d4c86289e54a23
Date: Sun, 10 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778391033
