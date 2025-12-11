Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0971FF1C4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765441374; cv=none; b=uK0HmAy8PiQFWtfwm+11kWE4VIqhypjnKCuwgBH7aJhgMksz1tu0Jjk+4C8Trdu9iKhnF7NurEXAusd0BXN+/jG/6fzbBy9WukQFdwslusZU5tiqcNJvtk+Is2X60VG6t3t/iUJvhI/tpGbHppMhvhdVC2R3/OjZ4+yMk3Dl4ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765441374; c=relaxed/simple;
	bh=JnNFdcoujDMFHOVpFDOMbcEBwk2g5XI4Uik2Gg06qB8=;
	h=To:Subject:From:Message-Id:Date; b=U0Nzyx5P+CsCKM6AmKaJXJjWp0MQp/BFfq9o19onU88Mg7KdVMz6+iwqbaUYYLKvZd8RieYnJbJqQiB4Am4GsbfVE1meADs35avIh+JReOIfW/nkFJtZxbW+SqMTkHF++Vrs3gBcTxPKlCoFmxNAQZ1fQCrY4ABNcj3Ls61MsUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXGqZ2s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXGqZ2s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7DCC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765441373;
	bh=JnNFdcoujDMFHOVpFDOMbcEBwk2g5XI4Uik2Gg06qB8=;
	h=To:Subject:From:Date:From;
	b=lXGqZ2s4iz/MwCDZVdWebXIl3+Lc4mLXaW8B6j+POR03RkqnFRt+xXAXQ5761zf1t
	 x4iIhkbVACM4nQj/YzA5ykR86NscN3rqZoeQzyeVpDnKI6I+R7nC7ibBZEOeQ9GTrU
	 lywnfdFfSLVHEgzdUSv9LzeWZnLHLZ2/hygrnkXGQbO+Zmtj7jMcNQdVcuHdnvLZhV
	 hKyxDw4xQCHjZT1lFB2jidprxU3d7W1sfvtaUWKiGwr1ZK/6CvoiaOrI/5SRG2bj9p
	 MbvUXkS6mm91l+71rwtkOdmnlBPWrr6bQyAtHZogmom9oFBCwDLHctp4mEeWaew6MB
	 kdxaZsF2NC/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B105D41C02
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544137360.9678.13616293378884225458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e731866c86382c60eee593ac07298f4f8b76f07de4c85d9ce8c7bc6e93661d
Date: Thu, 11 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765441373
