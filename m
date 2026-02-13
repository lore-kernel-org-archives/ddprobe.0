Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4461A2389
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770961494; cv=none; b=kYBJZ+YzgV3lMmjVyczZGuo4BBSDiCOHVYXStHdKzlLdu63i7sXRsBOCey+LhtG/WwyAz84WzpSQtJ1rsfjtk85nIrUVfGafLLXenV7VbWLnMAbJy27qnmzxa30QmvqxOEGamHcnifbauKtUK2pF8+gxvzOC4SZXfQ/gHw8As14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770961494; c=relaxed/simple;
	bh=rpyFgWbmQK9BtlgzDEx2/hs7tZX1w/MrLWVxAqVwUh8=;
	h=To:Subject:From:Message-Id:Date; b=qVg1z0dLynHADoJCXbXcQL3pkQhKaybFG5ygA4B1A4TmKAeRAaRHALJcmJ0kUUHD0c3m5v0Z+6n+MovB65bUf7NCw7d1iW91OnRXPVN7blcKOS2HqAW8/60ktjy+k7m4S6Lsh1086abVPjaoNS//vaXFo/G0yAFPKoprVhyqLCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UudPR/nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UudPR/nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37ACC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770961493;
	bh=rpyFgWbmQK9BtlgzDEx2/hs7tZX1w/MrLWVxAqVwUh8=;
	h=To:Subject:From:Date:From;
	b=UudPR/nKValj1ly6PBXARI7h1TNONsXprwwAVlNvgv8MFpkB7HW6JPumuR/T1Z5VS
	 JAHCOAI2o65VHGqS74RPz2eKCJa+77+a0tR+uET7T5u9iBa3xB1kmS7SJyuPXBUDEx
	 839OeHYkGCE21CowkT7wI+2A3nhVhs7Qfl2D5MUNNxpx7Ah2Fn/DgXPtS99N5tv0Qj
	 GrxOB6cSD9Sq+nCV7nJ5Xo/+J33j2m5ayd2nw63n4Hh/HH/yYvLNtHO5yBZ7zmxcm2
	 cKvbR7W8k8PYqp09FhTEzfMeJxZpGHLU6vzB9NSIrudHQPNJgGV35Y2+XYwrJUgCel
	 38cW2aeXNQzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BCEF48D1
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096149366.1224.6394526039780828704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec56c18ae86a91a7bf2db2ff58001a15dcc628118e65dcad1deb0e685417b17
Date: Fri, 13 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770961493
