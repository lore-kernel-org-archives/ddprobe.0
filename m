Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC8C346E7D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777258054; cv=none; b=TfePYUBBGgEbWKzO4QsWle+02Wa481Zg9OyZcboaFZeqEXdgjq2Bsx8RLO3m3Ci6k8fTixstQO2jducewQJg3yxX88wj34ZMK3tw1UlcPBZHSSTOZdc3f3xXu1T39kjyq9OdBHxwLJx/VYnBznbSSReRwmkDaNxVQmrbSbCMyCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777258054; c=relaxed/simple;
	bh=5JxQo4YFRTfV4eW1/y4Lp0+b4/3u1Dsj7FGTOtLn5Lk=;
	h=To:Subject:From:Message-Id:Date; b=HdOGpW5nwJWZ5LgW5m4SauIYfvdZtPU79UYHfYHeOlYFKDXUqigO73xfTexmN/bEsfgahbrTqM4YP8P6bZh7yaavatkFU8G5glPxXvTuoi/6zPIdDGQPgsVfHHyBHhm9qqpKaa9nFL3xm1SJbqkbs9cjjvJgWCRVH96QzK4FL2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFFBuULs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFFBuULs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE5CC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777258053;
	bh=5JxQo4YFRTfV4eW1/y4Lp0+b4/3u1Dsj7FGTOtLn5Lk=;
	h=To:Subject:From:Date:From;
	b=UFFBuULs9UPpnPB1J0aaC7EPbGQ4yBRUpvmibq5AfifKPbLC2/0mwb+qa9Lhp1NQ3
	 OeCmbHm+PBmnRU4PXSKh0Ou+RymakuGLhIOD/MKd4Hv+Iac3/HPkF5c4qSmPSMAP+x
	 jl17kmBCnAqoVUq7oPieCcPuFCeYX/5UQ2M5SKsxB5/fHx6Iv1l7YcGf+k9lATsQaM
	 LC6+Fz1M/4QBi9EmBO4+kcdTxGlJV4hqlk7vB/FU9+OR0zQ4FYQruwewR3/Uke5q7/
	 nDSSZ2RBCBaJs8WEfnoCsudPcNxCwybs6IGtAqfQchJXAtW8iAOwxpg0BvyHmyrT58
	 f42CRPot9vwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4CFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725805368.23369.856213950408968971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97a7ff4ec66366457d1b51f3e1d18d2c77be6b321f46b83fcf40718f8d14e41
Date: Mon, 27 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777258053
