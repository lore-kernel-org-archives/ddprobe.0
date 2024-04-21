Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676ED2556F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730223; cv=none; b=jRu627MtCxdABHZppATfJjI6IB41KOt7mrbdOfA3qi+m2WbJNmSktFsn3U3nZ8H5BtUHwR+uBxejML9nm0Rs5cFaklMgK8WhWd+Mbb9X3PTB4IAMspSSmDWP2yxT1KFykWy+O54nuwC7GFgqzTDgD569zz0QW9oPiB09l+6jszI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730223; c=relaxed/simple;
	bh=bebTCewtkzA3A5kOwefdypEkrl63CQZJ7Mz//M4H8Ew=;
	h=To:Subject:From:Message-Id:Date; b=ANJ5POPbthpAZcOXOeHYraPnnK6rLrQlf11joZba0eaHKqCgoj0ct6jz1MaR1UVyyEW442+13a9x55utFVadnc+RiWXlRyDiFdBiLqKR7lZajLPZLgx+BaTPVzQQbICOfKFBamhCD/DbHWjlCd7jJHyHOUm1SRcWI3hxb4wubHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRVpSgOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRVpSgOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB64C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713730222;
	bh=bebTCewtkzA3A5kOwefdypEkrl63CQZJ7Mz//M4H8Ew=;
	h=To:Subject:From:Date:From;
	b=ZRVpSgOWrZzpn4rrsYXB5sRt3EvXRZkDsKBGLiUvUQ86QYzIOw1YaHj5vSQI0fSkI
	 vnkVRcRV4dePWAQth56oxgsMcXyalFyW/W4X9Wy1eHYl4pNK/kq3CWm5QyK4cTJacX
	 UkVx1Eg1J73PA3z3im2BG47VegC2uARtW2blJVDsSac5Bi2pby9LvnBsWG33mJ7jW3
	 vPIg74d9cj/EkDukDH69emS5pbe6OLWBEY0+UhXVZn7Q6B7GNAws0gnSMKvyzR+GtH
	 ulvtx0GaRuUbzmfeP+BlW7VVui/rhPt/BLrhLvrlD5mrByZmqohULs/gu+Mvp061RY
	 njvDgmZ0OyNLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FBCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373022281.9032.3771958231213622605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0645154fded2ce39493b75102b6dd249782378b5470fafb6b98fc84224a12b55
Date: Sun, 21 Apr 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713730222
