Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9D2E7BB9
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755961795; cv=none; b=FIIQ9tvqLqtMCSeTwJl3oBRRWqRMdvx7KT7UopZwDdnYAMhGb2lC1NvlRfSsOjud9THyX0I9ufeDTcs7o+T8/xF68q1Mkpkc+u2IXN8XgE+CoxBzHh0IiFVh1EPhiSJUdaE4/kEfaFK0+4N4vSEgvwATJtJa5SMtfTYRcTQfUfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755961795; c=relaxed/simple;
	bh=ID5mMGtGoBhiH4vlWHI32cOFPoyqEy9kT4tqpEe6SQQ=;
	h=To:Subject:From:Message-Id:Date; b=JM06pXlHZAiBXuRV6fZQgl6CnZtDP0p3TSN59Cbtnb2PhvfJ34DQY3Zyw2kUQJ7C/FF6MoFu1n5DHnVkbvjYYP1s1JLdUhVCM9GK4F93EQx0R71VMd+a3iNYSsHUPbLt042KPzK/s/yQzwluufufcPNvXz/xgyWzI3OyR1FusP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE0Mb1h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE0Mb1h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755961793;
	bh=ID5mMGtGoBhiH4vlWHI32cOFPoyqEy9kT4tqpEe6SQQ=;
	h=To:Subject:From:Date:From;
	b=cE0Mb1h+wkqvOdAjteGW/ITFSRMuQY4ErU4pRE5n6aLeoiq6OzV0ZJljcgysK/jL9
	 EBrl/MVkM+NYhFV6WRkuBemQgjl3dZPf/pYKFOAyTZybKUGvjFpkm0OLyEXYB74s8j
	 C3q0zoHuGIJRx/URJYvNPmbmWbtQosjA95saLMO7g73GQo3cAuO/k5tmmKi5hBpJph
	 QkyjYt58iPP1Axq4acV0tB5LB+75sxlbwLnzRmISIUteGQh6bltTCgAUgv9+ynV/l5
	 wlNgQrs0yR01J8+lRhDHxp2L6eyxvuglqoXB5jA1RoPeF/Ks8RF506XDSzbhUJ1RL8
	 a4xIdZs7dCiEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596179357.29145.9931262569670865617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b378ce6d796e75d2e565293a295aca27f2384b639e296cbfd596482364030cbc
Date: Sat, 23 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755961793
