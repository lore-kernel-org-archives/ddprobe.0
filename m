Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3898F6B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749263994; cv=none; b=K4uSolDfjWd+uIfbRyIx3fM7GTZETEW14ewrCCixnuAQ6SfIyDnSjO0wdDBsP4Hw2uHjaDeRZtuWKcCRHw0uJM2ZcF7MmAD9ThSgEEz1YehVmVag97Y7YZM2oYqSi6knP6qhJdybb9lsJhCEOD6ZR/X83oCOiXiFYFxIUsD9XPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749263994; c=relaxed/simple;
	bh=57TMG+cMCh+O/b9TC3TdGCeJKVxnfiPIYRCCO1KPWpQ=;
	h=To:Subject:From:Message-Id:Date; b=Y0jUvOEifVCVdtS/VyFzteJbR7pmglNJjmBvt4m2/PDA6UChvjpa608l23xJ0NXluQbo79NcbkIumY7v7x2xuzo/Y6q6seH/2Ks082+45w/DNqWeCNI+vH3eTFxqHakgUpBB8JgnJKCBIhD1rpxaOv++TlVtxcbxKC3NM2w20Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkSwb6AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkSwb6AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749263993;
	bh=57TMG+cMCh+O/b9TC3TdGCeJKVxnfiPIYRCCO1KPWpQ=;
	h=To:Subject:From:Date:From;
	b=tkSwb6AMOLsOWRF/KS3C9ESiomDkkPgzcapwHNDYR1xiGtqvmP/VcgjVzU8Wrrmoj
	 IJeblwdTWLdHjA+e+jOVRCrB/cx/lq3G8mOHmoNTv1wQvq3isH5jKM3TXga6W1Dfvv
	 UQhWZkCguJ/cB2SeDc678GfnLRl3WTPVDph2ASwQntPfHGfUYgJhqtuRXN3wQHmaPZ
	 vi7LTFGYxVfTWg9xe9TeIftpYjnARncnDMcU0nurR64iY18/l8kf69+kKH+oQcpYep
	 1n3ER1kAPX5bhzl3UfKumnd8HJh6t1FGrDsvECsGlJwbUULQeA4qULd9Lwx27cC4kz
	 pCUcUoVMP5OHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCC5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926399358.13407.5462343741980852754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2724b321f5da5c88495909dab983def1043b8447a55036599ec73991166e8c03
Date: Sat, 07 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749263993
