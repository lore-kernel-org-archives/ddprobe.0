Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418AC3B1B3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782673714; cv=none; b=U4ZL+ijIlGVawFBzwcRcSs/AUMauBFUYkGiSgLCQ0K2zmal9anm618oBqmzUg+SZWXYmA9efifO0+M/f7iQQAhufAKwPXrhuUdXwVb1nuZu4EjDMpyXnQpBpz9MvDUVoaplnCAXn02Wu5srMFhnMNbKpe5I2kxa3XRMsVJ5aqVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782673714; c=relaxed/simple;
	bh=mLc38pBAQM3OJ4hHrlIo7+Q1WNwYhDugIV1hUcLksgI=;
	h=To:Subject:From:Message-Id:Date; b=UtbJEZPUhvvfZtd+NtEGnR2/v76gtNBZoaHwJwGax3ONCe8Z7KoIN+zuHVjLDbEJsZJm3ErxhhEl1+8SnddEO4aPFhFm1hsXENdoZIPoJiw+UXX+ut2Ts5B6iOhFnT2aTgdR+rONaAJwJA31XmFEEj3NFJhlhdBUQNtU93umj/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPUMh+Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPUMh+Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D75C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782673713;
	bh=mLc38pBAQM3OJ4hHrlIo7+Q1WNwYhDugIV1hUcLksgI=;
	h=To:Subject:From:Date:From;
	b=dPUMh+WdmlL55f2/yL8jHNitU8jPglPoRSqq7l0jBxPYAi44mmsnr14oZEyILRSZw
	 aPakOKkmeWZlXfJF81WdNC9JEs154vU9VHwvSVCB9Ab5DuRJXMtSaPQbVWDQqIWgDF
	 W0ALzKYhpguHGXFK0XH/wKWxJzHNuQSQUrpJbSLBNxlslv1cidP+9+uSIxf/Y9dKvT
	 Fk1P58yuS96r89QnLKAeaH65wQfB8/J2qGBfOfdfD6NGQsy1XdgrrFlNZHlOHogm0N
	 gFZWU9/g+jRq6TbzQ39Ho4m3cyS/gRXKSeC11hHfVADoUT43YODFLn7Afp5TLzF9CA
	 VVPcCIdcYdlOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C3FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267371369.5593.2172276244134683898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065c8bcbf35d3a637fde8eb61fb3a3ffa49c5571af087f6a706eaf49fe153a96
Date: Sun, 28 Jun 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782673713
