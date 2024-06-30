Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503787E572
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719751463; cv=none; b=jUwuCtUoXQ5vA0xLoB4aXmT48bPI9w9XiB+4PeawDorpuEDpcKfqZIqnKcoYY3prGLNUzJGOEVG9P73EvRvK0LYoRMm8WtTxx47AsXR89Aq0EvPMpW2DFUNzhKGR1qLz6e0b42vTBKi8b1BSoBiayajBiJmmt0KaaZYDvH/25Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719751463; c=relaxed/simple;
	bh=CL9esr2bEpi0Bt53fXlKhijRUwp2byyj6xsJ3hoSqDs=;
	h=To:Subject:From:Message-Id:Date; b=X0muSPM/ML8Qos1BDnwek7UsH2fSryDLMXiKVQ1kUlQr2C/I4pu7TlgntOc+JbEEaLBIcWxoX/6Rsz2KLNBAIar64N7G7E1J0g+sM4B3wIvcl+6l+60006UL3rQ1E+v+Mhl+hskrV/1a4KU5YGoZatNI1wf8ICsA7AFilREnFtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUFOexis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUFOexis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC1CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719751462;
	bh=CL9esr2bEpi0Bt53fXlKhijRUwp2byyj6xsJ3hoSqDs=;
	h=To:Subject:From:Date:From;
	b=CUFOexisAQdeKasHcgCBOdK81OFupn3XURoEgZjcxFAnFGGIFr6bcd3KwSRUb0Hms
	 r5T/eQRoTduz5UgpXVKz2twwII2t4VVZIfV5BJEA7EYm0MURswhG068NJ6btFqjIFB
	 CGiBYshmE/I33+HBh6+jgHB+8a/Ww3uYsrcANZ6j+4QKCNdxO0t7mAfPjC/ewgmVTT
	 mjWvIfnH2zeIA+eU8FwBO1c6IW7gBXmus06PYG6ZMiEyszyV3FSin16F4uceKIWYV8
	 AucONgeG4kZ6QcHgiY7gwKsBy60rqRBHAt55t/LhOO/NoLM1XAVVKGgcdXo1nj9QkJ
	 0OEv3yeMfVS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6602C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975146279.20587.7479954253467250265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18a14079f1c6f42b0a00bc8c52b908593ff58d907dd563f1a9a19e81a4f88f5
Date: Sun, 30 Jun 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719751462
