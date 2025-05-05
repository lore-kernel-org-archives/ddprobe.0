Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B563191
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746424196; cv=none; b=g6zmSs5cFCJ0WqRU2xE0+yJaVtgUeDM9J3tj7mJYIIJ1OMKL5xLd5ZjdzBx82W2YcDaUVeQN9Ps4VJYqiCYM20s/QWUKAuMPNyXwJCf1vZ5P1Uy+Vfgo+QYj/cwBbFWG/5eUUxnVnYYhx4Gf/cxtuS2EH8YVzYP6MNceY8JNuHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746424196; c=relaxed/simple;
	bh=NJ2/mFKpazj8gOZ/0Jwf60v0+E6M8QAcfC5xfVjisfQ=;
	h=To:Subject:From:Message-Id:Date; b=JyLREVWBZbd4efiVKowNfBJhKU1t6/Br2v1hP8om5SP3mUSci3bMaQkJHteBJep25y2w9CHjezkWobVaKG4CsNxcmsLNxdo72KTAz/2WNDR1NdaftBOA5G3QRHh/03DTcx38DTA+icsfqpuFv0XqYWnOSbxHrZP0JA1L45G1kXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiUwQJFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiUwQJFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746424193;
	bh=NJ2/mFKpazj8gOZ/0Jwf60v0+E6M8QAcfC5xfVjisfQ=;
	h=To:Subject:From:Date:From;
	b=CiUwQJFh6DV13FG5sYWzkLoOkEOkwPBvbgoPX6RYrjdCAklY3imZSF+K+aYesoFJH
	 rM460eGwdpOdUNuPvzCQEoEL45VFyTn62N38b4U2KPXE4yVASK1qnWouPvkZ/2APEK
	 OE422aJH0WQvf91DpoWPMepG0YWxR6L2zJLOqrEWb+hMBcOql7ZJ0kLAtp7EFgS5g+
	 A5nBAUoVCMxz8L3/i2YI7yEu1jIDzCOe+AqTi1dmNfYJgZS8Ng6wuXMvqjCnOH9BAh
	 uE4FPPZPhGqaEQyavtFzp6FO/C3qCMmOGbYD/TotH/AOxoTPmZEj1BnK+7GaaSP7qS
	 wkz7bzAruUAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E471C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642419357.29856.6821608291089869868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1d3ab9050d8093670684066ae5f05103a95a8950d7821cf3b85df0b1d7f326
Date: Mon, 05 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746424193
