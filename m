Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C87260D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763955114; cv=none; b=pw0e9IuFG2wzGiDlPq9/rXdtGiA2CfKPDDwKhr3kvjotlRnc2qb4s2xaXSNifS4HmyUNQN6qAHLRDq53qCqQzN9jm2xIG+AxGh4gBbPr+y87RK/R45VMkiisppzNe4/TIagxSteKLQlXUK0ici466yg7abTtcyaGmzNWf+Tfq48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763955114; c=relaxed/simple;
	bh=ztoHNTxdh7RYa6p2R7iv2SuGhTf57I10mjln0xxIXKg=;
	h=To:Subject:From:Message-Id:Date; b=sqrKbXkcBmuGvk3mD2M9yYy9NmXS4a0WV6uDj8fK3lifkb97oAw8kOEk77cs6eRjpgt/e4R1iovZK2wDcWCkweqHAk6lYOysnZhMJ7eGw6fqe7XC5yGH2Bm9OSEFy1vnzsr0ezkbVp+kPc+vKg3tQNzeifoR61RFGU8YVQhlwgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eacifAQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eacifAQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763955113;
	bh=ztoHNTxdh7RYa6p2R7iv2SuGhTf57I10mjln0xxIXKg=;
	h=To:Subject:From:Date:From;
	b=eacifAQ43hVXbPdb1Gwgp8aKqQX6tD92jEKFWeavKcldzm4quVrReLvc6rIFWo5Wb
	 wPXfiIf9RZq6Iv5bWQMWBZx4OYNSNZqA6swee2YVkKXpImBFx64bDIm3RuxBLlcSbz
	 SEzYT16Yv/2tDTNb3nLaMFkVuJdhfkTJHyfx21uBpUpzfVSwlfdKec8JJSB4NYX8Dj
	 W5nnphHNX6x7a/R90lc2uI93c82najwjw+jXAzCZ2kyEf095eb82RosrfglVAdR5GL
	 Wgj9VZvW4UpZaukOtcXcg0+4YLpLXLGPWhfxDGzugBYMoMSbz/0lzxARC1xiGocH5w
	 iKcTidk07ZIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6CCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395511358.10082.4150706936060665896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc94631054b66b4ee692652bf0367cb191f663daf0b01afc136835b01d77212d
Date: Mon, 24 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763955113
