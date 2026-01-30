Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A901346FAE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769795034; cv=none; b=l7RXLWPBhF9i2UqYYaIrDqfkvqrFfcVEF3soYwlTualSKXYZY/CNeEmZo935/g53jKRCHyqbUwBsLAVWtCqI0d9Rb7rIC6pLpgaebZDHgtrFIuBk6wnoewXIDtuPOwy/0FMn20F0dp3k5AiuiDe8EF0LIyk4s9iKt0pZPd/YPHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769795034; c=relaxed/simple;
	bh=kVqcsoypW7HphRAc/NO25RUsxj0d1OOjjpDMQksrDxI=;
	h=To:Subject:From:Message-Id:Date; b=hN6aQfB4B7uD2EDo9nF9H2RnWETsoUYlzjDyUZaC1MTTWhyoG4BRlcM57a59genlXW4RoT3NHjikn3gwVbCzVzcGJab5bKd2Jyui/OoYCE32yVMOj/9M722cKW5+XwYZZWNIVbOeSs7uZzlhJzTpZfcNVlZ3wg25HAzRGzCto2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il8m5bVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il8m5bVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769795033;
	bh=kVqcsoypW7HphRAc/NO25RUsxj0d1OOjjpDMQksrDxI=;
	h=To:Subject:From:Date:From;
	b=il8m5bVC9D+2iRAWlxf0KWpoHVLMr1huiG1LWtizQO/EGo4KUuAFbVopnj4Ldv20u
	 7kBR5l8KZe0oKLrsb4TtsimVcVnGJmcSg7KzKlfPVNfP3ooQxeWpL0KCdyVdsK1Xr7
	 PaODWZ3NXY3P30bqjkah0gWia8e71q9KSa+taVygtIK+vCwmdAiP673+4/9T8Go+Aq
	 pcgstGcX4r09TrEMreX+x8F6+cJYjeNom3/ok66tQgnVWO9llYY4u7i7yMM9Rz1X5q
	 q5KxBlh+k3htmzcLSVAjWtudn79U6uxGu1aPOZGdd/ad9djMpvIwqglE0JE5TwbKtT
	 0D+LEvMaDQHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92452E6BF31
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979503359.12280.11644399052685500948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d450bd873bf1be7e0a7be5bba6e8679afe9e9df2be063bd12dcab8be2e4b5ee
Date: Fri, 30 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769795033
