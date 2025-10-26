Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1033F23373D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761457794; cv=none; b=puxY8BvpTYWUpCh9ofgMxv6opdWk5siWQ36zw+yqNCtgHQWnjEOf5RgRsKHia8MeFnrnoOfogw+Z38gWlMfGUDYaK26UfM5+bP4v8ByNQzOO8Xpqxl7Pf6Wcf/pjnD6g3VeEMUvLiUMyjPypRtRbCWzGzPGolWoVzOXmlPAzFOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761457794; c=relaxed/simple;
	bh=gijylJEEprg2w+27EwfaVkJm38lYKgzFA16Y692BsS0=;
	h=To:Subject:From:Message-Id:Date; b=fYmOoTWijkCDJ6LpRybG2308M4BtvoPhUq7ENQpVB8uKsTkf7w5X/dbQGPOW0Ut9Hmmf8wvzzyantu8hL8ikSOkU/31/TAPlSrYCb3wv2wT4JacW6CKXqI44E9KponV1IDbUkHcFCWFl7IcrELRc5p98QuQjB94ixM1RtssgkIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL4kRxiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL4kRxiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5157C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761457793;
	bh=gijylJEEprg2w+27EwfaVkJm38lYKgzFA16Y692BsS0=;
	h=To:Subject:From:Date:From;
	b=EL4kRxiCCw57mrGtfNSViLbmK3MKOJkWT+dBsRpwBo7xzv5fFYpb10FNjoypgVhud
	 7YcFlnqdrw6hYXUsK0A2j3jVPT4J88k1gDsOF04077LKIfNk4kTJoP6syr++NkFAIp
	 Rf9tbxcxZNpA+83dP+WwWuVbOYxhS5gS0b3d2+CmctFVSuw6j1Ct4ymf852zG7B0F+
	 pTSq/4+BVNSzzQXacN8FqPsiD8+FWzpdG4pCLcdePHusSBSWeXH9yv+Lrr9J75Ctj2
	 xTA2J6nXs2Ger+MKa4OJ809dkosAVnyz36pLsudXN5GxNdbcbinBv9GJBJmQenVBRe
	 Ocdy885WwaALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94708CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145779357.11874.13035770745719452821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd580ec5a8f49137defed1876986ab8d0e25f913fb4a1e0343896e7b373a668
Date: Sun, 26 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761457793
