Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EA227BF93
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784352514; cv=none; b=IIX9ychEfqhY5jr8cs1tTVYh0MCv9gLVpzR/bqqH4Fpju9JeFLgTBDzpua9R3i3EL07wHOhSI0hfuDS/Vrwshem4bcHLuoXYmqJrQB7S4dV1lxsW7bGlUY2GaafLjFeEz4Kmibjzx0kAfLrC/UeH/3gUc96kTbE6I72Zhwtng30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784352514; c=relaxed/simple;
	bh=X/L21edDREaAc04XKzDFn0EcE5CJ65oTeCtJYZdoMe0=;
	h=To:Subject:From:Message-Id:Date; b=gOagyGgHjld/4MXG5jmIn111jP7cDYn/kIizO8uB0Z/q0Y6xUaM6veVvYvO5wKNcJcpdEImKMr+8HlrXqpEcpIqiXj4ZtWLY89bQR97QJiJmw0bKHThii05Z2liY7UqOwmy21eB5/hkzmGH3eQUU4fdxj1U3wLVGCzdlFzNded4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqX/1kt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqX/1kt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC69C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784352513;
	bh=X/L21edDREaAc04XKzDFn0EcE5CJ65oTeCtJYZdoMe0=;
	h=To:Subject:From:Date:From;
	b=sqX/1kt+ALoonDhAFlnvrainL9FUjjnwRtUpxs7SmA5dDfs9GuTX+2KWimuAaERMI
	 uyInyxeOPJ2rJ1/lHc43gnNLZEcX9BrXRrNQUHWM7UxafTjWaw5HYez+X6dkY2G0bK
	 WvBF8aJERrG7ctXjF7zN5olIaXV82QhtrGXTlbtEmF8RI/RufU/XRgFKjmhanWe1rm
	 29oT3/AVRgOrUoSefkiG2gpz/+FTaqMd6Dh0stbMV0rwapEKU+O1Bw50aXHNWrMFJs
	 7d05fUJ0+oo9bBFO4nsSbFgIdrZFTOzpt2fsLnvefKwLS7qrDSi0qx0pMsS+Rs0qlp
	 ZThngpdUcp75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9510C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435251368.3109.8993133946785194517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50ff2ed19682f8b5d3773dbb0b9255165398cccb6b14a5104168ae8897ff62b
Date: Sat, 18 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784352513
