Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8853B4C80
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769117634; cv=none; b=lFRgroLhw1Cz/+wSafkECrvN6mV/XP+p2f8Kp/dXvKCVO98T4zmeM79BPdUJDUo71Z4TM9GOK3PwP1j+3Gll9r47olvi3Lq9Wo5YV7Q/Q3EUY5fr3b2TccjeOgyZJRwoOjeZToYLMgKYjHFtMOD4PHtUXztHnvzRODwSepCDjSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769117634; c=relaxed/simple;
	bh=rGrcwUmGYrt2MnZobhZaIfK98r+kg0ki+AbaAF3JpcU=;
	h=To:Subject:From:Message-Id:Date; b=dhKnymqqelLApEqP6Tl3FgEIBextlPY8QluneQmNWMYPvoappu/0VyoovhShtK+rnNyq5efT0yeAq8r6WYCKEkU7+LipvGD/EyobSCwSfSjaWIpGU7o27Jv5Xlu4GuJ44vf97U708RDRRLZHfKC0/HoL3IWgVvxfm+1hNEHcQ0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyWUPhZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyWUPhZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECDC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769117633;
	bh=rGrcwUmGYrt2MnZobhZaIfK98r+kg0ki+AbaAF3JpcU=;
	h=To:Subject:From:Date:From;
	b=JyWUPhZyU67AKB5xZO7nNuS48ZWgbfvN4+q4y3Ra6eJl/+TxTSRGJwFHOjSqivskb
	 /22cMHdrCxOpWxQOzO2rxbcdT7X2IChyt6UQBjaWJmxssE84M4CJRU7XxupdMe7VkP
	 95JAeNThR7if9CxiZJCjbRg1T/mWTT+CZty2kTQxl9GssKjVIMMNm1+K2Y1AQCAKBj
	 BxbiCrgKLgdnKmOhScDSUCaVINLna3awj/KknTo+jNBsHICKmIKFQiLBYrnOpIXYWL
	 zli2Y9FnbM4Hfl8AhD7D1SwKowvUaYj577Nm1R9J9woRNMIQ0jJWUHnoadpV2CxZ0W
	 twS503xWywJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BDD6CFA4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911763358.12740.14737113332986665629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a76cc9063798d9ef01ea2cedbc5f502d73d9d0490a6ea285028de2b9f25a558
Date: Thu, 22 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769117633
