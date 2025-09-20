Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782E1A0BFD
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758353394; cv=none; b=gsUVQS6JeCp8ddWg824TCcdcNIIkTDWbC+S+xCNJNch0f6NE8VU/G4pOSyrxhA0tqc6ja4b+yht5AwXv4vegKO3lIG7Yjp3OjOTgGC4+EauSKLd0MA9Yhn453qPnQPt0DMPJNR01G7EEfrz5qk/MYyV9YDxTj5gsyCedH98TseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758353394; c=relaxed/simple;
	bh=yde7/zw/6X6ao6VuHzHH6LvV7weY0qVtFCwGdfKAff0=;
	h=To:Subject:From:Message-Id:Date; b=nlWEaWu0ez2YiSlI+34z+WWRImSa5FW6O0NNRqfrSqUnRv1ddmnCAmNGpKoOkr+WtobqkPZYsjphQ4vVHeUsUK/dAiEB8arYvAo74pNBB460R9X6Fg/6ro9qRFkKTxww2w6HB2DI4fa2D3hV6DK0mjhhRKT+PD9H3d1WzuBehr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4AKXwxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4AKXwxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F94C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758353393;
	bh=yde7/zw/6X6ao6VuHzHH6LvV7weY0qVtFCwGdfKAff0=;
	h=To:Subject:From:Date:From;
	b=X4AKXwxNQFzEl4s9ATJe19/mU+4gyUHNxY4Z6/iLAKl6umqRYbxaz497gX60pMbQ2
	 yp6pOfs+FLAfy8C8vDVeQV1KndHYdfBh8CQubCW+siSK0MFS3QRKJaMmZ4KeLyn+2q
	 a19H+qL2mgC+vfdOqorRxKhRmUc+wuRvM4HiK4vzbnY0EaDj12eo5DJQE5DxJ2Eto3
	 hr+Nn+SyW7t+eMkNYegQiFmzxsR0zFiNc948NKKK3mJ4FNPWJD+4rTq8a1VtCdiY+Y
	 I5RMREcs0+G4xy5IvOzowHHAiBNtt2GpIeAFvrma3D8/1wscg9wqbg6YD1QuRAV1hX
	 4ewV9NaGetrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A92CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835339358.11065.17339785540184578060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c278d2dfe7b27e4d9b23df89f74d086da8198a57b8862a84e03453d92138fba
Date: Sat, 20 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758353393
