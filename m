Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7073446AD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780980874; cv=none; b=LVVGO2HD38aJU3acijkypJehEPRmOgEk89+aZ8jY6srdyFJsUOe24ahCY3RcYOs4kc0ZlNRYc9R1JlJJ0+vx1b9XqYw1aqoaCOGQfIXo/TgNlonG0Hk9SuBUsNhwMeCV5WBTTRxjSzg/jHHEws19FqHerrwLQFzocx8Keg3czuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780980874; c=relaxed/simple;
	bh=TVX1M1r+mUZVQ9dZvdpenynSNiW9fiTJAgqNoh1L/6E=;
	h=To:Subject:From:Message-Id:Date; b=kqbCmCwRbQVeIhKL3WOFPoDssXrXjxwW2y98SYZHmi6MBEk0ARITjITrnfvyFW0q23VUOzDsiYfDbuYWc2MquVYPG4BodhDEU9cKF5J6NRSs5NXyD7g1uBOCIup8940bZZX3fKGjmaNFMmfJYy1lS2Q+afbaj6n3JgyuW8h8faI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk+vuonw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk+vuonw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE90C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780980873;
	bh=TVX1M1r+mUZVQ9dZvdpenynSNiW9fiTJAgqNoh1L/6E=;
	h=To:Subject:From:Date:From;
	b=nk+vuonwrnHLqcBICJ6jz4jt8CtL5NP9Iy6t8+1uZYaGkyrU3KH6BpEwCbTy8SnVM
	 WmnpIIBnCVt2EBhQaFf3wJCYPC1BENC/tYni6HOhzoXW+QfpBGQD95hiF2Z+dDqxoB
	 H1MBaVCJumtBrHy0yXvgZBC5tC7c4YYkNA0duIwIACIYOwm37TsdRfg2ar9cSapji1
	 0Hx3I9vE9NVMKIPG/lOgNZ/hZpCmPAtlHOiho+w8KLGx7+HhPluNP5S6nxki61coFb
	 dP9QqILjFo4CmWPhXKmSvc6FkBx45z6dP0BJbZwx6OrE4DDJHcUTqM/mLtDMiAe94W
	 XeJBDG1BMnHSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A03CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098087369.2933.3740537012764926141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a155e6094bf9b1f0cba2d008890e1a745d2dafeec1aaf87b5e8efb9b20630031
Date: Tue, 09 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780980873
