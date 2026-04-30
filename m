Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA483F6616
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777535254; cv=none; b=pl165NT/7a2nThITOmrXJuXY1hbsVg3YdJqXVEYXcEEghzmrzyjJEjctlqPT0TUW+7YBvfrBUTemgDfEUl09zLLtEiAC+QIQ+Tpdu4Y/Jx/PBix5GDChrCwOWMQdEnaILj3zJYOZ8Obce3OXtI30A1aC4caIeB0GVCDjr/TLOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777535254; c=relaxed/simple;
	bh=AcPFiVhh8dSMD73W1aMKCrepdjHyr2fXZyFuwFKFCt4=;
	h=To:Subject:From:Message-Id:Date; b=usdvFdHqsDzeVO2tvs6/fXJYx8eFo2rjRSG938vtmMQuXnFFkZoZdsLleCuewdtCA2iumb1SLzsd09ByDpBeENhYAGGiOoHhqObaqZcDt5G+1vJQTssHwHHKBT2NXXBSm0vGnYkF6EKkCiEhj9Dlb0gJcG7ujYpEPk5fzbdPQE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+sF6DDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+sF6DDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB77DC2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777535253;
	bh=AcPFiVhh8dSMD73W1aMKCrepdjHyr2fXZyFuwFKFCt4=;
	h=To:Subject:From:Date:From;
	b=s+sF6DDrjEFPfnxkHJ3n80VYj5rXLlkSNVZeeYSxugOZWK7xjPgE6kFX7RzMZWvjR
	 aJKxLyduFGkRLCVvxYTX+/O0a9pAk+4ulnve2jiVG0I3mAEZysGC9m0DWMMUPOK/mi
	 WGAtkj9RV2+Ce1IPOG1nA6kIMTgE3tiTHVKE7mwlkkp3hQ0+LUmketzY7NnLVah7+I
	 aA/6sgoiaMG6ZEHzEfDVkBPgCn/wXaVRSGV0YV0HhKsDNLM8L7XUVCpSDYbWpANLBb
	 1I7gCbcCDnLksa5v+jcx3KaTaDhsBjcGcaanAe5Kqva//K4NUF12Bk9q6ww8CM/xU1
	 LAW+umrs3Gg8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BFCCD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753525368.10270.7422059926342056477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9663ca2798d9ecb3e793d741a106a60948b61db2c8fccc1dbc6e599bd37fa2d
Date: Thu, 30 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777535253
