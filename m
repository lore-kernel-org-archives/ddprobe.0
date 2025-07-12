Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E4F8472
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752341395; cv=none; b=sF9nS2m49XSAYOKzE10yFIkvQ+Tw07T0HMQoqdspE26xzmTdc0IV/gpwLJa4Me+l2UJ/pJ060J0EsNVwvEDGsnGOXP4gQcWABfWgQctUtoM8SDiMzMpye+P0cet5MBby/FWQ6w6yGAMWCc6HleJnB+Siq1/xcOKR+5JBWDagw5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752341395; c=relaxed/simple;
	bh=Lm2pi5wOblMb+n5tDOlqwXWXvzVdeHDhro6MhC1k/nU=;
	h=To:Subject:From:Message-Id:Date; b=IHy6FXOhiW655yS5M/xskxiOElftruOozGdaFCO66L5/GGe5Bnr+ejY9KTKfFZ/GpnXhzcb4wvbhpBXSgk8l9orkJ7pVqPCbUzpkTNYVR6sTzkrH8es9gkzb9eoS8v94Q9iu2KrWABeM2J6nG/NDwUudPcqLCCCTVM8A0voI1LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa9nbtSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa9nbtSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A4AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752341394;
	bh=Lm2pi5wOblMb+n5tDOlqwXWXvzVdeHDhro6MhC1k/nU=;
	h=To:Subject:From:Date:From;
	b=sa9nbtSxG/105z6P+LiJts9loshIgB+EzTRccifUqAJo1mRuf7GuiR/iNfg9hKgvL
	 iEOxdKMXonGn1sbjfmWqIe9yXDQ7mLJR3rzX1Wr2nTEHEP0p+Vc+ag/zjO6UpYSoay
	 ZPEilA68oeJJwpSt9CE5TajPMeUD3ydtdvAJUwtUy7w135Ovwu/IkZp75nVu2TPREt
	 kN4VxboDeHa3QPLzhrbs0z26bs/jay4ZQqQ5iyi1t/0CR1hng6q7N32N9/PvkHqvHB
	 OBECOHlBOS1gSkuqjSJ2SbiesML7pEMoXCG5K+6VbrYSMc0NngFOukrQz0akkKP6SJ
	 UFXaUUxeUB3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91396C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234139357.10402.16359379684690716136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3007d08f0cd7ac310d4c29e92066dfe668272418c1e9406de956de6110c72080
Date: Sat, 12 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752341393
