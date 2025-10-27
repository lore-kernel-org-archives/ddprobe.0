Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F4832AABA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761592193; cv=none; b=HlHzP8/B9R0nprIo397Bmvzl5EdVp8NlfXusK9ZXLuznj211yV0J+8Y5kyIH7RX7YqNsEJOQq6o+OexRvQ+rhjLoFtH0mgwHd3zcrkJ4cI1I8XtfOoSYZxHrVwh/+CEygxPw6ZScaBL5Urt8sRBpx8Z5jNOLrfIHurrbRCbtNFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761592193; c=relaxed/simple;
	bh=b5FVTQ1491hSGb8bF20iNBOoh5GwPF4Vg8n+UhkKwEQ=;
	h=To:Subject:From:Message-Id:Date; b=tJrhjrN3oZXr32k7hhk9FtQqQGBFcj0yS2M91gb49koVEAuozl5fa63HvmONFRhUIFMQ2o+7b7IVwNKXiehoBSkS0MBSWC0pO7f/GFwdiFcyj6h2gFoCK5l5uyEdrSCCLSYKiTjli9j4+U/4hWQpL2eAEN6r7YDkOr8x6YvgpI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS/FPcM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS/FPcM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7078C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761592193;
	bh=b5FVTQ1491hSGb8bF20iNBOoh5GwPF4Vg8n+UhkKwEQ=;
	h=To:Subject:From:Date:From;
	b=VS/FPcM6O7KM/93nxBjPvEhnYxt+HLZ68vmBQHju2McEfex7lGtKgWsxPa06lfJOK
	 NUuebqvgYjQMrQMAaq4GLrVmfg0CCUbf+Fh4CH1xl1IV1xGL5pmQV8NtoGnY3mgF7P
	 Vru2DTQYTtZJXraJYzof3cVrX/fQFXufVf1V7kj50aBdE4k891FwR33qB1U6sr/cvs
	 3mnGZx0r6Isdu0HjxCJICzyACEqU+2T//Rr8dInk7Zju+3zgDCgcFjVyGk3vxdrmue
	 LrUrMnfXci3h/1ZEOsUMKR6u6Dd0nzkTIXhJu/Qov6sBjPU3HQ35/aQ9HHmJu4Devm
	 inn7d85d0ddgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967ADCCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159219360.30501.18263658648013938923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959320fe59b4e802e3c76203140dcd3e348b8deb9eccc90c94a4442e574d203d
Date: Mon, 27 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761592193
