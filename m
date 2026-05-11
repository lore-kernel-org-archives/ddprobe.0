Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9217B3BD228
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778487634; cv=none; b=k7ERIcUSO08p9FCqcEi1OHgKImOtA4dc18z+zkp7F4JJiUMfWFio1mfQMsHY00LVjPAcVLmPqd4iAgga7c+UGDFCHVYuysqpxTpSieeWF0tsaBr5sPmccDhF6G2T+nBlI4QqmAWvTesLsfkILtF6elMgFJ7uXSux8epBmoBU1YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778487634; c=relaxed/simple;
	bh=EMAzB2IzC6RsSm1pIXWR1TyskCFwq52nBy7uxJG3Nlo=;
	h=To:Subject:From:Message-Id:Date; b=qRSiGRnJk32dc/YkFz5+4qdNTMmNY3asTJPqSGNOENtabDMjQIY7eYetNOgk4KGFEEmSh07ODMrDH75vIJRQwC6RspniKydz/vgCzeDO/2EMd1vQKKq6GFUNSwrdmR2sxXdZUhhn89da70EyUiDBLuQdmsdERw/KAd4F/DTN1Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzC3nToX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzC3nToX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5642C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778487633;
	bh=EMAzB2IzC6RsSm1pIXWR1TyskCFwq52nBy7uxJG3Nlo=;
	h=To:Subject:From:Date:From;
	b=YzC3nToXRqqUvaPc5dq7P2p65oaUy8L/gwtpY40zQm8GGCmzqFsThRWB6qqicoHBq
	 qP8Dpuuy5iyYFI25PULIJur0PJOX+RAkVrK8/qFAi71SqNng++q21OAcKQ5XUB9eOz
	 x5838RHkgKtNd/NV0+LQ1EEmBE4NvZInczFMlFEBWZoNi1yq6ev4ZbslDVFZjHLYmL
	 TAuVF1/Vf3FnQJeNMDqbnbDHdD4I0b9gQoPCvqriiLf45GEWKH2CwbN2Xf0v313EFs
	 OOtjZZ9R/FzPFwDbmXRaB9gf7+TQ0T5LXZISWlauzxJ7XvJRYtMzg+xus1SelXCjF0
	 rbkRLmWgElHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6913CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848763373.32694.13304349000869283129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb507a599d769a70676b946b5dcda3f44b6a8961bf8fc44fe3f706a09a6e71d
Date: Mon, 11 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778487633
