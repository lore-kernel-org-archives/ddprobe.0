Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF2A2F9DA1
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788640834; cv=none; b=m2oiwZs1lTWzVhufDRF5h5vUcYxjAwR6Rt7qtHP7gX8cQp9WxbPmJcUUo0YjNZU998SaAVb3YRdURkZngXHIqJPuJMNOZyhqMtUOkMQOHtTgn8gRaL1cMBSNQ5Tmx5GvKzPcxtxs1QHUVAq36oqgcwKZDym4NEjQPqXbcFGAPsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788640834; c=relaxed/simple;
	bh=WiGURuWtR6blPYXMLHwiuv1yFbdBkuzwHMnVCRKoPBQ=;
	h=To:Subject:From:Message-Id:Date; b=kRUcde1Sg58GXeIyFJKBTO9XKLh2ci6depFR+ue98uaccjQR0E3diIXQ4Cg86JFLZBw4lyvY/SrqRZjvUB6w+dSQ4HD49g4R3Bsrs9lemDAcbP6tqr4ctTchYisA7POFG5n5Vwj2lTRi9Lhida9MfKbQVusEEKNXpgpjWSTwEKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duehExgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duehExgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5C2C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788640833;
	bh=WiGURuWtR6blPYXMLHwiuv1yFbdBkuzwHMnVCRKoPBQ=;
	h=To:Subject:From:Date:From;
	b=duehExgDnXESrNwcykB7ihelnoOONuiE2x81qRgmHMPTV/oK6NHGGLw2p3puzFY/r
	 WY3EbA2dLRH/73P9A3BKR6PV6JjK7GcQ/O8fQM9hEJcoLJyLF0xsiIFdYGHyoTnmgU
	 rx35assw+uws5Qy5DAaTN+eggHiseqoyKu1BTeFp/cuSebvL1E5aHGgG3argfXt4JO
	 SxbFryqyQDm4Yy+p2pBEaVHclhqLAoWLA6gPSnYlfPfVSXFyUpKmu3n+PV1gX+1IFp
	 bXTSI5/dp8GOTssLq0kwA2ekm6v73AoINUMOe8jsCkmkpAM6yvHwr2K7wETZdAD56D
	 504rX6XJGUbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D8C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864083369.12976.16282496448744256656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77b7db6db9c0ab597e1b335ca2a8485b87b2150f849d8e4a11a99fca6060169
Date: Sat, 05 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788640833
