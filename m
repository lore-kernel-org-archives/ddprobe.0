Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA697274671
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754692193; cv=none; b=sykgM26+GfoXJIKLSubJpUPa2YSKwrVu8IZkMJy6rq31WftLForX09K1LiDL3sFCvkRflTUQHIU+Mxt+TJumS1KD+WEMOOwEHC5K5Ig78r6gsf/fl1UE7M28NUuFMSNhEVTzB/wkR6FYkita1ZnuipFBFW9nn+nRrGztRSntmyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754692193; c=relaxed/simple;
	bh=xUMJS/tC+9Aruj9022fmUBXkhpDJJODSMzmQUhhLfpM=;
	h=To:Subject:From:Message-Id:Date; b=NvqqOT25meELC3QjWXOMdxTJ4aSB2aehMfHhcRun7WPy0l1K6SwDXZrruPHOYYbP/a6HM21BtzqybAa6doCq51L+ipYq502VZzVSXFHY2OhMs96lKG242V3fJooWpHE0DCjmc/59WUIvrJzt8Hic+J/1AU+6Ny+vHEp5Yhv36/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4MEUMgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4MEUMgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E19CC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754692193;
	bh=xUMJS/tC+9Aruj9022fmUBXkhpDJJODSMzmQUhhLfpM=;
	h=To:Subject:From:Date:From;
	b=d4MEUMgbR+MecFofkM9FCYpxp938ygH+OKDMO807AAc0urHyccK4Pw/YGjb/qg48d
	 NL7TVU2mbQm66L8UIeIWqEV7TMQIlxDw5ZIXbyVDyoM5X3JJRPOrSN0nAvS+gEnGvf
	 iIEPP8gUUh40GX7YnY5KkJoV7Mjg05d4R5sIsMMVgmof7lVAdO6h/aySWUVdj4pgNG
	 TCmazxMcdhCAPzy41sd/KnSbsASKEfMC/ln5c3psk9JapGtxEGN4C2Ov7chJ6WSoGt
	 Q/mWJpbb7JSCeZJYU6MUxVvkqyc1m+Mo4zZqzq2jUHe1AjlGX8MmHuGP7fwHkpK2Mb
	 Iv7fJ6r8XWhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4EC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469219357.7417.11844119623671091243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8112c9ed6898d5e9e21fb3f434370d434f0b13b76b21dd4fabd09ee6cf3d022
Date: Fri, 08 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754692193
