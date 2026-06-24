Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5B1AAE17
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782326854; cv=none; b=KauucMzb16/1cbPAh+qzRo8RXgCJCzD4KMC7NBZlGYSDWgJIjwSGqiB76n5yGdbDh4NiNWUu99n8wKP1VKx+Yoyz9c+85+r7L8OXpJBzP6tehAfWPfVc6ZCx3XEwiaRgaWvcWKcN2ZXAMsoqKkIcSlNRlVKzsDtLKoulUQiHoac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782326854; c=relaxed/simple;
	bh=UZ+uYea/V4XVIfuOF1YwzzkYRzcJuSur1Tqo0Ov1U1k=;
	h=To:Subject:From:Message-Id:Date; b=qO2EcmOWADN6YcUKQcW3RmaqgXIF5HyBHS8aMI94OmDEm5irY3Mj2/CJDIOx0aRT1u8HbOw6uEjalDvJToxT/QMdEJW5CoH+TICJFlpaWivwYXPP6GsWh2ENGL/O6agcuihSFEs+md1+M4AcYDwFJhQtsCSrXRWLOAXxW8hZdr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8fLSEYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8fLSEYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD59EC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782326853;
	bh=UZ+uYea/V4XVIfuOF1YwzzkYRzcJuSur1Tqo0Ov1U1k=;
	h=To:Subject:From:Date:From;
	b=g8fLSEYY2VA56ZgeNpVn5vkX3tv1JhWR8C4IwUzR9XDG9+bBIL30wPlGdnILqACE5
	 Ic30fJ20v6bnKC+I1baZai0XLaB+4gpxDt226zhDh2d8B1zi+0Mr/rWd5W4Bdn936Q
	 0ZpkviJb2+7vSLU+YOP0tfaim8eSEY+NjSiEFuKXTjHKWf2Bsdy2Nqp0fii/RFfqSz
	 Uwkoqyvav3vqE0KLroRf2H6Mykwc8kmZOiPdhP36jTx7RT1YCEJ/di+M9Dh2jzdTpB
	 CEPZUQnEsQkc4R2JAC8rwmtF/oBM5PTf89vgf1Udr0xPGzHVy2CFBEDzv32lThYm62
	 jJvddrCWaxPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0B8CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232685375.15926.8763349955525003060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b63b8d6ae08d50098477362858f8ac29e9f6776451e3a017e681c53c9015a9c
Date: Wed, 24 Jun 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782326853
