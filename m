Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22032274B23
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756263594; cv=none; b=Tw4XwBzjhgjhwDI/1s489wP6JV1A53mSny5tI6yt2wLIxrBuK072ne13uhHfqEXK3l1qDdpR+mLxDn1ep3kYhYWrDxi8549QgRHPOMJZjRsy5V+CirY8KlFv4P1e6s1YZb/zxXeskMtQLaZEYjLarcgoTi0t3WLLwt/zU8KsfOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756263594; c=relaxed/simple;
	bh=Vnkb4Xn73PVVIGiKMv+sWXIpxmXfowisdnC1x18NGQY=;
	h=To:Subject:From:Message-Id:Date; b=i/jfGumIj3W8rIxSL06ifoTT5gIKfJutSJ+ywwVkHdQSrjKjuWEva1J+Qxyb2HWxgqDS+dwJo8+KgqgpIVb6e5QiCmuGH9AubyQZ5UtLxAx30+ijmwV6k/0Q6F+p2LQs3emV6wyGHgrFsuoC3MBRj1isOh7ghU97dauOuiRs5+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI41THx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI41THx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE1BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756263593;
	bh=Vnkb4Xn73PVVIGiKMv+sWXIpxmXfowisdnC1x18NGQY=;
	h=To:Subject:From:Date:From;
	b=CI41THx17VeXOrAOFJkPn744/bzloXceen3EYWVCYx24odNLWt0qXCWA2Nx0Cx+Wb
	 5C6pGnvksAhszsI5lJHhJqUPQoYpQws/VAacSHZvuwwc7kqowCAFJQvAHLbRV/ZiTW
	 Gy6Z9u80Q54bTdKzyEg7dcv8Og/Heq7L2sysfhVKYIO+0mgcuWre0T9gwjYe3t+qcl
	 VhyQ/8b18/FMTaR1kcAJD0vBHzWIACkiG43otg/3+1r8cCyKcLn1s2WzOHEZZPMLHz
	 ZKUSeEOkhVXpAun/W0wi95Cs40qUhWzkNQzD+M0cPt8efZ9P6t3ZkRzZ6EqEeJlysH
	 heE0lj5zFGxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C7CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626359357.13451.6782526193511380780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d8bb22ed26c3b74bb12d83bbf7c0514c0f50a8f1a6137267c5f43a17e2050b
Date: Wed, 27 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756263593
