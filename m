Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464693BBCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719659063; cv=none; b=GxaOtyF49AKc5gR5tNnRO5qzUh7iYvWvNLaoAy+4KK8A9LpKG13xoeoy4WC4q8bfqg9HoPuJH1KmXxIQhL5etXNOi0w8s/wJZJaefUwndvlMzdksmxm+nBrf4teuwSsR3A4rGOObQwx2syPDmcerN/6LZYP+jJTC+3F6jQ81uP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719659063; c=relaxed/simple;
	bh=fTbLcm2ZLPHy/ZSkpjksuBLZhY+OftMs+6OkXG7Ivgs=;
	h=To:Subject:From:Message-Id:Date; b=SMt/fNxhkPb0phq5g0YVNGXeYWzb1hn89emgdAY1lueIuo6ErCanHY20QKwswWhy1+h8uQ+EMy81/dQJVi6Hu7J+fqdKxYCRyBvWI32nZ/F4TiSm5C925r/SnPwgdIBNxgLFLHy/YSU1rbKzaaEF0v5IY/latDkwsWbhKOVUVWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUmkJ+Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUmkJ+Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3167C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719659062;
	bh=fTbLcm2ZLPHy/ZSkpjksuBLZhY+OftMs+6OkXG7Ivgs=;
	h=To:Subject:From:Date:From;
	b=pUmkJ+YoElDi2uixPp95liAqzRpMR3oEAhd8EYtjf6JWMidt1mDd+5al1wyZel99c
	 TyXZlBeRwZDUEqlIofPV1y9r304gznmz9C/t7S5s0YYxxJBmvHT1yGEv0PKwvAYw5g
	 GX2L52faYD7Q++VomDsYfzCBRmaYFNvzbhL8zISMY3JN/3fGUEKvCEgCBJfEL+BeeF
	 v/fBrl4xPvl4pjRWbUflZYogCrBCXVXlEnVz31+Gi1RRXIqHgCJOxL9AHbK4pi4/6o
	 Y/nQBBiam4XIgLBROMnegGQXzmu0iufYHQmvA+CkkxIadGWkP9yitRKfrR2HXe2L7R
	 N5QaJJowJmrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21D8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965906276.5527.10369186923675631707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1796173adf083b5f40369a3cebe6f277c7f356c606c807cffa8651ddb77ed30
Date: Sat, 29 Jun 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719659062
