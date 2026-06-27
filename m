Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8681946DA
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782556714; cv=none; b=CFlNAP21Sl/n94zbCb+5th5thy9cM61jQNgGxWk+giBEmBMbLjmYDVmqxTlD9PbjsR+gn39V3W67WZGRCIA22B+JFLUWsQZMDsdXIvC+EWHSBmMWtY5YPDTKXQHQAL/Pf0uJwYJBev00BPe03ykJGOtGaL5cc7ImERXwgl+TlEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782556714; c=relaxed/simple;
	bh=YdaFlbVaCjr1PJev3mdHTfrfs/NEzpmfDf8cuLxinJ4=;
	h=To:Subject:From:Message-Id:Date; b=NiVmV3gInisW0sc1ilzjBB3+g9oi11VFNyi/PL0rvRS3hcyLOKLPhFJpqlKYqYWnIgt+yJ2/zYLzY38en4YAW1uNzboESrQQ684EXT3lFIldH7mZJIwM+QJmvWHh9WQDaHIXhaofOU384XAVrOzakkqS45zXm48QNzYkDt64CBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4fex1aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4fex1aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFF1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782556713;
	bh=YdaFlbVaCjr1PJev3mdHTfrfs/NEzpmfDf8cuLxinJ4=;
	h=To:Subject:From:Date:From;
	b=b4fex1aTHGfu1zJ/U/Tb5YnwXxEzuZct6pZ5nH8Hz0X3izBvISc/BWO2pnzp5GZBU
	 uMPgdM4rEXy/ZPfuQ70ckPUb0Md1Fk7SZ9kiQVXLamMt2b3EDXhJcQbQAnnTXMej0y
	 ZcaFboO9PJUejLivqF6aI/ql7U6esEFcL4n264ZehQeN57gqMp1WDa9wqqxXWIPhlv
	 iHyZW5AEZCScDOI6sizq7x0oU3ttROD9QhlZ1ZddEEdmtA4swrUFeuvc/6mV0WhAio
	 LZOxoBft62L0ZU2ZgHi1xub04bIlyBAigbfl9hOgJLYEk2Uso7gGok/Ru8Y3joQ6/z
	 essZ5BK+Swdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D2C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255671369.16765.10701018844941488431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac5c969138c2998097740f66bb7807e831addeb70527b13a34e855402d9bb81
Date: Sat, 27 Jun 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782556713
