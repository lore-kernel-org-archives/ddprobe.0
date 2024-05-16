Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742154A11
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715899345; cv=none; b=VGjnuhmBDD159cZgh9/t1WRdbG1cdgPf1xCxA5+/2QoJ7oesSNGrM+SY7GYv+xNVcakfOrfNg+sv9rk6Uj01unK8wDad3uZwhBIcU2cdGQnv3zrQFgMKTQ1bckYCi4CaLwKC26HYTBBBbvn+8w3UJHD1D4Ru05gb4czm7g+Bh0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715899345; c=relaxed/simple;
	bh=N9vR8PaUVCw23TXHoR8vwrbPMpJLp20UpTT83IKuLUE=;
	h=To:Subject:From:Message-Id:Date; b=JDM/qqcSHzcDuhfYvuQfX/Xv2gBqB8NxqzxRaddDPsKg1M7O++zuX+Q66a3RnPLX5bzXGV1q7fs4KY/NGIKMVDiapeLzpUmtS6SN1EmgjMFlmMY5I6S32fbKYXFlEsdVCFxB6Mkrb6mZ/8ermn+mDtAY5kuKg6jy5HucGe9PeAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi4yNybd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi4yNybd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC15C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715899342;
	bh=N9vR8PaUVCw23TXHoR8vwrbPMpJLp20UpTT83IKuLUE=;
	h=To:Subject:From:Date:From;
	b=Wi4yNybdiPDVwB1XijxuPsIR5S+qWp9sjy9wF1zQWmgIHR4J8DAxJjfFKVpPLxBUM
	 wWTp6HvhJFrgEuNDCSci87UmvEzs4z7FRhg51f2knrvl9qOADDLapIPRmqY3H9Qs6t
	 OxRq6AAYlZy6IqUTaVT2SBGvBqCiPn8BQ9qsmC+goftxt59xEbP50djntElmDnEq5n
	 TFIkeDe9TbFeYqVflT9Rn5CxYUj0L+RF0mmTy8qI64+SFRKfRHC0iTN19xLRpoAwXJ
	 d5jJyAyaTUTem9zRCQ4n0P+E1B+1YCq4mp/fMdXidSQ9P1qO0lVr6sb3E32uBcIuNt
	 dk1X7ZOb4NpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4485C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589934276.23098.17515448886823836278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc9c7fb01bee2a2258779eed836f1f9db1831041f2be2bb7dafd45287c97c4f
Date: Thu, 16 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715899342
