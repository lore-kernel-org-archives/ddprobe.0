Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABE35BDAA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780223074; cv=none; b=ScyWc03MueVoIBC2aN/ZZm/V9qWpvplFukoDG5UT/JhHKIQ77Hx+pmk23j8Soa/Jf4d+JLe6W7Rs7Wj9nHWuMNioO/RQXps0rpF/tG2A2g5umb4VVu9LVir6/vQ8pM2Q9XqiLEXrk9DvMKHndYvlN65U8J8GL07t+oD/4rTxl8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780223074; c=relaxed/simple;
	bh=SgP07GFt/kHqtTr3UVe6qG4kr8Ic2UeJZ5iGYSRQthY=;
	h=To:Subject:From:Message-Id:Date; b=BtjS2UEQRGNVBPkfjluznT4qClbBWCsFsHKunNFE53eHCbLWdW4ikAO9j0Eddbjh8Z8vXlIyS6fj1GC1t2blJ1u93e23zPcRTg2nV8GWSF+ZAoYgkACMQ7qaEIWHwUkdhyNoVwwBUw7lVXfILpvzKYK/pu5MTmZpcaoewW+CTdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJmKGc8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJmKGc8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB9DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780223073;
	bh=SgP07GFt/kHqtTr3UVe6qG4kr8Ic2UeJZ5iGYSRQthY=;
	h=To:Subject:From:Date:From;
	b=TJmKGc8HBx9N4HljlsRqzQECcil/meuqHuRetZ2jHi2uQYmEvDdDKgvolbXYa/rBs
	 DMInSmhGAcAWjJp8N64ZcUrJjVxrZFP3BASiGTgZqqFam6LX5Z2IB4KKrZibdPoBav
	 nKN2nSF4XRWJlg6XXeLlRp5UAEl5P5NSfjekkRsW5nAfzAtn8vEcr3WIKPYiV86NyT
	 dkvmAT3zqft8DHYs8Q8q9bO9U7EcQBrvSP7kIOpaJeGAVpAU2lVAIdWh5YgSL97lfU
	 I3s+Yo9RPqvcpRMy0q6p6qEAH9+Hw3qFob8DNtZKb+nyNnR4zi4m4S2BR/cQEbJNtQ
	 3M1h4Ouz/TnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD9CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022307368.13709.8537670375017880847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6ea507899ccdc56601bb99021b5b489a08f062a35fe0bc8bb66d94a878f981
Date: Sun, 31 May 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780223073
