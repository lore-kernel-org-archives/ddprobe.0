Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E93101DE
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747201794; cv=none; b=oMYm61UCTHBg74i+W0dj+fhv90vlaBCC0kARE219SrKafYfExwVgHzcAlxeBJVdN2/iAtcXEUKXL+CMAKuKZTBJmLfN8ARE3ZCLsbPeZ08yhmBxL7iELWHP4W7g2p8vJfhVB0X6IaHKz1OwdRXGlrU1k1BNuaQHPl5pgcqf+kpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747201794; c=relaxed/simple;
	bh=I32a1K2EB/xG8uEGJq2c+m0sbfCltwNdkuxp/yLTCqE=;
	h=To:Subject:From:Message-Id:Date; b=eHNgPFYPH7023KjaC89Mh920n02jD1NwRxy4j8tzHgQnJGIB/Hv25jZir/WWjW4RAq0NI6Xctg+lnkI/v2S7o1+h5aDZzcRXvK/7cmn/APOcFstNMuPxlgPr24DtfY+xwIeaE0WEHMHJwQZjMauUGEqvSC+OPum75FRVX8TmMQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeHaJ/xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeHaJ/xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747201793;
	bh=I32a1K2EB/xG8uEGJq2c+m0sbfCltwNdkuxp/yLTCqE=;
	h=To:Subject:From:Date:From;
	b=PeHaJ/xxRqVYsVh96GiXEyD+aFYvAJzuDOSLfG07bsP+cMKfMDG275qaS7PlMFXGY
	 xzfMC0z9OCBaTKiPK7MBlX6fPT6crOO+TXEG4EeOHMxD0iwkqF7uZVONex2IfNiDxv
	 /6P3p+ODKGhFd0e8pxeZP1MT/Ij/tVl1wGpaAKHhGGW90P0fuq0XCCxw2kKGcdbs7N
	 JbJeZXP3bHBNOXIEEJtS631oNcvOnItylsyhNZ5/wSD44tuemTHJPviLBgloXbtL/j
	 XgP0r87C2lG6UvDFeIM8W5JXVwyMSteS/FdjqEMzqpwM2Kk65ZsbXTTng1dkopRpLS
	 9h7oc11rF4uwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93570C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720179357.13367.5823269114692539775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6123262d9ea51c178a001295756ba0f1618bd7796261127c958c1b3b9285830f
Date: Wed, 14 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747201793
