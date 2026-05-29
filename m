Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1FF3E51FE
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780068154; cv=none; b=oX5D62lKz2bEPWWOEbjz4jmd3Emq8X7YCha1KN/RRSuuQMzzXFd2B42zs+/JIv9vG5lmLQ/VP+fQIsG2XC3ftjH/oaC+Ep0+Vf8x6wVtE8yvCxGUEX049FFktJSZ/IXufR56MIMwUgjrQb1xcZSRTFdY89Pwx0JsYy0V/MT/NWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780068154; c=relaxed/simple;
	bh=6z7WzXdsjs9znFKsPJ2JGVZOBnPnZNSjOYC4S6u9TO4=;
	h=To:Subject:From:Message-Id:Date; b=rZeuX2Ou55qRhkntSaUybD61+otaB57sFT517JRLDpMBbG0/8+XktHHRhqwuKvHL80ABt6G2EwO/7I/0DtNt4Mf/Br0FZ39JKVpLK4B7Ra4YN7DKklMIH73X4GMulQXuEAy2DaLmKw7GY/IcPOyLq3sriA3FlHN5+0CCfxH4/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1ApTlrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1ApTlrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA72C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780068153;
	bh=6z7WzXdsjs9znFKsPJ2JGVZOBnPnZNSjOYC4S6u9TO4=;
	h=To:Subject:From:Date:From;
	b=X1ApTlrG3V533dpRygOGB+tE10ULSnzWdhPtXpzIeBNe/mcoZPhnzPhTRi6jmL2qV
	 iLI18sQcTxkP8LUcptgzbIpX64BEJNBoc9wk/n4Y4JxC6Nt73KHXFk85EPCxe6eBXk
	 Bag2cHUljGr+1WnpkBwluAVo8uiaz/+/w7uTj6tKhV20j2MOC6w4i9PxtCWTVUCQuD
	 oDRUQLDLD32iy8rhcwqQ9gzAXNX6uZ2FuUmPGmKcFbg4VAbQ/WH1lxksX+VEwySY4q
	 ORvAskPiTqFhD2qczHtLUwnIIa+ZybrB2TrK9t49z33UGFhQFRr1Bv16WmatfHxy+M
	 CuKYWQcBAcPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3702CD6E50
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006815372.9344.13259698276389643643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495e6d23d5c2554a99cf4e273fa495979f3ca4d1303eab10242b674e3ade24fe
Date: Fri, 29 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780068153
