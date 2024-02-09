Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABB663A9
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707449897; cv=none; b=EcXTVQZt9lFB2y3N+/hgDW/s+mHyQARJGzfsDETXIMl86e4/S7ew96z+NqzBWIa8myKf0QKtstwTUzHEpxdz+Leggcb7n/gNE2cSfCRw5L1KsVntQumMC+mQYqkcT9qqhH2CshYEJfaMxBxuduYpozqSM2QCI/3P59ubbb53sCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707449897; c=relaxed/simple;
	bh=7IhqiT3M9TscI2vgui6zi3CYG3NCFZZ63lZPPPVPlSY=;
	h=To:Subject:From:Message-Id:Date; b=NCQfCgOVYEFtlkrJTvGFxRF9a8HsXXg4b7kIAXFYkzy6FlR7/i+7OpQOMosu0xTQ7/4PspjsRsqZXNzoNVIgNWqDm03OyZJ+Di/F9XxjlZk2ORxy2ncAg3eWpz5ZaL17dUOOuciB3xK3TC4g3M2pukjf5XzEj4Nhtgo36exxDwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkK3baFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkK3baFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCF6C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707449896;
	bh=7IhqiT3M9TscI2vgui6zi3CYG3NCFZZ63lZPPPVPlSY=;
	h=To:Subject:From:Date:From;
	b=jkK3baFTaPaX9jmPcapwQ7ueTc35kiZWDcBpuBLWNkxn4ofCbcpMU0GD2HF+4kuJF
	 HuP6uWw90E9nY3k5aPUyKMQS4/TA9zn9KM8dTaKwcJ842EDBh/6lqyypKJQIZi+pJY
	 pFT3cZFkAjTIdkNBwLzjGg7qG0is5JRg8dZTuquL2r8CMnlCGcx41XPNRrj7thUIoo
	 AxDJVs5/dnv4z61XIXVN+RhqZiHbA5Q/pbjLwLEJhhC5fTC82rP10X/YTPrNoctca+
	 WNjRUruA9MQQN1QMVcCqwx1zbhYtDe6UIkzfAOBmx1eGQQAV9aR0Eu/BFHBQDvtC61
	 r1ya05TRi2rqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63417C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744989639.15740.7155099157612146569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2077bc5c4651b7c1f009980e60643d5399dc8849d75369b1f99a6fcb0dbb84af
Date: Fri, 09 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707449896
