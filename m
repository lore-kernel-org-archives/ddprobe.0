Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F751DDA34
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751596794; cv=none; b=iNyzpuYpxFHeOZ7BCw56Lbiwl+JZk8gDZJ10Ia6JnVIwuEfIoDEfl8K5hXnTWeCGPQRgFGFaolFFf1pRTEea2ta6Zdua8/TTFZ9xENzk3eg1AMvqKLBW18pB4NYORwwC+J9NDvU71UhT5b2iPp21Z1viYSttk5Mg+DxEeHivmrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751596794; c=relaxed/simple;
	bh=G61x+ZQoabqfNpTFI0+JbGO1XjgAp7vR0JDa3a2m8i8=;
	h=To:Subject:From:Message-Id:Date; b=pVUgmRGM45eoU5u4FV6qfsVhOmrU7VnFSZQCNpkVABRzENfxxuvgeOc1qIRci6XyXwVKQXJUwdv/YXQ6syxs9JcblIa2UT/PFIsKVpjtY6WCCtGbKB7rF/C1WF0NTs5Ua9pZebhtVNq2XchRuZZmFAtV66jdMgvlZHjU4i9lSGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dxz6MuOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxz6MuOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4545C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751596793;
	bh=G61x+ZQoabqfNpTFI0+JbGO1XjgAp7vR0JDa3a2m8i8=;
	h=To:Subject:From:Date:From;
	b=Dxz6MuOxdabQQkOomcqbK4Wa8XrWdBPwOHybOT/82c1/x5uv1dOcRCL/XuWVQCOEo
	 7HxzUh22UZbEEpWORaMsCIsRgx4lYlsNW3RIG6SSEPcslxqrO6ialIo+Ijl5aZmmLS
	 25ZMI65qsB0veT+KHaAfOas+iABw5I628iXq/+cdEtHCAa4iT9xnO1YR+ebKwSCHTj
	 5q9p7F1Ja8+VDh5/m2TBBocRavaAxUaU/Q89nhW7fh8hAwDKpWSHonN/R74XvzWLnS
	 0uomQ2Xv+m6CYyPuAGXMfgRAmDlQfi7VWYsMfmtJSZS4dKx2Q5NT/7Zz7sdsVhbpNf
	 WwJdm3po/igpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED33C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159679357.9600.16815429293454239073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d41d15589f86aebe5670a9d2937a148bdad2c6f3af6655df4e6138fc0b81f3
Date: Fri, 04 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751596793
