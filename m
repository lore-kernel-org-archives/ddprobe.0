Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143A2EEDE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749337795; cv=none; b=NfHQw3/zb5Z08+piAebhl5jOlDC4jbc2m41HkxVLlFYniuApyv+Fta87lcUc8l0Ei13YZK53z02mNh7yHDjycKdxikHYxe9RSPpc1CGbwAeL9xd4cGSPYNvqIqFE+9kYdnR9v3MY8G45UqjGsd+pYr8ZpgL9x+4kQSo0CAL5e/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749337795; c=relaxed/simple;
	bh=iemYdR+kUd4uCk8mMKllhBM0OOOeU5GrS54i/scd7xA=;
	h=To:Subject:From:Message-Id:Date; b=BycHr8xhPgRcu00eA6MPgq8AzmhwqLDkvU8r3lZxUp+q0HtXQoCFb7fIavUr/aEoUgLZDNJUkdnwCT70DGK6DVfxC93YyKkUF3Zb3GIXH5OZAyo1DLYN9aKPhqQ2w+CNcDv83kI2JpGpidme07f6wqzC370Gjf2uVBtE4An904s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDGIbZRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDGIbZRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749337793;
	bh=iemYdR+kUd4uCk8mMKllhBM0OOOeU5GrS54i/scd7xA=;
	h=To:Subject:From:Date:From;
	b=UDGIbZRhqNCDrOg/XoDBwpYCLH8pgbj5x9doT+iHSmrnDbfn+sAs7ErrLRFg2Tmsh
	 1YckWs4TH72S3zf0bd/8OWyFF8UI4i5bdxSXRmTstMsfp4cSCIHUMmUngBMi5vH/JO
	 15l3kdwRprwBZCp+mVHchZDkU49WZ55mTLR/76s2nQrpt0mGKHi82n6IwoN01w+s3F
	 SR9jsFx0UQrdoB+ewwdP2tjtG2tNBIEW34g7LFufBQ7Lgqznex16skIpyLfOs3KfYt
	 N+y6Hblmp/cafAThTa24rgluZf+QPaJmeQk5zvP7lWbpLKzTMFFxld4oH19p9vKxW+
	 XfhLlIe2vZiqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94173C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933779357.15769.12103194376056885366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dd606f2e1061aa50c99b8af8c7fa318791395240c4bfbf4d55e427a86ad236
Date: Sat, 07 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749337793
