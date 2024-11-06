Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F01DF24C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730902554; cv=none; b=d4JyxcUgY+g1A6lFxOftuYAOctojNxmugMg3otUGdyDthNctEasM1nFeKifV87aWKHWauLRm1P6hqu1/Z9RlYlUoV2oNTHKmwo4bhs0TaUPuUX3BR275AWUD8der2M05P5gyPy7nWk4ikxQuhLXDSZk51o8KUM/YNjmGoDC/3T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730902554; c=relaxed/simple;
	bh=tg6s4UxJEy1dZMivo6DSxN35epvrNBv+pKFfOM4tDzo=;
	h=To:Subject:From:Message-Id:Date; b=kT36ACuw0yu0CTolERTgWEbSz33j0zmJMqmyywsrz62tB9bDfBPvpYyDay5PPhIN1usGtwNzCcIb6MR2aqUmay8MzCuoP7lm2iktKOamQyg+heJPCkB3651RzJdLFBbBClSOrZIMVDQK0x8IRi/qR9g9s8CFYpl8oDfNjQ0zK4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YubFBBWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YubFBBWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CDEC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730902553;
	bh=tg6s4UxJEy1dZMivo6DSxN35epvrNBv+pKFfOM4tDzo=;
	h=To:Subject:From:Date:From;
	b=YubFBBWcWzQGzQqJx9H4w03xzPpRzUwAddyKMhyPhDWvC7VGMQaUBt5pDa29nYgAC
	 0CsjT8GUEBZt2Ks2M49xnbwNeM1DohSOU+d1Pk/UP2XpIj86wkSEvaT653wlz8uAH2
	 zAIlOENpvxVWK8ywhdHYdFi/01rSHMVKsJPVP48zBpRA+EFgs2HLOTYYSQ+Mm7z24j
	 KUccKkRTnAmxgLLkfPOoXmSud3vYvZOUqoIcGuTBsMInBivF1mmUpmrwBnT16g029e
	 IWe8hYDAhWfbLBhYOHVHilfNSFrLqfwhEidVs/gpmEuT4cWgwNuagGW+opcSLE7eVO
	 Jfmesv1igNiQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99342D44D77
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090255361.13848.16909309001277320409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b694f362ebda3f9bb1517fc6c9ef14dc73106309c42cea5de37be3e9c21a4634
Date: Wed, 06 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730902553
