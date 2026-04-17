Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D585C2D2397
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776440253; cv=none; b=NMbR8fGl/xb0DSjkMNC5Hp3++dtfoAVeyrM+nSEwnUN1qfNhCBjDFA+zmwr4PXLihZ7bpntMIAvaX+8ETFVoculeW+TJXXkZKw3NRYXDa9UIgqB/ISgAkaHIddOJEv56I9f+mJAeTYNQkfPLuwiatT4V7NHaBuUuggC8KqgIe7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776440253; c=relaxed/simple;
	bh=r0i7aWsGZsOKh6DzD2/apnX1RLPKm39DGqajmX6PRqw=;
	h=To:Subject:From:Message-Id:Date; b=fuiJr4gKXL0RrWP5qesCRAEsG0SzAWapahPs52IJlPiOsiTRjtewVcRL0SsE/OoSw89MYLCrXojdd7Qy5OYkDsCy6LqehYYJCcOChTPtCDphnX4I/is7evCT5gXieTtMVgpTZ8YESnu3Rkg6sUyohDMWDG1CyOkRWLIPJBzOAYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieRbVuxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieRbVuxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B7C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776440253;
	bh=r0i7aWsGZsOKh6DzD2/apnX1RLPKm39DGqajmX6PRqw=;
	h=To:Subject:From:Date:From;
	b=ieRbVuxqNFlQW+nXtr0WbmTGoF+27PBCpNq/7K3x7HQJL4JtSt1yjRQMfsFdNWQM4
	 nD7ctoNODCLvMCe5cB818ifMON9ssE57P/pyoLnIVflMCOy6uupRVt7KHSNrJ/IHHN
	 CLUchj6LDL51rseVf5tzi35RvqwBZWIHi1inklBxdmTlmDfC5EfvWtWLsFLI+/R5Wu
	 ghwUdu0bZfyY3SCZXmU3PtzqpxZaw7jhZb7ZODnU89n0tIWUScAr2dWh4N9zqt7qcw
	 oZqWRvkndigrWoyKPYINdLSDbor4ToTIaym+TdvMOOS/S4Bvn0abN3NTXh/tdb8Kvl
	 ZC8kJq3qXaBfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B78F436B4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644025368.22926.14267585937280599552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7cba88028e5290d1a6919191c54a98943e1a93670ee2d1aa4033600237d57ad
Date: Fri, 17 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776440253
