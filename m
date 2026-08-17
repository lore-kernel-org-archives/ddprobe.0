Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE783EF666
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786959634; cv=none; b=nsv3fC+E8i5KJi7L4N33Yoekw/pzXDJ2wjGCFMEV+F2F5Wc32V2wCdEfQNb1wrN2Ju5LPxlnghlrrQP8LMFaPkDR1WvMiFz+nZ8M0nV+8mNc4ZdRVyKKR1kWuadc6w1k5x4ZPhbcsNci5Vq22JcSAcBpFkNo9sw3I3uVeFZDhVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786959634; c=relaxed/simple;
	bh=FoOx5ka8q9+6BFf/bg+HVbTZES6InYsgpzMH2x/apIk=;
	h=To:Subject:From:Message-Id:Date; b=WbjsgVR0J9vZVDRHGyhai32PyzvvGopjk2ylzaJq5DasnGv2Xgi1DvRPYeRb0Z23C9PkyKMQCSmU4QZqQFtLEFx4WLgjUWgpahG3GHx3HhusrSE+f9bAgzgvsckpb34YUM+aFnQNlAC8pc+0Bidz6FLMmxueXH2LWoRMG1DaKq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvYZ8tmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvYZ8tmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D213AC2BCFD
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786959633;
	bh=FoOx5ka8q9+6BFf/bg+HVbTZES6InYsgpzMH2x/apIk=;
	h=To:Subject:From:Date:From;
	b=DvYZ8tmo5L0/J5iPiOBpnH2nPU6x74RpzKu8XvJNbBoSzajfGrKdnapQO34lx8rSH
	 KH0exLkcJDbCemX114WjY/TkusLaX9p+aduxwE+/x4WfQ8lO70osgmKR685XXvlmFP
	 ELHghXSlpbMuL3Btre+Vke558iS4bqPjkfZdWY4X8laVHMz4hTS3n/conxS3kORuml
	 mO4ER4wwp8qZhDjDEwmdgfbl//dKU5cGkqVmNs2Psa2pgPA+K/qzFb2aGOns6dx/h9
	 0eovosdaU+ZQS+nfVzBkOgVJy//fGRrac31Qi4TsskE0ih5dfbvJH9kdKq6I3hJ4Jc
	 Q47CzXFmloh0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF4C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695963370.23649.13991511358366096474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ad175524608a88e8487caa5341f423df628374a802a23e7b309f9fe60622f1
Date: Mon, 17 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786959633
