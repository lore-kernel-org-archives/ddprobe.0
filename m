Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A571A9B3F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743376195; cv=none; b=D/XZJxJ/5kQFiPouGiJiW+PB3UxyuZfxcvX6+YAghW9EiHv6acU0KgJ/iB9S7yVWpnAxjpb+5BnCg+R9HBk8xf6aTPX30Z+lMrI/NFQUpnZ51CBLC5nkkVWkDUP5e2GQQZkMv2KKgU5THFFdCjQIqdgfvaaPM18GwGtB02j4Aa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743376195; c=relaxed/simple;
	bh=JHLK/DsPzfyaKKCw5OPrz9/RaF3FxM9mhCvwcMTTUXk=;
	h=To:Subject:From:Message-Id:Date; b=k451mJmUwx4HQSh9OmLzbPISfOs4V8+ar3OZpxHh1mfD1hpuCmc4gPKUEN9DCMeMxJYubrPZXvHn2o789H8aprcl1L4H7Bqjs9W74+7uMAyMmo8x/ad6N++CmrHk7A9EslQjQKgEdGDeTvfAEl3HGgfoM/pktPxl5bSPnFcqs68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu8a0UpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu8a0UpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD068C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743376193;
	bh=JHLK/DsPzfyaKKCw5OPrz9/RaF3FxM9mhCvwcMTTUXk=;
	h=To:Subject:From:Date:From;
	b=Wu8a0UpE2Y+iAmwap3KgcjSHFIDqMVDsUY1xhypgMteRtCzF7r/Td8IcYyeVITfMa
	 LlWkvBCa+R6psYbT2Pl86WeIzl6jKJDta7aHiwlkRGafV5kXqhwf2lB76Iw+rF96ad
	 62EfW4B4/nieXo25uoc3ox6uHXKpzKfKKEPpKaCv5i2kcIonn4St3QpJE+vNFFm+TB
	 cpFErGiolWtTgpBX7T3YXTTXhkuL4BY8LC46WXiSChzIYf3Vn+mB2rOQwUNvdX9TCg
	 MQbsaToDG444uPDAnAd8lKuj+At3+DMRJCAv50DIZ02++2R588TqKHFwpl1A/kflDS
	 SbjM68Cu/w74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D55C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337619358.18223.11318887318248110823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8b564cc8732bc212f591055fc25f914a41b0b2ae0a941d3fefa47b1bfa69f5
Date: Sun, 30 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743376193
