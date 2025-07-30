Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2449E1F8725
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753875594; cv=none; b=QrrtnW7EdAa1CUvipQ45dtD5BlR3FBCyfa/BBofVjPjJmxmX0fQT7mRf8AWMdq5LZZBRFlpTIKzVZCikc+6PTqNoyqPVqZgUKXszV1ajRIdd0F42/CujbbkMv1OnK8NLxsbhc6wemnAJpVDPX+zPzeLnzcdWvfAhbNQefg/aaTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753875594; c=relaxed/simple;
	bh=+Kw9bRn3Zi6OeLqzHKXCXLbK9cJY4D+3zsRlyjYHjeM=;
	h=To:Subject:From:Message-Id:Date; b=AErP1gTRyjezHHszDAA70YWFOwA+pyPVPvOlOiu/A8zRqzbytB1hIx3p8EaPaolSPZkk5j3l4+fkS59QqLpuAF4/OO/DaE2steCdnvSN6dvZtI/v0euTwTt15MmIzIp0seHDACbS3Sx17LoLkF2KrawaJ7c75Jirc0YkoG4CUWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHbejuE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHbejuE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753875593;
	bh=+Kw9bRn3Zi6OeLqzHKXCXLbK9cJY4D+3zsRlyjYHjeM=;
	h=To:Subject:From:Date:From;
	b=NHbejuE+b3DStsPaUsQ82qgmWqSFkAlDjBGLOd9AnSO9+SvLVRl8BrKtwB1t0tyDj
	 WLq3XCsG+4x2eQQBAH4MfCRJ90p9x+kdYnEL3JgP05GtAiKupU6JTbs6+MeXBCNqoC
	 gF6IWFyfecpdifqf4fElRgeoWXfkuC9w1vzdFH77muCpc9yMlwiPu09Y3QibmmjlqH
	 HZFKPJL2KBHdLSnCGqfV6gGQVlkc0/D1s16AZ2WuHgVY1avVZ8RCQZ+7mkkHtCQzQZ
	 G4UvqBwRZFw6d14YO/tKBzzYLLsRUw8mq/1ie4go+0P/GVZCQN/xp0Lp139vqjPPgr
	 exvvIc1gqF7UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BAC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387559357.9326.3307795061050196196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7563b0c3fe861afdba39476f9ff7a28fd3207368a878ae7b31cd38ba8664b668
Date: Wed, 30 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753875593
