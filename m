Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983944A33E6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792086034; cv=none; b=p5Wz7DFGThFPaRQ70tUW9kqL4xCngCbrFp72uS+B+wSig/UYgSRxgjXXwl3ZiXfpNV2FnVT6130gZr02m1lKTOYfz6DrAyPr1/L4UqEy0zS+8EFqGR9fHEZFLV5yXSNfuflmDv7GItfhdWcLCb5bWseFChrbwFoC54n5kR6e6jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792086034; c=relaxed/simple;
	bh=uy20p0B1PTuAeKGSLAVne7M8Up7NarDhQvZjmjk++0Q=;
	h=To:Subject:From:Message-Id:Date; b=eGia+dZItpKTPVWSU18anCKzzZOlrEXgXvr5mUxBS24xQd+qzBxoQwPvN5JTk3KMsDu4Rl1rJchfjLhrHMScOf3GuWmdOAaWQ5dUNEOGPuLYg0ctX6CLrwl6KVU20CDuUwE+afD4SGtmPdkiwGFxh68yJ+OSJKXvH5X2tzuLRPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfJ+iXMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfJ+iXMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D63C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792086033;
	bh=uy20p0B1PTuAeKGSLAVne7M8Up7NarDhQvZjmjk++0Q=;
	h=To:Subject:From:Date:From;
	b=XfJ+iXMXaxV7EQ9TaChOGfCqFAzCvDidH9zPEu3fXJIEP1rlKkN3O9mkF0qpIXtPT
	 pOsuNgJgyntjww4xTVJX218nqPEPP9AA1Dbm2n+oIG3/nuUGMCftWhusL/8S51cfy6
	 0A6KIekyVPWL89/rzS/xhAo0IbJ369EcDw0cXFbr++ONPAU7MZ4Bmw89euAKIdS6Bs
	 Z60ZWFiu5xaVtfALZw3y4D4OE2LQUVcw7/sxYHr7m3n4kDBIFTjuNXf5nGFoou6ibK
	 AhL9lafzsgCMa9f/Ht3nYHAKP4PzhIZ9yRK1XEWRC2uiEBnlVFKQETltKL/iTA+mLn
	 CzdaPdAr29y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F2CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208603368.28314.5566949778532593121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1da07a477699a84f4f027141b711ad468c9b53c82ae99e6efb31605e673b6d
Date: Thu, 15 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792086033
