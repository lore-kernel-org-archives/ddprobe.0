Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE391428F4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771823694; cv=none; b=l+TO3FWflCUvCDCKOmrkkk4yn9Q4eJN/+gyV9EaAPCWSLVYpfDfc44OoDHVL5M3JDjpws6D4Q6d+CPPOH3ds2yedIl1mywH4KBWdR7wkxx/JnblMM0TtWl2xGhDQf3Pa/n+nRnIjo2jRQ4QRcM7MNp2EwR/bS/wMq9CvPmMoJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771823694; c=relaxed/simple;
	bh=A/ruIXqKy9QOAF278P4IztBfyO7AWKMxHNNTggX7VGk=;
	h=To:Subject:From:Message-Id:Date; b=WnqAOpSYNFhG7natmoVe0tLHVU7B6yr33qahvhtegvAN4+yWcfg+JD3KTX/U8Q493qPX/OrdLpjEWtgmbcTNyxCF42jKbF7XtMZ8VcrwLNWlCfzVGVmttsu8jUoBOu72GXXpriG7M9G7XgUrVNSlwaQHjwZamxrAYJG1TcHvq+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uc8a9vib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uc8a9vib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E38C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771823693;
	bh=A/ruIXqKy9QOAF278P4IztBfyO7AWKMxHNNTggX7VGk=;
	h=To:Subject:From:Date:From;
	b=uc8a9vib20wilJTyAG58vqylNsGnZrtHSqxSGlwhetI/JboBjje2NdftGT2BdoMGC
	 l55YgDni0D3jBmbEwBaMSiFVpsvSO7M+A06aWH6HYKr2Wfx+JxXhjDgSXgy2X/kTfA
	 W6skY8vBuDh7r3y/2JGQ09Uykb5aWCpMRkbKGn/kLidFwYxEHyp60iHyZ3Zekh/TT9
	 OS9oN/6UupB5DYr00mHZ08duSfWSNqHkatJDZG8m2RaktWEHxLRffJBfnj6Nn+mFU+
	 KzDd38c+p7aW8nowWUrmwu+6rKI8NrAaC1Ib+2i4qGABqs40jYP2BY0qVvxGNfBbHH
	 PBRlueQJvPF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CECEF5864
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182369358.4672.1884085173042440748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95e3fea1d896a7be71649e0c5406a79405b561baad7fb6b82020b168a89e637
Date: Mon, 23 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771823693
