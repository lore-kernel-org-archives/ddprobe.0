Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FB413AA59
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716804863; cv=none; b=OAZpQRqbEswDTQeBc6XOpOmCNN3Sw1Gupq4/FJm1cKu78UFOIb7/7P8eDxGHxUFgGvS3yzOdf4X4LdMIMqdC3g4dQ5APtGcgHftd28PLXJFq40ZR/MP0kifnkVCKrXuzCYvzcqToKG811lCQ06RHqjQi2WQlvvvtBcPcR7avQLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716804863; c=relaxed/simple;
	bh=K/ELhz6Kd/0RIomfYdcrB2qnEzYxRlJYagopglN6Hpc=;
	h=To:Subject:From:Message-Id:Date; b=tFeDnlVlUCDwgHlj422lS71v3HkYEPaGtJdBytwzPHZ243m13pFFAgkeE36P0azRI9gSEYprNA0eJgyZBac0IqQqXXELCzIOe7sNu7ZLFRTSKWtgKOPNxJi6jouNew/qQ2N+Ua3RsStT1IHpXferewaGOQq/QPn0R3i1C44GMaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPRY8hQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPRY8hQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF2CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716804862;
	bh=K/ELhz6Kd/0RIomfYdcrB2qnEzYxRlJYagopglN6Hpc=;
	h=To:Subject:From:Date:From;
	b=kPRY8hQ6QXxgUgwM/Lxg6v31YylxxGocsZ5pTVgGfq8cHcTRUbfjXDlcGG7XimkNl
	 GwD+DchqUKk81UnhX7avb5KH/nq1KgdrFMyxVIr3WgYKJxnXyNb+vT1Lu2638kEQ/z
	 UPtjISDxthGfm7oON+wGintPsHT5X/j3b5uW+i2J8Lt7Uo2i1Cir0f044w3dUFHYQa
	 cNKGZ9rxMNQm1V/kB6QRmvD18ZgNNneltB+4LcI7u86+WKxnwdRIwNW+3IwmO1/NA/
	 8UE64PsynzVwEDxTGEc5yQB2xkkR9g8/a0BD5Vkt2H8oWuTwxXtY27PIdrCHMKKHaC
	 MIu/JqRTiSkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87B4C25B7C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680486280.13128.13724948759795133402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9feb173b57c2f389ce9f39ddc35a7281c44520751b182d9a03a27b22b5433e2
Date: Mon, 27 May 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716804862
