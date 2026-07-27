Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438532848A7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785195634; cv=none; b=SoFUMpvXvxjMoSc5QvZtHYarx0XJtYalEmk3RaE56ynUknBVxFGn3uhnSr4n2RJQd5GUEiRH9ArCbiAC7YTH4+y+QMkwuxzN/bR71osNkvJV1Zmevho2C1oRY9DqpiY+h/nfeDfaYxVUCZPfidE7wCVNgApYSjORQGiibivbRSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785195634; c=relaxed/simple;
	bh=Ik5//dQ4NKvxscZ7K1XDSdp5A/HMfkm0YNEY65Naff4=;
	h=To:Subject:From:Message-Id:Date; b=dMVU6lHptLwf3DueTPKmaobKzzBTirmko+T3Pyif5Ce72MP4heHzsX6PHRg7poV9CHDJtjKcsSz4dsNqH6Zu2zwemwgAj8o66Jfk4LAo7ryqCjvz6rhLGd4Y5ueKSFcvtcHjSIoO+sT4/LkbmDwBMfk5xEVhyg2JivtJgHBvtdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSlkQl0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSlkQl0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE3AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785195633;
	bh=Ik5//dQ4NKvxscZ7K1XDSdp5A/HMfkm0YNEY65Naff4=;
	h=To:Subject:From:Date:From;
	b=RSlkQl0qjyZpQUto77izsgKSK3mAk7k6ldk9JWZe3o24zU3//SAfLqb5B1owX54Bq
	 NvXBUICcxvVeJemF7qVbOuGr3RMYH/DC49TYJVNAnOu6Kr0ihsH5TF1tlCBgJ+7Qvu
	 VvL/YPz6fyx5DCM7LuSVoPxG71pGmaJ7fIjQbEUyOWjOjO9m+5Ium8qSUCVOl4MSHt
	 AnQS7haFTFYCzQyAgU1i8r+24FklEZZYyUOSqJkrTOHp/aPW7M63YMWIE4z4XTsRfu
	 57BUjsc0uxhyrMST2M0tCld++SKZ3U2LWZUjvknjNndp3Y93ouUi7Y73VxjeXp6OF1
	 rZkBFZppHDpcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E7C531C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519563368.20995.12771817310246994683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d095639ed784adaa0498a39076cd2c4f3834c40b476f10a26fd0d1e4a9aa527f
Date: Mon, 27 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785195633
