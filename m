Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E33D2C031B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763589714; cv=none; b=g0KoxNOIhjmTe7BaYqrpSrmt1L71PsI0dKcP6DyeDnKeRnGeju5X9+Jx4KySBdPWYA0F3XtAdYaaC5J3yvvSu5khTDRaHo3KfZz9gJ2+oLgAj6s3JTZxoxn3LmCXAj8KV01bLyH0WhnI03RRi8BLZlt5fNzOOYBwy7eTx2U83Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763589714; c=relaxed/simple;
	bh=7z+os58xI68M/cRcQoWymycnIgrsEDiopAOTz2Ay/Tk=;
	h=To:Subject:From:Message-Id:Date; b=FeQqHPegvxODUa4wy2yJAU5Qdf412Z9QxSHCp9ItZjkUx1RNBOoqrqls883WtfZnMSpWb0xHfqkgS3NOeBrSZPx98ivZDxlIY0qminebnvyGq7uAbP0nFkDmvI/5w1spUS2RxTQ9UHUrSazyBTPHoRBE6l3U8zW/cZz9xj1ks14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTturMUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTturMUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA87C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763589713;
	bh=7z+os58xI68M/cRcQoWymycnIgrsEDiopAOTz2Ay/Tk=;
	h=To:Subject:From:Date:From;
	b=GTturMUavKJ/bnlNgsNBFgbJAnvzR1vmjL56QmtQtK9ugMXUkmLnZJLkxUa9sa4cD
	 79SOx6JP9KCcikhQR4yj5upUoWovYrzKwd9UmmbwJelBGXnZkdrN9aqW9X4c2X/ZvY
	 qENjc7D/cuBOVX+XxDl2XYkVX7vJGeESV5nWHh71Qca4sJA6ftWBoYLGfxw7gmJu9q
	 gH5oWBNDVRSJ+xqbhfvn98lR9fVdt5+Qc9k3zLtcVUcDkRb9T75PRg6hHEOHOkGBRr
	 /tCJWjdrVtJPoYAbE1n/Fkz914JT3Ztidd8OHo+pXfM7webJxfr7nT27jcqB38ppqZ
	 +Re0O0zdPtsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663CCF6481
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358971358.30047.561324803357361057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca38cf205efd8805694c191c0ad182094ab51d8b0715581a53204a3858812740
Date: Wed, 19 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763589713
