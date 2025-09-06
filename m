Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216D72165E2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757158194; cv=none; b=GyGK0BlyRbpiORf8sgUbybVErt/u11IUeH2kgRfWmdY1Eq4dNjdlhVKpOHBasHBgncg6HiBuNTl6lkrsbJgZWa+ars60J0te9QGuVNZBDsldkq39X/5zwrmusQJU90u+0CtF+0P8REZIwkrApkIHr0Uy1oCNNwwNeTYyYMm72Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757158194; c=relaxed/simple;
	bh=06w8X+dZyx9D/DGWC/BVz3zihrLtT60FgVv42MDZ+Z8=;
	h=To:Subject:From:Message-Id:Date; b=QjI0QFzmOOb9D0YqBeewPcLEWZ+gWmHAhhhD4mMvama1+FWj88YvJsP5m+RPkEt4X5n57iV0/6x0xGWNjbXyT/Ry0xac5ze7XVyoxcJL7DjCSQsRkSYNo+EQYFH1DWD1zoBBPznI2wUpa9ljuczKlHODH3yVCng+cTWeEU8ogYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQJSMfOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQJSMfOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3506C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757158193;
	bh=06w8X+dZyx9D/DGWC/BVz3zihrLtT60FgVv42MDZ+Z8=;
	h=To:Subject:From:Date:From;
	b=VQJSMfOo+TCsGSTV+CIIz0yaQ+gQ162fsESzjr0rowKvt9RVyWZHDN2EhnduXswPq
	 Dl8kZBMsrXya/FpN0oiu7wQXA6eih/1H+YwJyT0TlAhQb2Ypf/ePVdN51R2aXFxr15
	 Ia9QdSIMeBu/2WaeosVeGIjnW1wp/enxKFkiXngP4bRamSRGBN8WGK6TFZqHQOq/Gs
	 Wq9JsAdui3pZ8DWpUSgl+21fEDiqRj/Hs4nkacLrjK0fTFgIaEPgbU0s/kSz4R/u2F
	 DY4MGOAy/X+ArgZa/IhRUO+Rgh3Ktao8AefUBAlnPHM7iKfHd16NYW5cZPFWQ4UN4C
	 mUKkqe7XPvF5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A7CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715819357.13840.1733652494173687585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e642955b984fca048c76e27dbb559118a9ae2b652dfe2dd1f93263eb890cfb4
Date: Sat, 06 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757158193
