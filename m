Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA51FC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761279595; cv=none; b=RKIOhvhTcSYYlXplDv/yf3Y44IarOaUPf5A8Z9aqKki6ABZFWp8dEDZSmzUFxp2MD4pR5BFeg2F3L7pSFQ5Fx3dqBHlhQW7lQ3E+uzkBaDN27FJJp7+7U8j3t3U+BpcGQojeDEQnoyqK3U6+mAsrxs/DU8OmP1kFoKp/7LST1QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761279595; c=relaxed/simple;
	bh=W0yq0NKHx/vGrTf0CwGyaPrJyxisa95Ufa9kXU1JrHY=;
	h=To:Subject:From:Message-Id:Date; b=U0iWVWSVnMhF7tknhZO3suCnAkkLoVOBDXgy4SDxiRos4xsMCt4BZdl+rSp2Zy000fpOQKYG6NlbPt/8bsre0PeSBN4g1lz2ULgXpPXNhWAI3X6QyHr6ACx/LmRb/c1vby9E6x1JbsiXwDDJ3yl3wXdMMvakb6QmyyEBneoKJdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a76rQTBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a76rQTBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF858C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761279593;
	bh=W0yq0NKHx/vGrTf0CwGyaPrJyxisa95Ufa9kXU1JrHY=;
	h=To:Subject:From:Date:From;
	b=a76rQTBxG5py7oOGwfJVhsPAkhU/xWrq+3v7fo+vzBgApC6jHrWe0v2gQz6FdwOiC
	 o40FfUvIBnQ4MBSAY/7GLKSm/ic4S4Ns3/WA1GRvuP31KmpSj5qhxlPNKLkwqVlvdW
	 facU0kUlZbrh6Fjjq4c17RmefyVA9XEjBk6ppPQQnTyNNq39vaJ4ywvlPnoIPB3Cx3
	 /DOSiwt88AVwfUY5R/4tJ1i4n3xvM1g0wKaIzHpXWswkJTVqd5S4L0jhzboYW757yS
	 ynvbSon96JMnjw44GWcq71E4B7lYEB6koFO9Sqo+47nLHOwb9hp85KUKMU/Jtat/O2
	 RTEqc4ipr56WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B8BCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127959359.2067.16301407472262462722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e327633c2457f002d302249f4190666c7db5babbaa19f241a108f14cba4480c
Date: Fri, 24 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761279593
