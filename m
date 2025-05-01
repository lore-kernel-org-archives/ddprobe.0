Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38935194080
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746071394; cv=none; b=H0vU2j/AvwNRnKTTzNxkKBvssE8QBbJ02hB81Zj0JBBcdQtybdKWug+PhenvrTtlaNQNCrahZ7AF3a0+A8BVpYg4ebgsIvK3UX0TTkzh2NnzqZJMWPyHbp+gyyz8i8OjYqAOIkZq2Pxi8PoAioncdUvUybW8Onj/ZD5XRBWaD0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746071394; c=relaxed/simple;
	bh=9NfJ5riCMgur7SQOgm2+tJ5msLS5k0G34bIci0vp1VQ=;
	h=To:Subject:From:Message-Id:Date; b=axIB83G2mhUDCCh6rq3dQZYkulBNcOop8t9dsgQ10TTDnheJ180JO+6SexDIX9PPjfGG9V3/0r0hwwy5a9wlrvIRvNcRmiBAyW+onZt3dWZmAnkrWABsVljpFl6vy5WcE2BWAzDk+SFw4R5GTBmBa0HSLRw+LdJ35MfUHmQxsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2oEQW6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2oEQW6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A762DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746071393;
	bh=9NfJ5riCMgur7SQOgm2+tJ5msLS5k0G34bIci0vp1VQ=;
	h=To:Subject:From:Date:From;
	b=u2oEQW6yLwfuz0YHe2hzZNgFPpW7cvVq++In+EndsSUBglTiVUe8icjLRQ7h09Uh0
	 r7IEVpE7YeABuduLCVumbodPV1TI9GGo5yNRaWdtwUtsPI77LeHUteZy/iyMQN6fi3
	 wPVph6e/MB5ffTuMVPYcPW4Dt6aYkZ4l4Gs5tvXZOKFhjpgSoBK5F849RA+apOhK7x
	 h0HF8YCyEYNda3GnCupRQaBChTvR+mmtqEUj4uKQ7ZtN5PHeiSTI47WzZ6ckhP1Xz/
	 Nbo4EXIzgzESJFRFbaye3Qs5wVvny27HNy3lsprtEN0IOoIhhb6TkRHfMB86Pk53KR
	 PnLYDMREfVhog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468AC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607139357.7035.16241195662188565028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e3ecbba13225ae5a780ca04b9dbbde237b754f3d699d42c9a16be9b2b1105c
Date: Thu, 01 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746071393
