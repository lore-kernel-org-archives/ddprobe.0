Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7B9BA27
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747814993; cv=none; b=H9haY7WEZpiuwUsdeYY/VgD3hxkWmhT7G6VP0UHQeFBaLY9gHEEltrvKsnLB8EvmxAYAy5xmNwtq9esY4YWJFcGoycTR9SyvzuzAsFiNaKWtWU/78xFaBU5dx472HzYW1lHN5BAFU6gYk0GSws69zP0bOTXws9/EL89hVZPKVuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747814993; c=relaxed/simple;
	bh=9jAK9x5aJPaduWaOIcJdcbMSiPVU/cyMuhK8gKAnDYY=;
	h=To:Subject:From:Message-Id:Date; b=UOI6ttJHkPWmx3inAfbSNQ0igC32LIVtIOIbM7wg3f1q1DJPy0z+mWMPamM/+NPZdUkEoVBThRS5Utt9+ko7PCw/9tfhCavcBE1tNLfGHdGLzpL/2+M7aZxjWhGNC4wmlgiInALDl+YaVdabkw/vpBqHH5fnZBb6S4AyQd1DBLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg5V43Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg5V43Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6438C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747814993;
	bh=9jAK9x5aJPaduWaOIcJdcbMSiPVU/cyMuhK8gKAnDYY=;
	h=To:Subject:From:Date:From;
	b=Tg5V43AvFBpOdChhXc9C3I739BKAFc5FP3vBE2/YRQHYrCSmmbiy49VSUs2Rcpi+O
	 A7D2/QXr+hRZ3oQkUAmf98LiOq1PWIvpXVJF9tRPeyL+NjpWrKP+lxYal5Yi8nK14P
	 AZ7OpyGsNvuYYVhuHeJ+l9x0x1h0bGELjFS8JvP79TjUV3h/rqwDoaEb1POp46oWzr
	 o1TVHqjBWsCDiWGaOMJaHWxGcoSFYqgT/ntxNPD7qCOk+4p1nW+axweN/z/pBz04dL
	 /DjrpLT5qqo6IF5Fdnixq9YqURHeyKWBe/p+9jcWL5VSoe6gMVhXMmgEhVED71D91C
	 /WsslW78LNuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91802C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781499358.10648.3211311998273969100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0def361514b504e5a7fe8293d8eadc2af59fd0eced79d5ab0932c66330a93e59
Date: Wed, 21 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747814993
