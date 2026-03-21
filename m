Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1872129C35A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774062894; cv=none; b=bz3r2xWgiaqsH3jNgbxu15l1mOuCOxuTiH2EHN/VjsPa4J6XZREZ2hA8QvaWDBtCE4/TWbuh+imw2NAsXIAxf9OdiTXPQECQbAxxfFBNYl11ZHby/555pvguge5M9HFR6Xf1i1vOt19yKADto6S2pBSUJ42+pgINhfbhJFtvqs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774062894; c=relaxed/simple;
	bh=QwkTx32Z9AAu0EL0MDCJEfdoO7FtbyDDl5OTFi0PAE8=;
	h=To:Subject:From:Message-Id:Date; b=qOVpwLZwA/28Ul5Cb/07TNtK//qcmG2nmyHEPpc/x4wjowZQkFxSQirVos8DG7pM/9+NMAOqz2VGJSBu8s1m5SxmMs9X8sGlsop1JDq9mOCyy/AX6hKN1lYO3FlMGNmaLOt4whSPj1jKBVCWWJyNfE/OwgRQiTeBkK34y/o7wxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDpUXn0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDpUXn0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F60C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774062893;
	bh=QwkTx32Z9AAu0EL0MDCJEfdoO7FtbyDDl5OTFi0PAE8=;
	h=To:Subject:From:Date:From;
	b=FDpUXn0m3YQABkfKJ4J4Q78FfsGlPoEIW5ISMMT51u0qNuPxSHSeCulK0q0j/jz2h
	 611rpYqrxVIToNE4mG6HMVz7VeFpZpA9UT4oOl41420EKApW1vpqcis4YrcMKumPwH
	 bEm0Ezimv2P7Zr+1biHmtq2fxlgyY9IHH5ID0lMOtskWTg2GvtsJxZRVZiyaSS3oy9
	 Abb5pEbp48PjAbJAr4xAR91YJH0Wxbq2I4YBR9EJowl37o7Tnhduh3NIoxJTAFkx1x
	 hyEseZibf40MPItbspFwG+d3H2gPBohzlNFv4ZZF3DV1MgCVKJC0CmsrV49dR1s8Mp
	 8X89n7OY+AyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F15108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406289357.2733.1752970622050993370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf050f212ab53ea294a16e4196f29ae2433e2631ed278c2f1158b4a92094403
Date: Sat, 21 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774062893
