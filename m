Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26032218E8E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428554; cv=none; b=EI24bRYI0kRWP2TteEXtuTvgUMUh1srRNVbvodpcZkcs4uixLU0pdv/HxGz98CEg3roeOKVbOfKIcYaTSEhage8shjN1RhFnoj1e3dCHg1R0barhS4ols1wPxgyQvinhWOTU7r1EjgFR2ALnN7/AVgFFie2YZHCx3MZPbOQVkiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428554; c=relaxed/simple;
	bh=DGItA3l0Bk+4fy8Qr8muWCIQ2MndW+h9RzYW6CMWWHs=;
	h=To:Subject:From:Message-Id:Date; b=udP4ZZCtnlMDrrjq/tMiuWeeycDNm5lpQwKHA0EdwU6yLAM0t9ajm1xGstVUnHU23zf87fEnJ2r/QbjHqGJ8qtSocX/bvFgUO8pgZ79vThZBWK2Ak+pVa/YrSiUPLn4u/T/D8gUAYmuN/gQbmgwj+2KcyMgv3vGOKiWchxDx3Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCw3K1Up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCw3K1Up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C26C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736428553;
	bh=DGItA3l0Bk+4fy8Qr8muWCIQ2MndW+h9RzYW6CMWWHs=;
	h=To:Subject:From:Date:From;
	b=SCw3K1UparX8jVBZAROKGuMQ+TMw8wzRFMhzli83suaaqE4RwYzPzuX5+hq4rwkrQ
	 q1NjtxN+rs2LCcuigyb54vTfFRUUzkLpxdVmyIX3Vo5oP/25ljtVdjffHFG1BB+EZL
	 NL8ltIN62vFgOGaXPsgPpcvjD5uG3u4DvFhFzy/xPTBZ8wr0GBun/i+5MrE0iGHNPQ
	 h5M0p6Bf77ZeOHdggs0sXQ/Fu6bnALr5uuisCGNl6WbD/c7BDERNjbFrhTFJRJGVOW
	 qTOfS1Fc5KIs63hZqr5yIR+2ut5vLHEyCej9k12Bfq4RMdQB4PUX8Jr9LnLqdXdIs4
	 IPumMadoGDjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94173E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642855359.9530.4237554939718153751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0682383dd20a6ecc1542cc3b3f68646e585e07bcb3398f80918e4ec7c8c22fef
Date: Thu, 09 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736428553
