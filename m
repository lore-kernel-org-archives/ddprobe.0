Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8FF17BA2
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766345034; cv=none; b=baxUH57vJt5VEVkZwRNpLSJQM46JKRWurt4MGuWBbqjGovLJ7w4V7UDf6BT3pWqUq9DL6MJJDfshCs/tKO4MvAEAf7Atro6yqgjilxV1dpuuzUhMd8ePkgycFrbe8L68uVDo+Qe2TvU2+uM0v1ICWWQEwEWK3v0NVfZudunHOmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766345034; c=relaxed/simple;
	bh=U9xN7AOx9HkU69DAC/b9nVoZFTHZOAY0KeDsrskLa4E=;
	h=To:Subject:From:Message-Id:Date; b=OHp0iA9/AVgd/V1LoQHZO0pTcplVqD2VcuX19WGDKmzZYxrg/OxLiV4laxTfi8aJjTWeqsC0bEF72wZVkQ6YaL6M9BVKxODeevkENCRVUoZM/hE9LW6bAMN619GP39Q2bdyT9cIg6obmiVuBkmMtbHAacNMWxuIAcN9Q44sgpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp6f1lrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp6f1lrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4253C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766345033;
	bh=U9xN7AOx9HkU69DAC/b9nVoZFTHZOAY0KeDsrskLa4E=;
	h=To:Subject:From:Date:From;
	b=lp6f1lrQ3/RKjqT8gWyHBHu/KIT6zGOGRgDZDiH0HSU5VOgp73f2v5rgKv3uzOa0V
	 pgJLmhOb1ZlswCiM+wUmauUH+aGouBvkEHUueWchjGwNmI3rCOeApNDfw9l3VhiLia
	 DmGc8tAqtVKoLbJqIEqsK1hiMK4viCwC6Vzhh0i4TUTcfzhpfxvN4b0FZzkWIpSklo
	 rO5poGl81k5Ysk5p4fCdG/Gw8qiwONu+mMxznOUSlndElm7KWFGUP6SzC3jBpmvWR6
	 XYK4gLIAVhX5pau52HIEiJm9u3k6Sec46LODm6m70ZIr709fHfZu5Mj3CX3vdHDm9o
	 BYlNFtNBKTx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D0E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634503358.3129.9057926744721662686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b8db67627ab4225d5c888e3cb8c3e614da768c412f8954bb49e8967d089e6c
Date: Sun, 21 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766345033
