Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2A134AC
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759298394; cv=none; b=Mm1g6AAEH7IKdXnTCVNmXhkKEvpD26ZEQaT30NICx8nyTVFY01rQEGfS2oPDVftHxEAvsfGztMtJ3TEU+Zpl0PvtxTc7AirG9B33/7WdAzSBFiglBsDk027sxpoC+KCUZ2FAS/0p7v0UR/HF64b55HoHmteTkL8WDsOvSWnDz2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759298394; c=relaxed/simple;
	bh=YEObAa8mAaCBFav6Ack2JJLhXHlEfXzZ3Ka7N4TiaQk=;
	h=To:Subject:From:Message-Id:Date; b=otjRxPekL7rQWuoct/gQ1imMKt5ET+nsOexayclF2myQCI7thHaxPc5hKBHbGmiDR4gMXXt8lhlWtACeG6HTNvySss0Uf1CQvWwdZq1BULEPtH3yRqtr3Sh6+mzszFvztw1a3Ms7UhQsDHuCuQs0a5Vvhlmkl/Gfa8ojxWcIoZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n00eFJAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n00eFJAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE1C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759298393;
	bh=YEObAa8mAaCBFav6Ack2JJLhXHlEfXzZ3Ka7N4TiaQk=;
	h=To:Subject:From:Date:From;
	b=n00eFJAxFPh1zdoQFAIIKoW5RofjbbkZV8ysMoKd9VUCnP775u20wDwti3zXhRTMv
	 Dfr8aXM1avCkmA8CHjZ1AkRZbEeMhSqQL1HuIbLoNsPyPdgL+iPzj2xEXQwqoaxcO1
	 r0L/+puPsPqLWQH1Z3RkrxSddURqfj3h0in5xoH1clsP6Po9kZKorUDQJkS8OgFH3R
	 TPdnSIm/ljS1GVxBE0h9g8Nh12yNcHoPzv5MGQNOIaet883nLcyft/6W5Eiq8VH87X
	 tEg7E4pNSd0BN8juQY5WdSqdDELe71yxgH5T8CnOiAyR+SV/xBxaA6fwBksbXUXtvp
	 KhpmfZqvvICkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9571ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929839359.7644.13591078384701726515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064e4b5d289e615aa650798c32e7f15e8185e54e42de208a95f65ddbab25266b
Date: Wed, 01 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759298393
