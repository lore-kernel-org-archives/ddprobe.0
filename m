Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB9A258EF3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765047174; cv=none; b=aSJPnWZOF1lyNUdMQbSQVJqMtX0J2yGboyoQ1cJ6qlm+wtNb5woerQMHcw4VmgUW1zqsFurAbO2MaX94yhuok4N1Zm0NIfVGQtGoVDq5Nilb9jM0/D/eZMT321PxDCdhwJETRcM1moMSFEdSDrGf66gjL5kCIbLVSsrW4/mVzIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765047174; c=relaxed/simple;
	bh=hUVenZmAol6Rhyf2/po1sxBbABSmnSnMnBv0TIvjsso=;
	h=To:Subject:From:Message-Id:Date; b=TjMwOQSswp9qEGvPcrkdmvjHm13QYDoblnZqcsYVeKRBRopFBZwchqf+GciuD/3hduXPbFrhs3UC3FfOmSkrc2Kj91DmhUc8uYy/EiSqlY5BO7KXzN0k75osZvjgycU5e1GOGrljRSpcDGvZw+KGRUgWgtxupVQG37kv+cd8RXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foWfxinc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foWfxinc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA53EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765047173;
	bh=hUVenZmAol6Rhyf2/po1sxBbABSmnSnMnBv0TIvjsso=;
	h=To:Subject:From:Date:From;
	b=foWfxinc2bZImp2G82WVB1p7NuZf9r34fKRLzVVGtEASXDKZQMdlR3c/9iDuQZaO6
	 ciS3JCGrQWJgFuTc5uRfjD1rLKMHUGOQ148ppNes7g48JFRS0DDqVgcy1vlqNhZ1CR
	 /bQX4Rugh0ljlWs739p6W6Jz611TAx2BekNXs1uf9RvE7AE/KZVTgyp0NRSTZxzJTK
	 +GwdRBhH6Nj/TZ9C2msO7RO0A4pHTFaQ35DrV6PpGfu8uj5hW9R2/QhtldDfTJtVQa
	 ASomqi+U8tVxMKy1fOgteJ7jGy6/k2h90wqmL2tV2d3ayXVesY0l0S5eYbcoogq1h+
	 8X/tbEjKvRQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94483D3B7E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504717358.11032.3491555123712017789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8985de89382c4233f131d7c4d7814a29c3769769c86c0692d1032ba588bcf757
Date: Sat, 06 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765047173
