Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8128FC
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771107293; cv=none; b=cVsvzJeuC+n75Q1quQ5LS5jqWoNsgieEU+FwnUhlPe0jb0U7klRF+Sr/GLMdHK+CuPXdmCbtR6CvIpJagOUoD5RMaV0gXA/2YYBKZUEBWyoe4bsc8lt/RS7vzN0jWPl2NMl1qaLNF7s87RrN37SgZ81pp35dgzUgaPsOTTf/89w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771107293; c=relaxed/simple;
	bh=f94V58UXfiucCLVp02cEG/c6pwC2c1piAh4vFJHaVGs=;
	h=To:Subject:From:Message-Id:Date; b=XMuQDiwGFF7a6m/6NKLsdRa6Lc792Z14qWqaSIdNfHdMd5CoJ2cNC/TPLpmucfSBcok+lvOJ1Zj5jOUFxny84lQz0QsxIzSE+OGGSHCtsFNO+q7J+GQ4HOqW8dvPKyi30zXMZG+DueWTonCy2wF35nDwMUDNJtK/rLpMCtkoHfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/nWtqf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/nWtqf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C15C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771107293;
	bh=f94V58UXfiucCLVp02cEG/c6pwC2c1piAh4vFJHaVGs=;
	h=To:Subject:From:Date:From;
	b=F/nWtqf0ll8dLK5HgjNjaE+V2Ws2OqUNhlVBtXhP/7244mpH3yc+8wu4HVWkkBM4M
	 IOiEAuFin2I8Sbw8XGGs1nWqfE0X14Mhvhq71QV1249jPdqrEwtrOkM6Wy1ed0J76N
	 +glLa5GgN39rFP+XwXvovwD7cpIjMV+qqcCiDiD3hBZw2MRxtd1MHi/JJEQrtgRoVn
	 rVZ4NxrU+yuun11Sy6MIeeAqZgTuF2x2f7D/T7GZWuh78RQsjlaSKvolEDRJh2E7ac
	 5hRG3PUg3cdShrCqQIxenE+V75Swgk6yLVMg5SIy6IaEAPwtKdlZCB+5BrdhFOFCOX
	 5XMUVUMeTY+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A48EF5858
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110729359.4433.13685816306319918948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2032dd00e4d531ed1b82011b1fa5a78fa67e7842cd61944809473bf736709481
Date: Sat, 14 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771107293
