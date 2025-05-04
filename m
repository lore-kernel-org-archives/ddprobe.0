Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7C17BD9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746371994; cv=none; b=Pgq8JbbE8qHGIilZAR3onHnaHB3BI0XJWJeCHeNX1TustvVHnT3RQZhQGBiZt4ZBg2Jsmu3VmftJZe4mK4xpVG08iDlJYyvEKF8xNtigyBcX4t9udiO0aLcQszRjOD3AJPLKM9Fl6KFt2U4ZvXon/20zhW2Q/yupMJxp2tG6Tz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746371994; c=relaxed/simple;
	bh=rqDe1zGVrWgqpgd4A44CniC2SvX8Rg/G+E5MxoMkavk=;
	h=To:Subject:From:Message-Id:Date; b=lB47N7Xp5SZNhU5VUajvSL11b6zyg9PmpEyDH+qW8w7vGZzw72GeHbSccLV6XOaNhEmQbZo9TwLOWQWMFrVfL+PGlfvBEoGwQQ1MvK8Z6eg3jUX80pQmusbkAZIv9W30J8iIApo69767YNAs7/9Q1zbTLROPsBOh39tlmy5GTXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCCCls08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCCCls08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A136DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746371993;
	bh=rqDe1zGVrWgqpgd4A44CniC2SvX8Rg/G+E5MxoMkavk=;
	h=To:Subject:From:Date:From;
	b=eCCCls08r1Q7414wLSph28X5ypJY3vgwQwpfFnC+Ugj3jaEGdYyQS2SHPRITioQ3P
	 Zl/rpCJNEjcRUumMY6+V8Ac0HKmC8SBuSwZuUuZVSovPD4qkb4W7SDjaBy+1BlBnyl
	 HlpnP21xkqxgqYRTfGNIn/6J97xf5Ab6P+yjXDHwmxYxxubZPeW3+WVZv9VvXLB0L2
	 8gJkfLA47B7kLpm85d+AkOXcaNn3c5CcBeHqQCyVAUFs95TttFZnU9Y9U+OM6nO9Ab
	 V5bkx+edFs2s8bb/b/wco972QEILStZjUZ616V2/0xF9itSH6VY5UssgfeLjbkNB0k
	 xgv/GMr0j6uig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33BC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637199357.23004.12332839366326863734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3ccff1fd396a969e39d2f7682326caa57bb1de423f74ef79788e7105d25982
Date: Sun, 04 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746371993
