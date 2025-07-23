Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2E229408
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753261794; cv=none; b=K7cuUprKakqZYvhp+i8EHtfnbLAQ1HmSgLzJpbTHsGuvRTSFLlM6vgmPWE54GOpN3ydxkMmzGYEdqngCGJFnffX5j0OumqdSUYZ4ZvGidjR4BJ/xGN+YeYrNU3UPgACm2NCkGG/oNm4PFtWS5FtXyEJgTfYnBXgWdvCUrEcckXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753261794; c=relaxed/simple;
	bh=5AdVjUyAd9MRTLFXpBQ4MPG3a/Gh/oDTk7aqLhEE2aw=;
	h=To:Subject:From:Message-Id:Date; b=ohFtEwxFftL2uVpvN/Ih6sG9YyocTG5f95Ih1obPpxxjxclqfnb9y8n2Obe+PSJR7mcxu4EFhGEAU18KibY7RplI1tlvNVeGB0yNI1wt0xLs//JnQHPd4NyoIOryyt+4j02BbPaHne+wVadSZZx9PHgUvpXm9oT+tsMyb1Ynpr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqKI0XNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqKI0XNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C611C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753261793;
	bh=5AdVjUyAd9MRTLFXpBQ4MPG3a/Gh/oDTk7aqLhEE2aw=;
	h=To:Subject:From:Date:From;
	b=DqKI0XNXmApKsx5adX8Z9S3Ie/J3kyUlM/kE5EAjkm2ClD9SS4JiFJMBstxW5sWl5
	 NahtHmd1srB9igVPWfS5ZfcbW5cblb+/tHBxxPcDqccazet3tjCTgtAfDZH/TU4jiP
	 RZhh0i+p1U4PDrghdOwA6cLMLnezinb6DbJjollB70a6qMJdrzNHxN7Ql9E6hVX0uB
	 HUBvQyFaknNtJXoULluRSdWgJSEWyvzITsJZru9GK5AeSlbyCaI+XpilzQ32dVY4aS
	 VrHZaG1nyIKvK53lCxJ4/8sJzUp2jmYI9lkc25492Db8YDVFkuyvz7aYdIOIqyivaG
	 yqLyYkAmQw9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAABC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326179357.16482.1311460683896471182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ea973548fff2c9dd1eddb06b371fb2f1e7d89ff77f1e6ea3b8248cbfa07dfb
Date: Wed, 23 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753261793
