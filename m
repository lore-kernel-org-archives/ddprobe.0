Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D663EBF3E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769985234; cv=none; b=uM6D8k/wyRlPyEPvMv+41AGhQChSE6YYjzPAHRFP71sp2Al0tOBXXwl7tIfTsXie+Zlk2geFMd7jT/NcoYg2i1vgNZo4wHVovTdQDzTNm2ReilowplxzARMXMBe/tateCLCCeteFehSFKjJmpKXXRQ8d8nkp1PACo1ac55ZEDCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769985234; c=relaxed/simple;
	bh=CJcorux7NIH4DGFj/Y7ExCFxghvj6Ktmq3682QYFzp8=;
	h=To:Subject:From:Message-Id:Date; b=TYwtE+3P+qQ9l8Tw0/TEL9dVEOcMdkW7gBQKK67VN3lDGSMuClg+/Y6tCRYGf29RgfnF7/utddqb1z9+ZyIQszAI1YB076mYiokTbdarvuouRHJ/acurPfDImmWfOxwgkeFKJftAvzNzNENwDmHhq4ISekLN7dmd5mMK0U9xmj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAECWmg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAECWmg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2558C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769985233;
	bh=CJcorux7NIH4DGFj/Y7ExCFxghvj6Ktmq3682QYFzp8=;
	h=To:Subject:From:Date:From;
	b=mAECWmg8N/Zw/dowcGwxF0w8y4RVZxHsB4k2iREpZbemvFLFoTifPE1v31wQdShZW
	 hH5OLF8eSZGB+8r0hpTNSyLbIz12Xfve2p0yjLhZd7t4p1pEVQsgsHRwqZjEZ4oSgs
	 bzjaL0F6hUSBnX2/Tf7XPpMfBBNYYpyz8SNybk64e7Y1HXX5nxL3lbxhxHYcW44Vp5
	 oAubbKC6xIecstNPlQFpmlZWR7W0NONjxcPEP+/o7NAegGhYQQI9djdRCiNGSbM3lo
	 XwMbh2gSYiorPDKkmWo4XQviPCkj3W/uAwvAV3MVEG5Orm2+Omrov90P992EqW6UpT
	 a6P5aY2FG2ghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDA2E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998523361.14441.17915878590138957498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f6a33023b45a2cf8cb9b6f5e823bf6ec38015f49319fa1a472bef4f3d960fd
Date: Sun, 01 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769985233
