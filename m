Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5DE3469E7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781803594; cv=none; b=qdsm9KFuT+fM2rE5SqZYJNBWx7RDGr1aV3LTOmvqx2youT6pCi4aUZ1ayiR/w5Bpzwqmh8ROAFzU91kpxItc1Nf+r1QKEw/ZJXCLsvQa1KMykVcvRS1o0TWXJ0BlI3ZEj+fAZB4/Ih4A4Vyy082yv3NKJcvVhrCCj1yULcfT1no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781803594; c=relaxed/simple;
	bh=4IDO2GozJMw+/AYzMthi4Fbu2Bx0oUNID8wYPAKm08E=;
	h=To:Subject:From:Message-Id:Date; b=XztRFKC0XmCH72Y26GuU2CkCODzUFudwFoFEJEVFT6i1bctvwWDd6SkubuEAW1C3i8t1fp6MyCgAZJDvFxbSUig8f0NnqaNB/9FFWzhxK+3kDM3rmRJ4Vb+84Q3btd7BQCADSHev4IHIGAah6qkodCqRqwV1WTFT56ESH3EE2Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDyqgyh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDyqgyh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54A0C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781803593;
	bh=4IDO2GozJMw+/AYzMthi4Fbu2Bx0oUNID8wYPAKm08E=;
	h=To:Subject:From:Date:From;
	b=vDyqgyh2v6TTFxfeN9X/zHJmDzb+EMEmQRQnkUERVYHamHRj97D9KPwrl/QbCmHzM
	 cRvXbTOuvft71UCXfWG2TmSV++HeBjBg4dNML6DRl2MQtLhXe2z+cfiQItkpYCzzww
	 Z5lUVuMQPlXzEKrihusBLliSsfOu4r7uZqpSwfKZGJwZoeZFQJR/Bqfr5PJ1qHvM4p
	 FXQwPdhutYFagQlAao2AyEJsbcJRJ2ehS/03iyVLox1kTtHBGq2hVokEoLBcKPzMTC
	 OpDL7oV4xvrfHJw8G0lpsi6SIj01Wm880HQmg4WjVKoVcK8ux9tXJHrWsaawEZH+5f
	 5yFCaUAi8+14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64BCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180359369.3821.16355943072884292777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40e1ee32c4e2640a7676678c3067c15cb67183c9a7d7bcc6931dbc675438eaf
Date: Thu, 18 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781803593
