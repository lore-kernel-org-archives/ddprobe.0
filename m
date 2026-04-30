Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7889443
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777535854; cv=none; b=q6q32Lu8WIO5wms9Swcyk8dXxaCOLdjEN3EWZXECSBr1k97uISclDkiHZvZRSXCLOaYnMje9Q/srEkElS2tBVz5BHllbfQzJ/5Wksihjo9Hf0clMrS21iqiOHNFGvrX5vwBDe8X1i29rGChZ9Uv1f0N9fC9GpMWIt3dvVMd6Njk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777535854; c=relaxed/simple;
	bh=GvMQBe9aSAbIfDW8EYqoyh+bL5Tl50i2c7Q67nXViA4=;
	h=To:Subject:From:Message-Id:Date; b=cd86YVtmwWChcHPqfAsJa/TYrfdBBpl8HSmc0Grb828DaitwVZ4efkO9Kthq1GA2XH4PtzAtC9/m3AooBi+Ym0VcPYSg7RuaKRk+UH9fbxhZGQhHtSnVj0i8tSZwnNkYQt0hb5QNjMrFDIF3StB2rp/kNq/xfueJi3g/V4ZRYIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHjAQffr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHjAQffr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A20C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777535853;
	bh=GvMQBe9aSAbIfDW8EYqoyh+bL5Tl50i2c7Q67nXViA4=;
	h=To:Subject:From:Date:From;
	b=MHjAQffrCiTNR0PBG0PxHmx8La6pHFS8FOzgaD1zIk3JFfoFUe3pUiTQQPDo7+zW9
	 m3ECwbrih3RYxsFTOt7jBypnbf0Isvx7NbWbf67HP8DvcFCDEUS4S7bCqH9EMp1iLI
	 ZctuAWAnv5Lha+i+Lalgb5mJB8yshqcrMI+LeTHNLRyffuJtivguJnasLZRAVMPndq
	 ktapOIj/sexD3rqgQdQS4cbIIbCpeqfjQORNqkeJw6oP5W7g8CmC8tJsIARrb215ZT
	 TJPwljAir1lU2UIwycZumzl2PrnGmuvD71klKUvVBwyZLleaA9rdbb34/sw/S3aKrE
	 d3thmCcOun77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753585368.20356.12028402780608491332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6221ddd139c1e1a988d0e60f5262bde9faec45c98ca305489f1e506ed165f0fa
Date: Thu, 30 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777535853
