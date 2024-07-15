Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709901843
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721018003; cv=none; b=i0zvd/tRUBzUvQhq80Dtu9puJLPXgag4u4YdWpVh+sb4mAZPL9Hgp22LpuSq3EFA1Wsxaqb+Q7a4oGXTXxD4bk/LitNRFTuTUwI5jwkEx+ZvmLVe9z+TU4mHeMLR9khwYAiFALtFYoZunYc/9Z3XQgbh+J+SPS0yOy3gq7Ha1Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721018003; c=relaxed/simple;
	bh=RA7v39+E9NP01Va28VXyeezJ+uap2wcCvXnPSgSZRZ8=;
	h=To:Subject:From:Message-Id:Date; b=Jgdy6KZ1L1NkHKqB9OhipKq9GsCPTPWHD41oa/9VEnthgHRoyObhirpfZXluKTB4i50szqijRoT6aEzokmu3VJhIDrw4M1LPmm4bc2hmbEU1U6a9wFSoEia9Vl1psvsgxYRTdedaoud+GfHodD5zuGyqZRk9JeiH0peHCJjofIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS75ILzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS75ILzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14B5C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721018002;
	bh=RA7v39+E9NP01Va28VXyeezJ+uap2wcCvXnPSgSZRZ8=;
	h=To:Subject:From:Date:From;
	b=mS75ILzW+REyCsA6qe1wBLTvSAdm02XoUUjLzWHNh5v45A/I3rB7YdwOGpomv0Llq
	 s+OUe5D/DmYWkxV1e4H5iGeUU0p0SHk5nnk3bxOZpht5DXBrnLYb2ZxHiIoA4elntL
	 +VtWUEOaPbciTg4NcMFzjsO5q9l2PIRZzhqQ+FgW9sFYoaJ9toF7YUCG9XrlCx/tI1
	 Hof+xOWGoywg2SnILB5zBGW/HXdDvWaq7rs+azy0sR7M0MBgSdv0AULAgeBKTaCNx4
	 tM7JG2IKc0UiHuMPnZM8QrocLegm2a0TvK0TyGA9W/NvKwvEDj0Wj/MNzNyh9Eqg1w
	 eyAIZN1fBM7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4783C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101800279.6878.6754144697772968055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c32a18c441c8e41fc98a9a8fa6e0c93679e26d92b5eb07c6d0ca79bee7c121a
Date: Mon, 15 Jul 2024 04:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721018002
