Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13846262FC0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773873894; cv=none; b=DYiwVzdj3pRFqAjl0gg7DMYlliEtVvAU4McJaxmnEUclh/vNzG5v97BqXcMXtqKYBI1FakyVJGqu/z8Jluwd2u5IUz5AP25CcLCTVZA/896N/MsFNAQOHdd/TQe3bVgC3h8UKVTFfE+Wu4wSfDLQ326t5VcmFKg1NWzJUdeVpqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773873894; c=relaxed/simple;
	bh=YudOKg0/AUESPPJvxNCWaczM34e/HzzKo9ANnFqsIcA=;
	h=To:Subject:From:Message-Id:Date; b=r2BMPaO51zqBJX8n4rzpI0+upry0GSuBIAlzAhvDC+T7qJggylUy64rMgpgpvY/bqS001uPirtnqr6n2pYZbARSk36Sp4POG9rBs+lzIiyCloHVB3QuYQyZnRhveoC3rvx2b+hk+1jVDDvnpPg8NxffhwVvUDAWmDzEipkfkmmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsTkPnOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsTkPnOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E47C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773873893;
	bh=YudOKg0/AUESPPJvxNCWaczM34e/HzzKo9ANnFqsIcA=;
	h=To:Subject:From:Date:From;
	b=JsTkPnOvi+8jaH//t44/jKCmfG9OaWg/aKOzGgzQJnN5xt8p01AiidKPdbXAJXjZo
	 XEJrdXyEXIoffBal0S7xGehn8UGlKlxHUTkd6eFg9FtZwRWS+b+1KLItDEPJcOFnSa
	 9NRtn8sglEGD3UPSpmrQ9HCdjXWEveHKHIPN8a723Y4Y+oETYoMIPa+0IMYjNdZj4T
	 BXu8SFwP/mdJMPTZmqB1zsfB8KtkFyGeT7tBsfEKC9K9bfKtmtDGpB61FRzQaT+ozq
	 XsWy67SOr8dR8R98fHGt9se2xfc1Ywh99hmI4cn1axH2FN9I+yB9jo8JOCJqt3YdnK
	 NVQw+WJ5SLlng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C61088E50
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387389357.16761.7385538898094234643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b73fca36c45f96666a55582cd46ea4b286aa396c463e7f689c9eddc940c638
Date: Wed, 18 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773873893
