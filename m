Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426071E493
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740142735; cv=none; b=nLbvq3/hgCv25AGhrZ8NZt/reEGPCmWc0vGksQuiqtGrxsun6rDnCAbzpRYACMyXGyanNc+HSX+eMQw/ewKpCvJGwEetbfztviNsvfiog+x7ZeMrHIxdP5PgkVj6ju2gRsw/2DJ5eIlXvWXTnz8zapW3/nglRs0ptTm2wbP247w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740142735; c=relaxed/simple;
	bh=SWzALCB0C7zVR7qgFJQWU4hCdUor5dmkuF7VrILvTgo=;
	h=To:Subject:From:Message-Id:Date; b=ExLnwfxuavnWs5e8OnX93O5iVzSd59s2zl0YTeKaC4KsGfolgIV0gicUL04UcWRo3Pvra5lVsZl4oKYw/WPum8pOh2+G45i/YCx3+l2aLYi87DfOcHfnCwrIBQ49wCbEVDIZIwqiaZ2tr2sLGmrCAJQd+3VAmnX30nVewDRiihU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnRIVouH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnRIVouH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C1C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740142733;
	bh=SWzALCB0C7zVR7qgFJQWU4hCdUor5dmkuF7VrILvTgo=;
	h=To:Subject:From:Date:From;
	b=VnRIVouHkqYXxGjxjr/It73r1gyOBVFayOi7J8+rkwHQFyE5bU/3ONWbIKJ0qqcAM
	 WPwZh2myDmY6xao2YRGJdmvCmwU9AmIcNAfWPkM+jEL22cRaHKz7RJRQVKfgAnQT3k
	 zzy+34g4gK9SyWl2VrRdwLeDAcW8o7USo6oksSrrLWvWpjT1K0KscY5lw8k5svauRk
	 vH4ayG9pImZ5ER6Qf844axdRx9+urZMv4RCKWhyoaP7a3i4jEu8ISPGnWMj92kvxoy
	 7k+rfPOsFQtbrLZJE8jKfSpH+wA+q+KDchiHlUy4e1lZarr9WyVeQel08mR1/gHLXt
	 o3ftmz8JongSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E8C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174014273358.9439.7229348562942552226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadcb4d6429ccf30712805908c90f2b45910f4e9a759feb5f3df30a22b931d82
Date: Fri, 21 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740142733
