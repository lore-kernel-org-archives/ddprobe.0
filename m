Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554FA404BD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790844634; cv=none; b=a0x4CobeB/b9hpxdqEP4FAXAKrKK99b/o9FNV2Z2NI19pT0VxNSd9N9mf3096rwe+x7OiWgybMGgmghJ+nXNg7GBxMDLqc/j79ao9E58IUVXi32HPOXmdzFiiUmEqMh8NJmjso4UzeoEo6+qJT2C/I+18gV1fivH1tIVvZqHc3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790844634; c=relaxed/simple;
	bh=eBOTlX7rNrR4ADUssiB56M1Bl0hwiGpSMFstZsh8a+Q=;
	h=To:Subject:From:Message-Id:Date; b=QCdN5pTdqeX+NSl5+KFk/3uKm0kIwe1pFGicnjL5xkISUKVY4j4TvOpisFA5erpVnFsGSNVvH51uFoyvPwAs2fFouTTcJBDHmPKqEUsPyiXjPZY6O+IC9wURFQKripQzio5WIDH0ySd1qCOoEc/n81bqW1D9ukYSF+o0Kzcv9tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaKU/55Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaKU/55Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB291C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790844633;
	bh=eBOTlX7rNrR4ADUssiB56M1Bl0hwiGpSMFstZsh8a+Q=;
	h=To:Subject:From:Date:From;
	b=EaKU/55YmmQa3J3tmDEDCEC+fyzJfd03olb9WpKLY/09nZPgDO3oMwiOxCYb4u8By
	 Wao8XNI7JnxdOLeq03CS0utrnFkN20cmdKuJgcKupadcazBQUpBXhRs6XKbVlgXwK9
	 1BPcEm6c6G8oxOtF9CSHbXmjaKc8KgCSgfH2JrOClk4xo8wMf7U1kFcdAJAYNfm8BN
	 07CqDnFbhlnigfAUNKnHtphoZ78qavitbjLWAfrcg4GO5ZAUiyve0tkfR0tfVD+zw9
	 XIMiugcWBSWa92n1FbajSJdiE8jeYixcx+HG1Xqi7jXoevG2kagiCaWSv/lwxf+eRY
	 P8g24Ku7lr1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C8CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084463371.2103.13324724902381584126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e9be7dc2913f663be5da9bd33816779f15038a722aa712fb7db3bce92f08cf
Date: Thu, 01 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790844633
