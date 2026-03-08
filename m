Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2466A218821
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772985894; cv=none; b=WEpIUbUGVljecsovWY1JmpBoM9ngiwavRt58QyyTQNPWOcKKwSs3qAW5xNh9ngOTgrZ/eLSI5sQZKOWiNL6KRGtQy8EZJYzb9FihmUKGSDBKRmDceTcKkgQjrLhf71mVrolLiNdizRJgOP2Z8jLITb56di62DdF7yMuaDAyIgyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772985894; c=relaxed/simple;
	bh=4ZZUnB0UWCh6mHNi8dLlcOlaxR4vvKhA7TM44i2Ek0Q=;
	h=To:Subject:From:Message-Id:Date; b=p5HgpFL2K0ZvOkdBZdJ2Prg1eH3v7m7CIzGuGplcq7Lksko+HRg6rrHf2xhL3k7+9beEbbHuNDCu8njD6TOY2zFwXLm1QkhqiJsngfT1vLiYLOGtPoAzN+h/KPr5K2PRLQpdfo+KXkN7axL6rtPv9sAatsBN4tN3K+TXTft/AWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEiWhfot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEiWhfot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772985893;
	bh=4ZZUnB0UWCh6mHNi8dLlcOlaxR4vvKhA7TM44i2Ek0Q=;
	h=To:Subject:From:Date:From;
	b=UEiWhfotSeCYhjTVcxaRUDMk/PhW1T2iSD32HQ2e0umXl2XfqxHK+sX6BBrB2PNaL
	 fl0TTGZ3AJfHdAjQXQljZRgKQxTuiH2SoDLpxJmUPRLSoMr0KbeOpEl7KBaG9BeJvk
	 Q02yfbaZyMrW6fNs6QvMCGpBTmvq2RgQtt8RxGZKW3kmyrvG/U8siRGcTmraF0DdG4
	 kPOn6jihse2qFBvNZeAHw/64UhEDFEvaeAMEJHXkuG7ny19gnseG6l2XnYDFsZ7Onc
	 8fS/m4zFxLialGtgE8plVUGBR3pXQ8jM9ozJRK1NGaktY92s4QtJAqM15P2p1IM4fV
	 mIHQ+oYocoIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C76EA8531
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298589358.3759.3531022605940021043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0075c0aee9ac509c9b55be7c634de6570590451fc5e5611275a3617678e5cf2c
Date: Sun, 08 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772985893
