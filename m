Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDB03C2D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780155815; cv=none; b=TsdJ75ZYT+FUIZNS/Jz5M4xPbWo46yA99j6ssnW1b6VAsGrvqE4kiXXPCq/bmsqPeVgl7B2F3V76xRH/3Lo3MVtlDNZD/r9jkC1y5HPd+QYy3ESI2AZce0Kfm/V+PmFKUtQLCTBJ6ieyh3grZrZbEke7FH3P5gC/PkAdBU369Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780155815; c=relaxed/simple;
	bh=jYW5ryvcfxJBL8SefgRLLKdFf9zMhoac4K+BAUNcCZc=;
	h=To:Subject:From:Message-Id:Date; b=rjJVhhplZ1QvaCjNv/I1Jch4jU37pZOr5rjHvdRWxQhR5IBv/o9Lpa5xyTTOPPX7WD6VSYD95YepI2YzAh0KR7H1sAXcXhGCzpLHoPFWdEMU/IYzIYmGb7sWC9tZN//+Zp/PYwX09mZb9JXkofcVrX2us2AoVwpbQSZ5XLpSu/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaskUjKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaskUjKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA77FC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780155813;
	bh=jYW5ryvcfxJBL8SefgRLLKdFf9zMhoac4K+BAUNcCZc=;
	h=To:Subject:From:Date:From;
	b=uaskUjKuLOoHAgeMVlOjxjRzEtv8OsXs9EFQPxGOgDRnoAAYX6TBYO+l1m2g/v8iu
	 +aIh+5JKa3hfRe+PUVZpC3Na7TU7f34oGgsexR9LopDBV1OZ+DZQ1+z0ZSIYziicxL
	 O3VVLXRX+c7j6RlDKeKw5oZCJbB7U2cLPHb893ZxiISDaUKqg14Z1dunU5bdW22JCv
	 MuBYWgNsSi0+P6SwNBbCoFFIrZfAX14OkBXizSutDRMRQPULVCrdwMLj+OrH+7YHMn
	 u/4IokOadPy77AGY/CK2yzEorSM4lV5648m5saecJS2UoqU06OahfWTuVc/FeFeZfK
	 qQBioH0sAJASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4D7CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015581374.7468.15991220629645109885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5426d22a4cd1e3fc464657f73c2ac2a4abe120c8ab0c6b11817368ea3b4d023d
Date: Sat, 30 May 2026 15:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780155813
