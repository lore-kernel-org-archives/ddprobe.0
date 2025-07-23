Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1A4221280
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753303794; cv=none; b=TaqohtKe98sq/3I8qqFhv/g2ELpf8WEInB3bamHDvG72jvpn2bfkXYcx7XdY1QIz6xMg1F+kWn2wglEDFvRQz5y/IWDh+ijfghguBIdVd9mGfiTsHnevMcbpV2I+K69GOmLOyPOcKtccuRPRAsBkLNBEXjO43ijdC7kJ/aAeSFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753303794; c=relaxed/simple;
	bh=Z7U6QndlzEKrsEOr7gUTg4jpGku20f2a+OCkWPvhf1Q=;
	h=To:Subject:From:Message-Id:Date; b=fuRdTgzeVfO8SBtEx5xWYxVl61TyfB5jMR3b+k96VtGCGQJrFIPiXPEAd1NxPweNh/IMpvHz0XD9F3flrvdhj8+ixWtdY0lpi4CD/z/gocg0XlltUVrzLoAmtRpKvQ9IKBBOU28IfFP0nzErRDBFtaUWaEuU90DtSmcEmowysEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d30+2P7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d30+2P7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753303793;
	bh=Z7U6QndlzEKrsEOr7gUTg4jpGku20f2a+OCkWPvhf1Q=;
	h=To:Subject:From:Date:From;
	b=d30+2P7Q/TD0pvFJ8dc8Da7IaB+s7IVA9d7cdM+zXZ97HylFRgqgnmsuJI6nyrJej
	 zcjNnYC14mnQD7UqQne+les1sHoLuGdqSDosTKaVa9wSU9NBhPDNZmb5W5pJP50r9c
	 lHGjjm4TGyRvz36O5AS89f0qlzBGTVbPLjRlnhAXewdTpQZ5qmmwHUdeJsl3fXCJAu
	 qTZVtLVGcJGgyJdtDSHYwUzGIONTJ5QND8R1I8ZaModCAcUSBBpLtoGW9DIDS9OUcU
	 a/idciFrQOyOfg3O+WZ7wpM2KiAz+28XUoJITRbXIfpkTfdxIOMCmot2efHlBAh86d
	 Uc5ToDLhseI8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927ECC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330379358.15879.17485079562943572430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fe1ea4141925e8f4059892c9c97ae08dae45a5f535bb89e8b2d4ef141e96c5
Date: Wed, 23 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753303793
