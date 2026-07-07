Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9E390C95
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783411114; cv=none; b=oG55kYXRKpmeZSkstz5Hmj/d6kszq4K0zt9Da6bCwCSe/Jn6r32ZTm2Xmachpcd3V0i5f17exgu/zH4I4sLpCurdG4Gwc4o2fLd3d8rnMFlCLPUDqoaDmmaZwq5ini5aX740AcaZvs0zsDgoGQJKscGoiFsjYJJthLhinf8HcdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783411114; c=relaxed/simple;
	bh=qKV/q/426jAvbAZfyiha2uReRwssPkp7srCriT5mmsQ=;
	h=To:Subject:From:Message-Id:Date; b=LtLEgT7r4piSHBwXjEZT4AvBg6wE0P8Q8QTd5TST7MIYybIwQ9bxNKpiUFQvg5bG766dhL+sQA6L6GH2KdIk1zgejY3Dg8jD3yTQ4NquGWNWYkjdZ6X8ZlwjnSVp7JRN2NA1ss/ze1tiyVI+jMssbV5mJoE550SZS7/tdPx1yWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiAaBG7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiAaBG7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF4AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783411113;
	bh=qKV/q/426jAvbAZfyiha2uReRwssPkp7srCriT5mmsQ=;
	h=To:Subject:From:Date:From;
	b=MiAaBG7gfxNhs/KyFkFtfTSzk8QyhVEX2rI/JLsIJ83ME0TlHJiq4TsVOMbfM2XKC
	 P1EXvmeqEATGKi255CmRJ8bb8Uwj9bCOWDrO+LoHgGG3izZFuQjx//u/vnhVYJDKxc
	 lObdrzU5lwcwiqSoKBenSUgxl0D6rMKZAHOuSmJcrnWm3ubdYi0pI12PGn4IpnieYq
	 DiUADK9zEK3Iixk2eMkdbH/y/ls6e0pucFxXVmNo4VIZydW5WCAeXK4oPjk5y5a9H6
	 xmRj93A9xE3Iz1JL4dBH/jgOzfzsXldra0EJOSvFoyx17+psvgXxShDw34+I8N55Xu
	 pkhFBtPvSvJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DF8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341111373.9632.11998738030988396286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32fb1f8dc5bcde5d8452170ce614b62fc2fb9f9ee39b6106a5fb55678b0b8ca
Date: Tue, 07 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783411113
