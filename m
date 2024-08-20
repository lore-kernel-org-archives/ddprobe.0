Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED647483
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724115354; cv=none; b=Vh6+4rkzs+8u0fwktZMrXPtl+nyTgCrVbAo2wZuoBFRGjduoHyk352Y+A8K6hFQ7n7BY7rdtt9e06AleS8H2jyygMGySO6saCs6a2LUgb/uzeLuilMlBMdXkgzbMpnTLzUr53uiD7tw5f5cGd5LuFpk+TyUVjgYWNoChJamtnko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724115354; c=relaxed/simple;
	bh=HfrNROdqB/Q0Xt8Ziy5k5UMfUQWLHp3/3qUfOprZEgk=;
	h=To:Subject:From:Message-Id:Date; b=Dz0tIOioNllk6LWJngBCxeJ75thi66oN0j1El7o4GOGNgrCnis6H6MPUeFjInQh032eppJ1MIVsAK7bavirMf1Wx5o9F08Cq+NeFkhOyFxjVZ+/QDUb0Cdpfhi+REEfi60KC/Y1c0OjKfY44rdio/sxVdDJ3sQ8H8SI/bxHhBOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7q1SPwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7q1SPwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F39C32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724115353;
	bh=HfrNROdqB/Q0Xt8Ziy5k5UMfUQWLHp3/3qUfOprZEgk=;
	h=To:Subject:From:Date:From;
	b=C7q1SPwpjEPP3JQn1wTxlV2DrrvL/H5dYUckUuCQXiL7WOBAAkov5oqDVKR854BXR
	 pCYBx20hHExHqOrydDc6qb2tngbEw8p1kQCo4kxXTkiT7r/EpXJ/DB2fVnpukrIK1A
	 l86aIxtF3y6U8J3qqLbtx0UjaGuNb1Gr1S8pXok1ey1JdTc3GnE/LZECGRSIml+2QF
	 yR4Swg4zAmcH5bcFyZsJUSQ504AtITORD3fMi6trJBmhm5Kq/NDcQ3vJxCD2yepPAE
	 HNp0XvRT+IplMTk+EoKmcSVqcD9gL38XFpfczRx93lHoAdHAs0yaHpv6trbkRwVFTL
	 GDwHUGbHwRMkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98954C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172411535360.922.2146596265901711700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4216d7a8b266b1576620708a017ac329f7e6247af28c92632bee71bf6e4cc55
Date: Tue, 20 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724115353
