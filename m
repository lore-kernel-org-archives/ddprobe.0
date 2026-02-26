Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61D530DEB6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772139894; cv=none; b=TMIm4xrZP/JKHfGAp1IRk2vVfjsiTxloNl5Ylyhr4EPG8gHge1cOiT3fDgcUfLwAaWjiDPxQvsvRNDGPzr6/OWcGOJLy2X8unrG/p8MH4KWG80CjJlHSxyp8RkSvamOt7v+uNmc3C+nUCuwZjM9AANMPrKd1bJLayid5W+HLj8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772139894; c=relaxed/simple;
	bh=IOWT9SVzyCIbr+wEP4foN1s/3fpfjYs1ztEtrblAnk0=;
	h=To:Subject:From:Message-Id:Date; b=fnjR392RIwBWIvKS8OwxwMQR9cSS9DmTACce9wcQUlhBex0kqXaDNO86/hPt19GklrGnsrTI3Zh/ZryA2HqOZLM6JDhz964vDCo+3pOkfKNvb2oC+v2D588OqckIWouwlI62lZTSbqGJc75KJIYB0FVJlXkanFXBsLJ2Ke6zaI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaoYMjDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaoYMjDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE717C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772139893;
	bh=IOWT9SVzyCIbr+wEP4foN1s/3fpfjYs1ztEtrblAnk0=;
	h=To:Subject:From:Date:From;
	b=AaoYMjDX1U1X6WxxEGF2rmm5VzTOHyqnEgEOFnbtgMMpoVMnPbMVnupqd9KO2hVbc
	 qZevf+c4gMTWcjkzOidHat3TkqpcdU7OIqPF8LW22j6C2YHpp/GiHH+dc/v6brcfX3
	 fO4Ptemm7ph8ZsT+ISQLuZws6Y+Kqcq6Qaaf+hmYUXOC3qU7uCuhg5m28rHxWQwByh
	 za+3iXKv7paeHChWp6UInu6Z4cfAeh39U40c8qm99qBYGG0ONH7eQdFwOYdWFtPm+g
	 EB8kmCbzINiOxsYMBKlWwJH/TnKHGRCb1qGW21+Z6BbMdCJArUDwb+7Um67DMIVt57
	 CpW7uur8nGd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF20FD9E10
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213989369.23908.11455009285968387126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f738da414cc8d353ef4b1e079774ace2afa4429b6aa4b4f0689a420ae08bc8cf
Date: Thu, 26 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772139893
