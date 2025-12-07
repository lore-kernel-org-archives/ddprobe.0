Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647D71EE7DC
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765137174; cv=none; b=rPgXhnzfKO7DTYvv2GzD2kOUP19XCOoiNtRLfhFW5p5AALuhInAM+8Qa9KTetVcvcqOGzRs6JyekvFodtpP7/4y6vS78fdyD3YD1s3pTeFVC+5OSpNKGzltJFJ4WEN368h11WXD+7fmkK8Vqpfm/8+rC2mKF+PgwwaCXSdAYgp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765137174; c=relaxed/simple;
	bh=k0feRLNuuJHpblaQLw+XXq/MuA+HA6P/wYaunBorjio=;
	h=To:Subject:From:Message-Id:Date; b=UBnuiVGc4B5dKxjQQrjghIGzHcnmITDYA4yzSxG172Q2GXnCs67SgudRShGiDOiESG+lySYMF+n08TbpIHcN6eDuSaEllJCwsr1kaD7fA++iUuKLPK34nFBts6fcSBhOVY5a4sZKjGB/zpaebVrNxUqySbO7+3iv70KchEPVo6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSR6+cTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSR6+cTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA25AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765137173;
	bh=k0feRLNuuJHpblaQLw+XXq/MuA+HA6P/wYaunBorjio=;
	h=To:Subject:From:Date:From;
	b=LSR6+cTydoXuPg6VIPWPpHxPGFqJ/KD1KKD7r8EiHDZcnKuWOPlo2b28GbgTVY/3R
	 Ojdj95iVL4O9uHnpALHR0DuY5bDWarVl6ZV7Bb5c7ID6+Kst+0BKV4hGynHITe/Mw2
	 CRghJEq2aJhhi9gkglK0gWlh8jx6Qj/x2/4jRJAYZP9dqNuhhLRi5BGtzVOk8P63Wo
	 P/DZOxQihqfXYCAlUdfdzP991LRk1vidJiuUDq8bVEJ3iGfH7y6Q6/FaZKMsfezKZy
	 B4TxF6gfV7WzrP5NLlA3VGKCgZl6xMipIq0BaTWbX4qMuzaOgWXUVR8VS4H+3NoN+c
	 elhwEBwosemdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E3D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513717359.823.6666828774412333752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e0992e5f9b8ee4a0ec599685ddc2d2ab812f6886cf59a6498c52860dd1bfb3
Date: Sun, 07 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765137173
