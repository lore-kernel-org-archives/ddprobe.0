Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334052264AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781312194; cv=none; b=n9Nv6Z1UDjLarqYL4tZK6wgypsReJOko2ptdMCNMiMR1epT640Yy3Fsoi5zALiRntAOYI5uyhMA0s705WwoCKaYRDryvsuXWPidz1RN0bthwJgHVMiH8qiFS9e119Di+FhEXcLTliRyqIeBtUnPQJyqk7L7l+sQwb6NlU+tA6G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781312194; c=relaxed/simple;
	bh=fN99F5SkdpK96oeIggKuxQZRu3lSDBVS4Cv14amyd14=;
	h=To:Subject:From:Message-Id:Date; b=vBZFsZr16tw7D/pMx0p/ouibyLYASCejhiY2nkUYnb728vAfyUPWWti7S2ZS3B9zd8OQ0HNFqI9MgIvmT1EQ2rk6A5XvGFRw0TJbRD1Ek2uRRrz4mSXsNZf8AO6emqfnbofak94MAU9Avr9RxGfZQbkH097LiyuLqM3fLfq2jng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sywr/442; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sywr/442"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF660C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781312193;
	bh=fN99F5SkdpK96oeIggKuxQZRu3lSDBVS4Cv14amyd14=;
	h=To:Subject:From:Date:From;
	b=sywr/442xdpqg7XTMlwYiGRLQ3me6ruO8Vtx3VE7npuBeCO1D3vtnLL0EulSsEHgM
	 u7J8p+hIeNlhW92jY4clAp1jjhpdTXjON1cGhsaIvVRJUPYvSXAVi4N5Pgqqi557l4
	 Eoz+OwKsv1UtepTu7Quy8mgqH4XMTdZ14dKANhu1/SdJXbY/kLqMy5BtLAZq+4aaHg
	 cM4yqYMQckCknSvDhTMkYzr0oSZAo600erQPMDNswbJ4wWX2PyozdZvrMOneSB+RaE
	 h8xTgEFT6aGuuaUDCAioRQIzAFR06KQbOpgWoamSuMsLHRiF+tardewlUtmC4BV/it
	 tZ4g6+aNf3ukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79A0CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131219367.2349.7235694341141293276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afc136ff0a81fbe1234881f6e3dbedc91937dab3bc431a1e82d5b2a1d31a462
Date: Sat, 13 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781312193
