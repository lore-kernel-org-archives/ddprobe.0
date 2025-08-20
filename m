Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31847202F93
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755722994; cv=none; b=A9jUc0/KTCe9fkt79QYH20+zU8YrrgRyVRPcPxUPA7vihNag+Yjg6R80jenhSVVKZcD1w9qty0Ux0lbV0ZoToYNdT/6KGiKxOOAAdX/zcG3d88FxMl6ASgTpQlkkx5ZBp3XNOd5QRSDoAIwerrV+PsAflyYZNwL1Mz8mr1b1+Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755722994; c=relaxed/simple;
	bh=vhrrZ5PuMaBIqu7zztAg6zEcXbg305UQxF/tRwxRBT4=;
	h=To:Subject:From:Message-Id:Date; b=L3KCeiMhzIqN6l6o5fAPpciFL80RGV8ytv5bNpcnyhFLE4WxuPcmbEb0jqi74coox95ZOoEqoHnTaPnjhaavChvCntsbkUCl60aUr/LMv/sPmePEzoMCnJjtWxmTxzDsDePPxNv5wRt/ZZeaHVPnkSVK/30bubCiDJ2AsxW7Cak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr2YzVwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr2YzVwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32DCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755722993;
	bh=vhrrZ5PuMaBIqu7zztAg6zEcXbg305UQxF/tRwxRBT4=;
	h=To:Subject:From:Date:From;
	b=Sr2YzVwi90JYAi/Qe3dVLF+t/AhIs/t1ShPS5vYieuaccm8TIdFYhj5HLH2AA6Exh
	 BSAyuI+twnJWGPETt1iMB3Z+XrOIu52Pc/EGx9LkcfYyz4O67DL2OYYW7tjEeUiNOg
	 gipc8yR30j0r1Z1j65BsHB7wReqi/NXSADu971z/dGoNZkJluj74a/ijrzYnHyrciZ
	 SVHicqdyONLuxuiZxeT9UpgpLgKEXvwUgVcosAME8qNYuNEf6Q9dyZIQDxxsYsoRxc
	 2KVGhq6WdbTMlzRwF9zqsUxHOOlGfbpVf6A2WmE+iaKGXPXkbnHvNHVpYbELIZiVmu
	 m9YUNtQTnQafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DADACA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572299363.28135.8517703189724435674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f85da58869d209202a71f04e03c6083c56f6171bc1338d7b4fc6330cb65c186
Date: Wed, 20 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755722993
