Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA762EF2A3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752251994; cv=none; b=IEGwCVtZiwVLYs8fZKIUDd5qSvWZIbmDm0I28ri1b4aQLDnuIAVKL4rQUzt1da7BrHu25PBHn+JskSbEkIAgzJFkvSvIUIFldw1+szqiRosE4O5pq67ed9hd24LrO86MWcFaX5cDAGCrhzcEDkrHotH+fAgwjuke7DUwGpAZ2kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752251994; c=relaxed/simple;
	bh=Ea6UExN3mBiH/ddhrOxy+PTB80gQKX7R2xTsa8RZZ2M=;
	h=To:Subject:From:Message-Id:Date; b=T1ETTVSPqtTAMQ/oNhQFiwlp+vJzfPwBgcAk80a6OQiTHkTCM6RNM+khFmQuAAA+mAW0B9p0HmSr5DTmjAkzRSfuISJkSUPPuCFXYJ9Nvd4UmgWochwzLpsmfQty0SB4wEPADkjT0jfNY0cF/FlVBfdGzd7PWRQBT0oII69nEkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk/11Kn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk/11Kn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E81DC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752251993;
	bh=Ea6UExN3mBiH/ddhrOxy+PTB80gQKX7R2xTsa8RZZ2M=;
	h=To:Subject:From:Date:From;
	b=Uk/11Kn5NQZ/wTP9kjrIw9P24q1FzEFfDU2cblFOSovRyKwY249xubnzVQrFtP7It
	 zLK/QAb97gntWmPUVwUu3Zz4v5a2LsvkJO8rV6GPGKxkXaSafm9tNi/K1cDEnHcb6d
	 NbXFm1u3raivWuM47QYQvKJ8ElOqksUCaIDrdBAiE4U7VomqjLSY+qDb/tUKpE+C4I
	 TvqbJhDy+lqWeUfxoZGS2YT4Josg+HkAMiNMApOJjpWUv9HihqXXZIz4InPiIGuwDx
	 qqPdjXZMtnFs9YZloyC6ZBF+DUzz2Wp5Vc56T9fMgIkvqAZKoPj479b9kZqazgk440
	 p+dGc5ttVISSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB95C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225199357.14082.12681888054269483100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4802cb0c10811a7c31fe33aaffa1d080edb61c1dec366fac583a5829db72760c
Date: Fri, 11 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752251993
