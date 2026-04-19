Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2263B18A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776642454; cv=none; b=sTFhdm5dW+Gt8VIa/8Dxm3sCgBzOAVDyLCOp7h5qY0PBjJXdWI/ycPafiSuxUdTyvixf4vW9+TNT4Y7j1Rj+n/pdgaUcUV4lOjaUnOi0x0RjNrmFiLaie07TlOX7VNmR4J4jk3Xboz2LWPvwwG+NAoc5cmbIwep7KbKRztHhaTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776642454; c=relaxed/simple;
	bh=836qY+JADCShxogERD+bX098k1cz+A8Ffal5j76luwc=;
	h=To:Subject:From:Message-Id:Date; b=JzglFgit9rXuhFOXuSDv+CDw6bygGpWBYHlLQdtz6BCr0cD4BfZPLalghN/lkcOu6Y4/DVlz1SmZAi1Zw5Jn45Ck4D8NqfOf13S6ydEkZxIfAAqP3YzgyOmcva+6Ej6HCed+D3VG0hH5KrFC1MAlFvxNzBBDOrFKMZzGfBu34fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALJ629H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALJ629H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD807C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776642453;
	bh=836qY+JADCShxogERD+bX098k1cz+A8Ffal5j76luwc=;
	h=To:Subject:From:Date:From;
	b=ALJ629H0qWUS/Lo8s1JOyNpz62jfRKutFtzYUuZR2YO8bXJTziH4Anv6Beck2Z4rx
	 s7Zpac6G4etAUIKj3gfzPkYVjKlOu7ON+x1jCGbVTZRJLnA/yB22EF1MdzihKGtfD6
	 3VJG53Zz7VF5vBFQHoJ+fiQlVMg26T56UzkOlbxkUmF16/xH0awKXtzbF+sr9hqbFG
	 Bqu/pltb/82p1pgKuYT41e0HeLaMZ4gMUoB5+vA1huaKvAe6Nf8u+KZI0OjuxQfqwM
	 QiXhVeiu6u33n4JyPQR5/sT6Pb1Y/taCs9TLZJNDjnKiTConqTZTY4oiThstn7b4Uj
	 BwMKAI66RRkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D9EA71AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664245368.28770.16867397928531014058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62579f1a99ef915e0a3e382c68661fa50ace7ca634c02f36ea0200c88685997f
Date: Sun, 19 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776642453
