Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1272B35836B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782167794; cv=none; b=iWzAh5PQBTLCNvqVwR/O8FS8eimoxokcWA3YH9Lu++lJicJOcv1WpnC/S5WU/hvOIP/CrVyvJ3dcLuQFKjkC5baS1/AQPtQETnpaJ9MDP8qLQUGHdYZ8FJ81b9isER/IbGYfEppefIKZhXNloFpxyZM614qfRrb8UhGXXcRWvMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782167794; c=relaxed/simple;
	bh=YrEPfB+LN6DVnTBF5maCAoalyA1h8DKFYo7wwr83PBQ=;
	h=To:Subject:From:Message-Id:Date; b=E6bKT3F9Kvc4UTtto9x7eNa7cbbbqIFsP+TNbESTr7J3/4YsHNvuilUgP996VwJXBYuBdXaZAV85kbhG5jL9NVNThcE84iFpn3Nlu76q2o9ccHH4+JpVod1kpWz4ulx5QDNj0tg1PPe+ONOVLbMq860CBgQvyZF3H5Ovh/oE2aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoZ4+DTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoZ4+DTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1493C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782167793;
	bh=YrEPfB+LN6DVnTBF5maCAoalyA1h8DKFYo7wwr83PBQ=;
	h=To:Subject:From:Date:From;
	b=eoZ4+DTPMkB6AxkPbPKaUd4HNO/ZSta6djVtMOad937eoHiescfJmL+/Sf7uK/CNn
	 N1Ipi6DsDbi4OKS0a4Y8faYVGJFRZEhYIsN1OZQAD25OyiLfTRv04cyCgtSKcd6/Ah
	 VUrd2P627VMCT5bbqgBQtpAFhBsTqSb8A2mLhsTF2GCwLXAIrnBaz13/giretp14h4
	 ktQLadQPLpsEnt6XPOchCXB/BjNj/F2nAdFLQk9p2rgiZbhbwXeEwsBcgVx/rJHuvV
	 gFaS3ZcX2bD0lj/7fpdFd0rtDF72KrD79xzytJJg2Z9k7hPc4w/Ff571+hunRVWdZ1
	 rf5r5BYSfJrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9201CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216779368.10205.9156916634684461320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b78ad996d2d5ed13258d5ceebf471c6514776b2d13de06d455fdf810ade2c5
Date: Mon, 22 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782167793
