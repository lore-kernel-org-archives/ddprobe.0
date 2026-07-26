Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7382D3E9C17
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785105034; cv=none; b=IhFaT6pFy2R0tZ4yjUV6CVerIVwShajOMbOQFR5NQzkxrdJECS00T2SMGzchqhV4vxPdL3zSDGQ85v+27YI5xSEJ2zd2ZJD7pweZMz3he/NJwgdHO0aQkGkYmLzR8PAFK7UcHMZkx/aph1IIJGBQEWHfPZMsRJ+cw1ePyuh4Dfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785105034; c=relaxed/simple;
	bh=ZwJwqCBELR5outESk+OeE0G+Zi22Oht2gbPEeCwQXPc=;
	h=To:Subject:From:Message-Id:Date; b=J3aDlbnMnt/8FdNRKO1rsCTtClG3JBmhnpwnvehl2y+vcYWa9180cGquQXTln+Gq3r6Xb1x79np0MpegBTc+ms+0I52BGnaSUE2kEP/B/xELysI153j86QnOa9xFNWKwSP2ZDmPaC6gMovAFemIKqesR6Y7Cr8RTl4Xd09JyorM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfVvirO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfVvirO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D427FC4AF0F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785105033;
	bh=ZwJwqCBELR5outESk+OeE0G+Zi22Oht2gbPEeCwQXPc=;
	h=To:Subject:From:Date:From;
	b=MfVvirO/WsEoOd/2bL5DbGcCbeyMMYso4z+LxQzL6MBgCowlhWApgCSsDsKfTaB3P
	 0LDf5K2HSB/gidg/MjbEJJYoN2z8AxTazsUnLKS+kNXQuuXqQRKcNGDrwYjaFdtw1n
	 V1RfqQmaF2TSdQQZNhEbbrngIwfrto63l2QglVE5mVxzPXGE1/x5zxjLoykpGhgbJT
	 YjQVbYOaeW47RQ2HdKr0htMvrzmBkv7so0hMGqI5kDaQO10YcQ+5kXT+ufvx5MJCwd
	 dEVMAQPLB7MKrsEyXULmqDxCo58dFbK0ykMeFzuPyS4AQBWbbLcZK6u6oe37zbbXFe
	 lMCtwDCwV1kfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF0BC53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510503368.20705.12115231885132798441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5e93d51c869f869c05586fbc4439252c4de10ee1e65f59a928f711b341d1fd
Date: Sun, 26 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785105033
