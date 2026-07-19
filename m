Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB1B19AD5C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784501314; cv=none; b=bXil5aPYKhOnGULvzUGC52g9U4vHOdh6+Kz2zWYBXNRyx73WcqDH+xv/JoUwuRWzQWGJh0DE7AfDf0GTmSotTKDlPkJRl5HqyenVXGcosTYq0jKM/p2i9POE6Q8qOEiFsV0m5yDdT1FkkchxoDLsMjjsHVDzBBv92k0qcCFEcQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784501314; c=relaxed/simple;
	bh=hrWheAyx4QrtzD2NFaBaCULiFsvJ2NWt6ujSC0nq84g=;
	h=To:Subject:From:Message-Id:Date; b=P/328f8akY84bYZrlwmBy5YNFVl2uNK8JU3jgXbhRJTL8Hrpp2i988GOzdLcXOXfXCrvp/7rVpkSaky2Qtx1ipFxGZs49uuOHwyXUQm+f1q5w/h0iBVbK+Oo+KEODhOx6745HndBBIle//jZO+KRyDBrPWSLClit3cdeA5XZQWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egU4Uf8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egU4Uf8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9F8C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784501313;
	bh=hrWheAyx4QrtzD2NFaBaCULiFsvJ2NWt6ujSC0nq84g=;
	h=To:Subject:From:Date:From;
	b=egU4Uf8bH9EpXSVd8E5e9a9vx6zvj1wYxhmV0pRRGWadNRwoCh/cSEB11Y1YBJm63
	 5oE2EkJeuolAk0TMk10qlEfAouW+D1gozhkPQNZpkBcj41FKMIr8uiDLtMs9n3VNgp
	 XffaOQIiFOXl3orbwmDMtty+4xXLk5yaDWf3NoGxaxg8wxxWFd+cbN3yru6Zq20Ah7
	 XjKtNPbHU77g4aGqotyfylXl7Fy2NL8ZZyfTeb/vwOQeco0U+D5WX+GDkD5zZN/iok
	 Y2DNJYSvw3EErwMuyTqFGVPXp7vFpgu89Y/ePyox7WqLEqB3rCnihIKAakYQ5tFwWQ
	 qR/z/+r7ibjQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1247C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450131369.23575.11978587101740216634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00c7846f8af5ba304fa44eef5b5887ed561fd42b2ddfc7856ed6100545d809b
Date: Sun, 19 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784501313
