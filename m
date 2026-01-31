Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113831D367
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769825634; cv=none; b=Xk+aXoZh93TmrRWKNrMaELWrMyQmvEfa1F+ASPnOjd6XSkkxLPZ/nW8lzmrBQpD5Dy4PFTfsWK43Khi7iqI4+JnuTWBmzzHticCumrHZt1TiNuE8wtLUxl6C85J3uSs4CDSZTFUfdx10FkdDmtHJ1BcSRXEUnypPs3uaaszh9Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769825634; c=relaxed/simple;
	bh=sBcTvBmvFiT30CPaKi16NYL0qlfh9XWVaf2KRD4HItY=;
	h=To:Subject:From:Message-Id:Date; b=BWhxdY2DTmGwRJNIKBLX9VWPe4X+Uz1tpv3/Sp0eUYnv4k82S7nwHvKln8ay2+tY3WrNZn45x1bHU+sUG1niJ8YH2MU1J229TmPIPkfsZxYGLdmJ4I188pbi6LvmESDxSMSdOEoJpekurK4KLUNpkyi4bSqT0sVoM5P7eM3J3Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk8pjmDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk8pjmDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A33C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769825633;
	bh=sBcTvBmvFiT30CPaKi16NYL0qlfh9XWVaf2KRD4HItY=;
	h=To:Subject:From:Date:From;
	b=Zk8pjmDLYThE83KDyhseOugFsHE4ReoDGfqwQ12YBh9U3XHn22bZBFkcfJM434Od0
	 2/2NRBnPpuoWB4GKxJntyn/ZcLtp8UF0nLGc8g/Yk2GyYoxhi0M24Be6U9MknqjTB8
	 pkewOIckapK3X2Oip6M9J31yRh8IwlqfUXBL9GL7uf8a28zGVIlAfyDCDRKjY4TcBA
	 vi71NWStvN9bdfxAwFQCEx4sDOJrumTsrsyA2cCBYwXSg9sedhNzQ0hGv5OCmOeP3G
	 Ld++hWuokO/MhUSagAIuauQ/EB/7N+U3OofsFB7kCFn1JWSZSgo+D6KkrF6rqIRoiv
	 HpSRRqnuIvb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011AE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982563358.19247.12977398943383963957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7172da2e9f76e3338e6af1e01434e24d52eeeb6c5c9aecff6fd75f6b835fbc
Date: Sat, 31 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769825633
