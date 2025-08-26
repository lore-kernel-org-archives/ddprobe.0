Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407303AC22
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756229994; cv=none; b=OWMVCqxEmKrl/FuGKLXQ1iei89KrIGbIcbqn1FDuRSKdEGRLmAfAFxHuLAQK9tLcahPSdSkBiJHcSdYpBblFJY07PE1Hu5+W+GIhSobpAnGjWNyFV+iCjHyyOt7jIxaXwd1susAMK3qFSsK0/XmQgH/InDbNeo7/Gt3XS2F3jh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756229994; c=relaxed/simple;
	bh=Gic94obBWvgMp1xLRdN1MBWb/MzrJZ5I7Mwr/id/Ims=;
	h=To:Subject:From:Message-Id:Date; b=PNOvWX66dB2OaVzxDQ5/zM/fFHnJgwzVAPT+KhgKO+zmBWSO+cTvhXeeeXy+rrJ7TWmnaBami7/yc5fxN8pP13n0feTjjQ00uPWJzCV3K6fd0p5XQs7166huAJeIrGodHoxCZPX0uoBzeqJmLqmnjNMSPWrutgxFOfgvJU+2YVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds9oFYSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds9oFYSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED7C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756229993;
	bh=Gic94obBWvgMp1xLRdN1MBWb/MzrJZ5I7Mwr/id/Ims=;
	h=To:Subject:From:Date:From;
	b=ds9oFYSMG7ohwLlF3hMC7rRhodaNjlYD/rPbNKMhtsar7Xswb4m2A9MVTaJFev0c4
	 X90y+qGTcON968EpPJAqPZdZ3cyyo4yt+bvIqkMNzACEk+5OD/YhNEoF8JXY+k9yTy
	 tL8sKUzWQ+HZBA+v5dlz8m4q9Po74AF5PUc32EA1OA5J4edkelZA17jNYyu6zE/ED8
	 vY0oRBZj+1HdQM1ekCDF4on+g1wsCgBfieKzcbNLa74mGdTynmAdUqazVHPncFMuSm
	 LAmvv/xsW9S3g2YF+wqnljTl5NmDBpg2hEgKfJXUyuBLP72qDMcBjpBOrIoYL2xuKq
	 BDMKHetr9LTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918EACA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622999357.13475.17069175161729372354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfd93ca736e2b2da4bf498916968f6b5c05710eefcbefc3fa20048521495100
Date: Tue, 26 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756229993
