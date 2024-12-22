Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A7F38385
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734879354; cv=none; b=GgCAyUw8IDFiPGlGKdMrdCp6DU43JuZC4NbgZ09oZjyDQwULjey/DqTNvEb/2C2og53+5QeC6gPHP0F66wZJOl4tS1ulPAkX09rWnz6mZ6ZJ/fS+5mbO3R8vCAxBRHellkGq9CMBHlb8Nh7zvRXh1zd1TjieKNlrHN0oyOTHtwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734879354; c=relaxed/simple;
	bh=c+eKO0LJeuyOfztq22SP1m9D69IqrPCk6T8nPvC8gI4=;
	h=To:Subject:From:Message-Id:Date; b=Zdw5KonS8wsZkJREY8xmXuh97LnXFIBgeQEej9+kwIO4k3gu3+dPQHCXgGFVuFCqM9WKpLNDQV9CeQj9Yd78JvBSr+9RLm+SfbIoHTydSTOGM3N1MBPgrI5PLi82cF9ksKnyCH1eGGaUBVVUb5KI1KjtZVPHHBIoT0LEVr060Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckftT0M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckftT0M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6895C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734879353;
	bh=c+eKO0LJeuyOfztq22SP1m9D69IqrPCk6T8nPvC8gI4=;
	h=To:Subject:From:Date:From;
	b=ckftT0M7r8vR6G5vCTvaF/eKPHMsF8jKZkyY4+ZGmohbgnVqcf3ptxKgN11K6+o0I
	 o/XCc8ReZ37msv94Y9Vs2Fm2sFx537DUT06H5CMPyk5S1U1hoLKec0KMPSVltxTGzP
	 zpBr/VNqw/8J7wskAtW8SZeym9ufzl1YZAKJQGLe2m44HLHTiBUP1QV5Tj7oNsdrbz
	 RbMfMw2n2O2mPHAD3G4ncB1eBQfOvGuaA1VvEcQBKWWgTYaScI0yE/XH4ANW6z3Nln
	 GvaqU/D2OfVM1mKL/OrIZjsSxVKznmOymcbHyER9U5PrP7SIbSQqpdnJGx/MshMqqn
	 2y+N0ToQzlEag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B2E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487935358.4897.14878324777730453266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d8a53409ce260decbdd2d5541fcd5d0a973efb589da2457fabe643502a88a5
Date: Sun, 22 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734879353
