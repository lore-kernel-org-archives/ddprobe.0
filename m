Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501831DFF0
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717342523; cv=none; b=ZFBYIC+lcYxzH5ZqBtuXJsMgBcflZ9LQJKPNcvZJwURNdvz0bvW7Guqcr9RTwAgEeHLFwrvXjyXU/462hm3KzAn5EsBBLDpDhrdN2hh+95TUbHXL/fddHVI79KM6E2ZyGv4uR030YPnnHlloVW5nJv2Sx4iahT06f7u6/jlrngw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717342523; c=relaxed/simple;
	bh=p6k+9ZyikURBqmTZertJkakzo9A/U3nqL9m+kJPK9FM=;
	h=To:Subject:From:Message-Id:Date; b=VK4de50CbHsl6eVhqO2/yFgSNBNwqKC6VT4JzmUc0g5cfpihQHd36cfLym9m+lUepHMe9MmW7idfAv+2iRu4zP+cOa1kgpTp36ejFts1B/11LdVSiq/8yT8ZBCp7lSciHyuw/hWERBIm9Gg3GGfPhpIUt03qriVfZ9LK03UTNgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze4od0Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze4od0Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDF8C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717342522;
	bh=p6k+9ZyikURBqmTZertJkakzo9A/U3nqL9m+kJPK9FM=;
	h=To:Subject:From:Date:From;
	b=Ze4od0WsZR01r3QYHb9EOtODtSXajXjHaIw9SU0SJ6l3P6JUCwEgaK6ry7C0HvXYZ
	 cy+UdBA4sV0y5cN0j0kukRv3wir0LVYL43vLBFrPWKjRZGwFj2TgrtjOx5Oaek34ZF
	 +9gksmqIpzmZHajPxdoJozTeAMZZYKLxWI8ncOq4A0IkwXPxcs7zhtFZHXF0vvc4jW
	 fkPLzizT1b7Dhsjo4XljC5qQG3QdpPKUb1O1ktecRbddThSxXe52lPylTLPFO8ndWX
	 vWJCU4bmwghK+xv6ra6JUNoLulbK6hC9mLt/y9MZIVInBCFVuJMiDCx8lM5Aph1vRU
	 Cs0M88cnPbk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DA8C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734252279.4881.222870987645851031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9055b7c1c628676bdd2cae25bebeffbc3ec6ab280680b584d2b4f258c351391f
Date: Sun, 02 Jun 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717342522
