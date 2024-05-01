Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBD54F881
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714555943; cv=none; b=aIEm4fum3aEeJlh0BOXAFzjDZt36juPRqhwDQIXUb4SnmcYFNuKe5etxHKu+6tqD5DN+j7xfb2BZp6S9WykXzzSoMKSnh3Jt1ERl64tP7sJBMRPreAYMOSex0fPrSQASy9G7OuW3S9VGrS9N6ReUt4MoDCqEHos2zF3N7PZcrKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714555943; c=relaxed/simple;
	bh=jwxAMV0HaKb0etISv/8Gqb7vxBhI18M+3me4DBFEicI=;
	h=To:Subject:From:Message-Id:Date; b=CAeno6tU8dbxfXLuYu/XWAyYyY0SqoGiV1IZjp4g+XXOGN1Jhi5XRTVp5FCWygr6dON9A6ZGr0Fdgy95wENucCOa6Gyi7OS/WZxJM9RrAd8YL2ZPq+k6NjjBcv1Y4kEm85B5QXwVHNKPpGWRhOiMsvrRti6ofR5GoYUktktxFds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW51+8Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW51+8Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D96C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714555942;
	bh=jwxAMV0HaKb0etISv/8Gqb7vxBhI18M+3me4DBFEicI=;
	h=To:Subject:From:Date:From;
	b=nW51+8XbNwwkdJq4BF871qGZ57axo5H2MGFyi3C2g8onMpnkwmFgIOcoOR/DElLKZ
	 LmAFJyROktWPcC0K2GlkXjXpPk9WaPRMgz+zHaEfC6eT77xTpRZARwYw/LyuM1oTBK
	 sLMXlnUx4U6C3cxn0AXL8XBgh1LZb3wrv2p8EgFry89iRG+nhppC39JdrJQzXbnw7U
	 aeTZyKypJKiNuHp/KeDXCRnHi1H3MB0N/XAXd3AJm2Jjw0+wdFGldblXa+J4KjYrxj
	 C9N0ibK6BNyMYNytOI0ypWXdFi9JrcDXS48KN1tJL1+KEcbibvqJiKuc76Eq53RTCB
	 Vf+k7/rhN1SBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA66C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455594277.20855.5262503369085766397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175edbc26933b25f16785b8bc79f68c978c2ce75e47bcb2e491460e78e6355c4
Date: Wed, 01 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714555942
