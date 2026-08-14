Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB5046D0BD
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786710634; cv=none; b=GFcbeij5k9s/XncwEF3DnTGCOX32J8W0Q/M3jHLagF96PCFXnQudOvy+6Fk5bc/tqcCPL4wCpwBgPQDw6tqx5nvMvy/w97boZ+OkJ1pJ9/2vr8zeUccZwzmbICnC+L0AOnhKUMyAEQUAV/jiz1zRlf77JvnOXGn+jS+At9rP6wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786710634; c=relaxed/simple;
	bh=WIOwlCBlw3/yilOMtlfvRjAuWiMlCVhF2jGa8aHO0KM=;
	h=To:Subject:From:Message-Id:Date; b=cJHESf2LtTvjwi2sif5e4rVYh+hlUuFX64PtN7hsck2MSYVUGMzHOl0tPqNY9Tg4vHkKtnQgahdcDAPzSGIjUYbVl52TkJUGFlWr+AeS5SJyLEZaWW6znx237YZ7ZN9RE/6PFY+0hfwIAHDCHR/Qs5N2u8C1+qcMkDZoX+l1i3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gslXa+WL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gslXa+WL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA815C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786710633;
	bh=WIOwlCBlw3/yilOMtlfvRjAuWiMlCVhF2jGa8aHO0KM=;
	h=To:Subject:From:Date:From;
	b=gslXa+WLqEbwkHAsQkz7gpADyPGlQc6wwlvQTIxo3WE0E/AFkHAyB2J2qad61m+eq
	 1p2E3nBknLtHLDFSb8WntAD3OLbtns5wK1PbfP2JLwMDaFiY0okotejk+Xt0oU8o/o
	 mWN1yLyo1YSXkL6cIvqYBDb0Q+nR8ZVWnG8AxMUBCJ0KMzVqnR3OvhvY1N+A3WD6h1
	 v23KJa/idrpKhB3qnrjZqHITxWVoIMDO+ZK2Hbr4RCeC0XNvY6aGIg/6NRW933zoxv
	 DTwIwavC3Fx6MGHxtfOg3qtnJf1uaFPKKYXUKriIl6+bDcLDth1Ko+bExJ6vZLLChd
	 5Ux0eoLp/JAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E0AC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671063368.19290.10925285577056046336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d924682e3685accfd6746e227d6aaaad03a369c28e612859e84541981403d5
Date: Fri, 14 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786710633
