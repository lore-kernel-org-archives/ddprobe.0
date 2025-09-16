Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D9F2E36E3
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758058794; cv=none; b=caaeFpXbkEAgYu/ZZO4ahIT9Hp5w/BhJq6j5iaq6Tbc2onvM4Rt3Pfjav5x8E6v1AwStIz4tArr510IXqEdW8ODZu9/K/dFivexMwK8M9NuDm/5FeIBQiJLflS8gsL/XRWjqycPeVWK2Xmh86xvIns7glqyjoKaMD0Mbem0fRqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758058794; c=relaxed/simple;
	bh=ESr3P3STxAy1+AeuPjRWGCxxp351DhRcIM91YC+dZ/Q=;
	h=To:Subject:From:Message-Id:Date; b=FuenA1+2q6F434KB25hTH0UsEzybg8zRLa12kkn55io44cs0xQTA5wiMXe2+CsEhXpk9hGEspBUENqlkoa3GlIvGttYev2jFt2pkKpZR6fgcUNCSEp7HV3gFDSxZ1iBc5vQM1867PUS9UgCTrMeWIe14igFatHuefPS9b08PVG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDh21D+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDh21D+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202FC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758058793;
	bh=ESr3P3STxAy1+AeuPjRWGCxxp351DhRcIM91YC+dZ/Q=;
	h=To:Subject:From:Date:From;
	b=NDh21D+yANWiekqm8Ea0MJEZMAkCUDNmXS7mHbP7XJ1dF3lzvwY8xuUu2ckFF3j8c
	 26z6pH86QYvpZvFpydEjdDswHTCstDr3Uc5j3P5B9cdv4tsqpobq6HxihItSvopxk8
	 IAyM0upI7UFleC8wzVUzOGwi+oDvwIJBhmjSXBpF7oJUr01nwUvzLnCegz+FJjTQls
	 IU5p5NyTQeel2xcil7EHI6cm3kSdJ+4NRGG/aagaUoZFx9EevqzIwPEhGBVEieMNqr
	 b2lMeUrGrZOH622QhTDa0HXZlSDctS7rAJqWN28URbLPiY7lSLbKSkLqBqFfGAxFpv
	 q+50FdlJtt/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F810CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805879358.3637.9569237081076589558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe349935948e146d8ab298cab4a60fefe03f65b2d7c0c3d8f1a9c1180b6c8a69
Date: Tue, 16 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758058793
