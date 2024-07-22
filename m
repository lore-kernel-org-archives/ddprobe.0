Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37055C8C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721659554; cv=none; b=CF/LOBwGGmFBt4MMeshCWwUF8WDX5TPBMli9i2R5LyiSQFvLvO8eU8NBnbrbFCpBUOhtINShvrna65NQ66AHpsKq0jNVeVau28nOetNcmBo7jmmJB1R2ZaQyT0vELl6UXo+XseVJ3ToLSGVbsR3ttisBgY0sMeQvpf5WqG+LyX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721659554; c=relaxed/simple;
	bh=j87gHx/gijjD2X4G/TyS0X41PAFPNFX2mrufi5D7mP8=;
	h=To:Subject:From:Message-Id:Date; b=VurpY/n5CbZV4qCJW7H7wbCTtf7NGECW/JkyV6Ljdo4QCRaGTmDA9np573YOpl0EwKIEyxPldF9UPKGmFFwfYjsP165nV99WDfsbH2BWxNKY9n3lfVUypCcokBw1n5gqC3Alzqy138N0n1q+nuCD3M9hCbBiIBwi41+BPYV+pPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuGYtVFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuGYtVFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA1AC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721659553;
	bh=j87gHx/gijjD2X4G/TyS0X41PAFPNFX2mrufi5D7mP8=;
	h=To:Subject:From:Date:From;
	b=HuGYtVFK5CvQtH8HLsC3/aCfhnJjXuBlTYYcY84IV0DAskdT8PKeyywd3FAWbcLhc
	 44XhAYvB2wyZdggdqtj5bP+F3F7bYbqQsXkvEIrphGKlbGyLczzMXX02NfsNURdBNk
	 Nv/XL+emJy1mJ1pR5UFHAjrPchBos4VMYCD3SIOJ3tTKU7pFP/kkCvZda8renRIKu/
	 OI9V531qcxLLc7c8cgWym59g6sY1k3Oe6JxRkwcojlVXQicRHWzuArjYAAauASVrli
	 /8gd+QVmUhgLiVfkuryg3YHUurpa05bE8PXOtDRQXVmStZAR6fTDQgUiUcy9U4t8RX
	 HEbO6g+gsjeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C35C3DA70
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165955361.5521.15866924856985242274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce86c4ab0bf513f662039efde7238baa2b6d9a4df85b2243994767bca5d84b09
Date: Mon, 22 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721659553
