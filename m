Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9F3EB0EE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782468454; cv=none; b=juv3uIdhFbgWIM78paARQJog74wvO6pwf1m1EclNwt6G3v6KsrEX3f/ezbH6GwBLzMbcRH1erUSpXW6KJHdKO4HcBjyqPjG9IyGvb1BO+QxVPbh8nfj0YsYQQ8hYyYsjsvU2953wi8BUrhdViNai5riywJNM4EKE1gpf+TL0R4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782468454; c=relaxed/simple;
	bh=JmN1RpmQxI6SRljEudrfcp9equUea7KTDtSKZQ4JBJ4=;
	h=To:Subject:From:Message-Id:Date; b=eG1NzlP2UsItLlw3ce5y+ubpbbzBN2bzZbqXD3g5IL2dEvwVPCiJDhErsHPUgLJxs206DEVm3YdvoSaLclD8Drlv59Bgkuoi9gsSGZRXxOxQFvykcp5zSNF2A9d+5CiZOmaNzwYcPmEMFAgk0OjW9V3Ps8+EELubpMmOVZ3NQ3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB1BDKM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB1BDKM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6611C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782468453;
	bh=JmN1RpmQxI6SRljEudrfcp9equUea7KTDtSKZQ4JBJ4=;
	h=To:Subject:From:Date:From;
	b=kB1BDKM4f9znB0ml++IWA8CbQy8EeCv45hAgVZY3gPRGjv87OouBOL5ouqfoXJnfG
	 ggij5ptAt2WUdc3nIESWxbgDMQp/e/1gCp+w6pfluZj+1tt29PkK1hGUT9xpD35AHh
	 SLIUf65mJMadNcvs6hM7YjnbAWZKUuwVQVJR9pwVjXaSY0M8b2spKHF0hKx6NBtw7R
	 n5vtjXMgSx39SliNZccSYnXMCfLIpWDBQAL023PpFleFzdHQKbPJ8ubLouDBhNOiMn
	 T+SiYbWsdmjgC7J0ABWdv6XyfC+UCftOSBdTZPcSsdl91mRoP4DSeLFu5Ih7PTMYED
	 BSclANCxJwIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1874CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246845371.7975.2928227086490649197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cd0ae5d5451ee6d39f4fee1d66bde6af17f129eccfe9b619b5c3620b01df74
Date: Fri, 26 Jun 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782468453
