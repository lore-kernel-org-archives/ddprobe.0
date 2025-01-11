Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6B192B60
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736600154; cv=none; b=N4rPx+IEzoxgpzg8IDhJusTY5NEfrws1Mks73yoGH94NoFUcl37LxN8Vc14R1jadz3UaJrlXUFfU94SQL9LYPmtVsN1Bqo7kRWVZfW2dnVGSjuSO8dlKFN41eM3oHHZiPWwMF4U4O8RUhIke0Dn1jgIXKtNxKx3EYbu3LzPHYwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736600154; c=relaxed/simple;
	bh=m59nTewQ/nuS1LYHfIeYLGJBWHr9bSeGiSD2+VQD+2M=;
	h=To:Subject:From:Message-Id:Date; b=txBusttnHUgKmpLlbBKUKh8JVJoorpzVPQL+uiAapWWgyDnIvEQiEupI8Brzt0InAY1DewW4mAxhuU83qUYpnah2J+UwGQ9cs1s2yVHzjJBgCDECplIwyY/BkWg3Te7JS6jwv2wLy5CdA1KXpjBqR0sTM/zrU3qJy9eI/sGWnvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkFsmL53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkFsmL53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFF1C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736600153;
	bh=m59nTewQ/nuS1LYHfIeYLGJBWHr9bSeGiSD2+VQD+2M=;
	h=To:Subject:From:Date:From;
	b=XkFsmL538fTKQ6BCJIt9Cko4RYAJQQNtkSY9zYaEW+SDR+9nRVYMtpa2bbqcLQbed
	 IenJfjvsmCvmJNccdHRmPBwN/T3bVIsNn99nmlvfl3elBHZAy/xFhrUrwfF96+edG0
	 yn5JctkWz2GAQi4BczPeMq37RmcHtm0HE62RtzsxTpHfRCcFqMnECdy60JQot1PhWq
	 u1odROAnimHsd239m4CoXbylAFODaE7ZP/j3zVmbLFPKWi9JzWblPxWvPDeiD4aios
	 wuYFoYS012HU+mx38TqXRUtnPhYpa8Eb7hwq/5oVKQrhTvgf+1wiXPbuy6yZIp1W+8
	 4/jELIa1I/6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD8E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660015358.16009.17623458797105428551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be4d3e43854cc5bf7cdc676be1d43f0f14e78a9a3e4130d07878f88dba0445d
Date: Sat, 11 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736600153
