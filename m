Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16953482FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750954794; cv=none; b=HJsqBvtru+Hy0svTsnHmUDlNUhTVS0uGgDJK0Ll5wQWsXoXJtD6Bi5pnQHxTjpuxA2Q4xWtAmQ6Phzr90Qh4kHZNYbdzkPVokF79ooXanANGq4f4T/VMe5x83YMSGWOxt63NkdPNtS0gz00ceKVxDPdnVyFyH78Qy9LOOVK7GDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750954794; c=relaxed/simple;
	bh=EFfdEir8vnuo3ENnDvB84ekOxg9/CiBWldJ41fqpyPo=;
	h=To:Subject:From:Message-Id:Date; b=IzuyYCLaNVZsBfx4S3oOgEnQJTnsWnb5b298zxf/uhptf92BOUvxW7uItpWZQ1kTP/lDtlH3SCUSB21DU+i3XWw3ITCY03Vhe51Yo/u8qrAnTcDBNLrF9NqyS7qtukF/64ErVVH6zbDJVgG1bt8l8F3I6o46hhEpU52nOWL1YHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiyJmObD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiyJmObD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750954793;
	bh=EFfdEir8vnuo3ENnDvB84ekOxg9/CiBWldJ41fqpyPo=;
	h=To:Subject:From:Date:From;
	b=PiyJmObDHTLtuZdxB1odFN62t0nOe7pi6m0Aa7bHgZvdRzEt6/fD2JOWQyGccr0pm
	 OfEJ8mhKvK3oYA+YA74p/Xa5Yut2j6OAaWZdpmoUMr4/PihFkGrofRE4yi8x+slLEs
	 mpnmYXHpcK9ij6b+TWKwN9etQMFueRZzh+pdZ6b66wmxl0cYDnwUBO94J+s3Bl0Gh2
	 jPO/AbXhJocPfY9Z0vD0TDxW1gfDsgINZ2M4FJMwaSntQX3HE1lXSLY+Xxnf7pHrZp
	 Y5yRKQX3csTyUGjHama7j24mkuHxIZ4q14Ut+oFqpCeSBYsEYmVyAyAWU0wD5L4bbE
	 qfk4cSHyFGw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C61C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095479358.21612.18129413753005025355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207f963e60146a80963b57a32ad7614464f2aec333ad5262172f528b67b8c1e2
Date: Thu, 26 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750954793
