Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F0438E8C2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781726194; cv=none; b=tsUB8wdcRcJzR9mvGWRgTA7H+weHLL/L2XG7QwK0KUkbg9eVSzzk1OgNWJaE7TC4P+7GIMABEPXOqhyCVV8ZervpP6hBdqNqj3AKGqVo5oYXxxx2MV2FkojrasS4xsgAPNOcHNd9SJkB0Q56Em6Mbk4WR2H++Zr+GoHM3VaMxz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781726194; c=relaxed/simple;
	bh=cygZbCtL1DGtLJQHyuKP2Q2sRO2TknGxKV9AEMoufCc=;
	h=To:Subject:From:Message-Id:Date; b=AHADn9ly76/+u5xbBIlRLinKtTD2XEKQx++PrAHwdcWZIdrYCQxs5jtZGHr7PRi5o36bWoGP1NRYKo25o1yPaHgyhUTUsqlvd0GDfYLZ9fvXtafb3GjwMdYvllteIWtqXinNLqc7DwZ2zlQNkNNUGu36pUfzCyfYoXWp32k36vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6pUDz9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6pUDz9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C811DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781726193;
	bh=cygZbCtL1DGtLJQHyuKP2Q2sRO2TknGxKV9AEMoufCc=;
	h=To:Subject:From:Date:From;
	b=N6pUDz9/hazi9KQa5XKljDEmr44czEP+/hCSYxTFec9NbiOLgYw9T3yfgPlcQh95i
	 QE31YIOk+vjphF9sabAony997uO1plaCkwGJULZUBqUPEWHkvLkK6IcdwBwDLEwkFu
	 ehRrRyt/v6kcxIs7VSAa+hcDAlD/69PDNsKmUgJhD5B+sug2qmEKTy0A64k9z0qZBQ
	 yv6xXa+OrIpaQnURpN2jY62IoedByWyvHmBgzOLEPOYATqlRxwwGrSl6Tr299JcRzr
	 vgEHD+BHepwFf/vCnvv1dQgyPNi+DWDtAINWjtjF6DlwAsPHMC/kXkvCG3vcGj2YIU
	 fo3+zidOfIr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2DCD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172619368.695.16802396305661719981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902bf8fbe44d2ea1264594e9ae3e362f455c5a0af870a06569d52297d8aa0780
Date: Wed, 17 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781726193
