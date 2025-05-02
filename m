Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380B1F8AC8
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746217794; cv=none; b=c2psnr8FyVKFD3tXQGBIfe+ma2KXLjH6+f5hdoWIspBc5dyoRiOZY/a1o7lVjHp00SKVv9ku1rlzLjUME1oj9jSs3oSSOnnnBvzCc+6W+9SNH16f/L9XVFuQdwZfIHhJ69DZ4sP5Nf8ByMtE1TlVGIpKQDJ++C1tqqzAlyl61K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746217794; c=relaxed/simple;
	bh=eF0L+J3N2PQ7pHoQD6+k/QwpUrf1YSWaYDHWMvZBp2A=;
	h=To:Subject:From:Message-Id:Date; b=ot3Sdp26NgxN6/snTq5rKRYpsh5MrORlrwelPN+3BQVUrFKwtphTUI4k3w3L+5GpGaW9ABilMyY05w/Kxhcdw5YY6KX5g0ubyNSU/dQY9nzoZ/mt71fVPVGH3pyckzn98BJfgk+DeTCBO7fWU1unhDc2CHnrUVBbADgG55l5tUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRHXZ8oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRHXZ8oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A483CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746217793;
	bh=eF0L+J3N2PQ7pHoQD6+k/QwpUrf1YSWaYDHWMvZBp2A=;
	h=To:Subject:From:Date:From;
	b=hRHXZ8ooL7bZymTIjpdEC//L2YgA1qWLX+iskOjOuW8xoCRx1oAo39xoDqtpnrpkk
	 p6dUBygT88RdDP5xOv4yD5PUIhRR7ew7aF/Dn/MyJ8+285PBaBHNoAA3k+eCF9FEO1
	 8Wf8hdTAGaxeAs7dQEFrdOWVvf5wg06CIvtnYMYF+xerMhEzJDOn6xTBTJV5Axy1/z
	 IiELNNTut8iid5EYm3m4RUb+XSKIagK9P/VPzsplgwA/CXuv2vTgs2Aub9G6p9Qtih
	 YpRkOFDhzA/64q3KvRsJXH1N9PcCDotgaM5uSmVm3IvBQqCrtP5HtZ9kBVVd9df9Fw
	 ljwnr65rmXH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158BC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621779357.12574.8398168825313986040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f33e946cdb7e3c5555a9be4b9288166be539e23228d007417343fc792e91c1
Date: Fri, 02 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746217793
