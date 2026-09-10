Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542434BFE85
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788999634; cv=none; b=b+bdp/yUBYsdmoiuoU64b8+vwatobaN4HiXDlZr2vTr6ZReMgNTKegd5IVQ8DfpzDASCtR/5fw/k2E552j8DfFe+SwNWNb3lrzh4HdCHkQ8JLwkopvKNxTmaLEZGhej77LHZerbVQpr/wgC5FRTOgfwGIpY/MvpjuQTymaRgEgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788999634; c=relaxed/simple;
	bh=kyzNS+oCkElxgOJQBz9Bpz1DX4VsP/CQEnBmV5j9GN8=;
	h=To:Subject:From:Message-Id:Date; b=NYJo5CK3qyF+VycgSvhcydiyXl7xpHJKjozNUy1uDuhc7Fm06h+WexfpGHoeCoBS4VlUXxIEJXm9mDAA4rzibNsjBd1cZymuZWCwNBr3Ug/AZ1MdvTeayu5sgSxFVDw2KV8X2h/k+Z2/H7XvtpJz7+RpV/SDPP9CUg+eIkoUKuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDStTESc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDStTESc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D4DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788999633;
	bh=kyzNS+oCkElxgOJQBz9Bpz1DX4VsP/CQEnBmV5j9GN8=;
	h=To:Subject:From:Date:From;
	b=oDStTESc6Jv5zHDE1z2r36N2De/LXPfu8ZPet7XG3fad0/X29ftWrh2gvaitQXQ6C
	 vBViYESNOlsRJf7WcTDZhKOloKboJTdE7Q3QOy7dM7nLgXF4rXaCu8N/H5teH+vXsX
	 A7OIBq266DNOmRpkjpQg8zi4oLrdqJ+0pCT1wqKuwM5o/xmy4Bv2oeFP63l3oielpM
	 rsMQbpPPA33IDKc7uf9Ojnz1Y8mPfGZPHn54DerQEcAV9LiCfHqZdTwB0k/tEWBwhw
	 a5JWu7/lKmJj1YAo763daptx+iJnbBZ4bW8WgkpNcDPEE9Qlbgs56NkSOnDPSaX5Gw
	 GC9EB9xhcXA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC21BC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899963372.15880.10513902557728123938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a266a89a9f11933e8034303cb0b218c172aa90a93131a83fe5395b260adc22e
Date: Thu, 10 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788999633
