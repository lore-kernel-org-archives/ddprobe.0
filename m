Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3CA302CBA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770405834; cv=none; b=dec7x1q/CjMEWvv2O16Ib103Xqzgu/xSnG6elbNql0p0MrjKMniupNsHMduN7PtxfJMZFLJfdymnUXEgpD11lIL6Bg1cbgjxIre18fexGc/NRf0Q1lZ7Ark0UibO+GB5em2Sbw/pWyE9R/83GG61C0xHSZzzE6NP7BpMnF2RXkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770405834; c=relaxed/simple;
	bh=pIKlwMiy6V4DyBRyh2ED1eEVZ0180PmiG5a10xa7Reg=;
	h=To:Subject:From:Message-Id:Date; b=PMrR44y6DSev6Owm/3kKHqJ37IB4GPUyyZOcWZVJIl5SZx+KBA3KkOizr4vgb1go8SBpigYOTbz4txhsgUDoWxVOQ+S+2txNH336H0Bq+bXroL3gByn4TCi/Jf51xltFW1EKnuBC4uTg9vKp6xyQ6IwSl61SsJm9xJ/B1vkCE6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XI0JU2cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XI0JU2cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6825C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770405833;
	bh=pIKlwMiy6V4DyBRyh2ED1eEVZ0180PmiG5a10xa7Reg=;
	h=To:Subject:From:Date:From;
	b=XI0JU2cnKoij8RAZ29sckkagISVHqNxS65rf8wuvfjG6hCcMHPxWwbGzzoBIzFvvF
	 XDk70FHRzXQy1sK3ddI05NN0u/yIiEADcSdo+YmX7Vx1cHVv5a3jksP/iTEcH4W75N
	 sidRvvnf1UZ1k0XTG2Q2G5/Igmg3oA8vCqfnZcRoCEsaRm/GdOJHeJOBucTsstcg3Y
	 Rj55YGd375Lfq5TPtjs+i4Lg9ltxeWXAOSNFRUKgOcbQ+1NgbFmQgb6hT8y3vWaM1X
	 PdchUO3J6h/FLN//WsyEfq72RNiLgvH8yBlb3nrG+IBFFpLC9mgQMgbSlj1L40qlTE
	 e4Y8AQDtg2s8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D29EE6B4C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040583360.22284.2970234996322295132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a618effeb050ac0b17f3b58c34107b89da40832cd6d22a2594836a91e099f7
Date: Fri, 06 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770405833
