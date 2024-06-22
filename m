Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA4714C585
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719064343; cv=none; b=VMHpURnILLxNB0BKKWf86gmOCm3eKX5T2T5CZ8B+tG/iSR6d6PdVm2/xROyolgs/xXz3xCcEzZXP/WrEZj6In31FHVzTv3u21mjjqBBL4ZtxPxFnDdoNUdUBXPXhRe5ZeJTxRQx1W3CUqpJJ0AEvvqsLhDEMMYPD4IV6Z8Yi1y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719064343; c=relaxed/simple;
	bh=QU2SGtrxp2Xh+SnK6uftte/SrZTT2xr4G/6hkZsgCUs=;
	h=To:Subject:From:Message-Id:Date; b=P7PeYOTLDblXPbrFYJmfUUsAV/KX/YSghZYegiFH9tNCL2C1ahu7M93N/nB1hHvwp7LEX9Fq9HYhkoN0z1V/2hCuYKdPGANjAzFnN2pqHa8m2oh8tWRRXqtALUSa6ah0GE3noYzfCcyphw/2jNtjFkM5wcN37J7oF3A+WwtNIDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8LO2cLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8LO2cLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E429EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719064342;
	bh=QU2SGtrxp2Xh+SnK6uftte/SrZTT2xr4G/6hkZsgCUs=;
	h=To:Subject:From:Date:From;
	b=K8LO2cLwf6NJgMiuvpY0gNBuvowdrHPBcttmmaEEbXb5MLZkBGZPsjqCWWWrr9ug0
	 H+JbDyjiVQ+isFQb01bypjHcDh7V2S5VVu7cS2jWFA6ilTEVRCjYJ+Dj9RGVLiDmGX
	 J7appSok6I0qqUAM0/76iye07gygEx8ksrTOOBt7k7kFmOYppkC4HBa8KosGHNT33S
	 x7igqi+Hr3XD92ZTunvlr43SGL9km56vc3RdC2lr4yyNYYOWPCpEW0MyG4VkE3HSqJ
	 zdIuo7/uw101bMao8ObyAaB29niFM1ue0+icQUmjlj60vd7SamYbh3WEg20SHIvm35
	 5/otYt9GDjn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3738C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906434278.25711.10363881592902123354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587311b74f539cfcd59166faa237613911f4d41b223f342707c670ece87166d3
Date: Sat, 22 Jun 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719064342
