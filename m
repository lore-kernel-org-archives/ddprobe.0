Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23472280CFC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294194; cv=none; b=OaxdWSFeHPSL8wIHBlybMQw4nOsaBKFRZWFoYKdNWvzseMV5iZDA+pYuujIkPQhId5+2b3JuYBqdJ6mHpvGEUyh17hT++/HTuq9/OvzwK3yli147c0Qh5P/NVpnexv3R3Ti5rAbAwNmrLeE6yzxyyPAT2Uer2/TChYj/XTE/c3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294194; c=relaxed/simple;
	bh=yqM9vnTZcqMjswuDPK3SFZXgnCFNwfeUIxtiKINnWfY=;
	h=To:Subject:From:Message-Id:Date; b=OVImEgafE2x6IhrGu0wAlL+4oCRpni9keXFZdlUaly0eIfm5lpZMTjluk5jfvQAdzUzsik564em5vQRvyPMKqJr9VjlYPmhcd7BHMQ+3DgM0GR/yVKpehJNpiz6EkrA11K/BWPXr+2y9hPdaMzT9k3S2PY+DVklu/rkI5tMKzMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu81bJBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu81bJBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3530C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744294193;
	bh=yqM9vnTZcqMjswuDPK3SFZXgnCFNwfeUIxtiKINnWfY=;
	h=To:Subject:From:Date:From;
	b=Iu81bJBArGKNflRUxJjJQaF0aJgVWKLmDuHT3gGUBv3u9u4cOQcs+qww6TDgtPPzJ
	 vcgJwi1uETPrw1sxOf3ClOGskG1cle37TKbOPH5ISX0MFJ44dgnF0hqXz93pTzS4db
	 rm6Ata5KITOJ/yQKioPt0jErI2z0j1IGKFAvkgkw2DdzRG75XpJfvlQhW5Zq+cng6L
	 Cr4XqPYHBMAdzWmVt9aXtxcXYjhJJC1BOJMC0KjyfKPaie36Iq2oxKo/tOZxVpbiG2
	 a2whfJd/4NOu1tJeGhpKRErkr7PYRI2/lirHqHpsvBif8w47l6z6nwJz3Rnz0C0rsT
	 v7vQ/HbITE4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E35C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429419358.20964.5487894652257690072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513cf1759e127ccfdde2f9efaa5f6bc8708192ffadc81fdc166d2edc22631f7b
Date: Thu, 10 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744294193
