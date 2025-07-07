Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357241BD9F0
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882994; cv=none; b=l0qbFiWesZP8rW/TmVvT/9Lq8GWU5v9Cyxrbw3Ib+nLZdhDftAHVNoacqhrUfkJPLRVXLCYvC7cZNFcA8N9x6fSvTfow2lU5UjffBAqeUeX/OXnksleu9QCCSFqfbOwUkzbs6A9UN5FLVXetHLMVirI+8yk7prlV7U2gn02xN48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882994; c=relaxed/simple;
	bh=uWXKxPtl11y/qUZfpuaPEOQL1yujqKIByIrqa8HmfE0=;
	h=To:Subject:From:Message-Id:Date; b=EaC5w/5lu98jN9zwTAieLNAx01Wxsl40e/fbpgr2JRvCZTyeq9+VWcy+1Oa5LqgSOhJ15xVZVfUx44Ni+Y7b9+dkjyu30348qC7VzeJcJeavHuqcjLvdaG01YHscX06tQCrktyrwCAwLxNPDvHftFENeFarEw8O8Jruy24CKbDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1RQvPsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1RQvPsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4439C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751882993;
	bh=uWXKxPtl11y/qUZfpuaPEOQL1yujqKIByIrqa8HmfE0=;
	h=To:Subject:From:Date:From;
	b=B1RQvPsxNaB4QiQz2fDpW6iwNfE4rEQZh5585cixB/v0XknALVcn9Y+tDuooSAznw
	 pyS+zsyXJAwzar6VHfwLIcn0rAuaHzoBKfetYHM0ZJ+Ynrb+m9jOqKmFQHHWnfg/lZ
	 cv0P0cSqLdDTBBb7UII1yROZDKlKsMOMGgCzP1ETg2MKCBBQ5z5Tt8EFBPnkB0JrlH
	 hh5EssfDumLQ1lkQlYr5tjO92j5dpEx16Hz5u5OyxwB5bnqZmKHTQ6H28iWBIBtlGY
	 KtX9gE2fuTc5xRLaLEbSDsLTNd8K47nKfc8hWCeBFK11IDiJBCHW4FHpdC+zixnXHj
	 0s5EN1SWs70bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9290FC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188299359.8977.12196309362579850355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee667033e4f042ad26afdc02bcbdca865fe7aa724be2f7bd7aa2469465009735
Date: Mon, 07 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751882993
