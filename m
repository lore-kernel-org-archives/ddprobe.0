Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228491DE4E0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767014634; cv=none; b=gQAwGfDYtJn+fw3gIbdcX0UHJ1g29pO1WCi/y4fnI67ShKmyoXYkJUppQXnPgp4zwbPv+8/4XKMbkZeapWuJxpbUYg80A3djIkcdR8qumvltL1YdwF67M6eXuoKyMrqpcpWLGDwFHuMXH4uBH+MtJl5XV2eVlAvxfQ5mZ6U/AwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767014634; c=relaxed/simple;
	bh=6aJ7KFg32Tj0AnqluYDdbOt7X2CgGYm8vSJw2O0Db88=;
	h=To:Subject:From:Message-Id:Date; b=qVVjOEiYayA3VeRL5aioox9wroxszWGVzHNcr3bVPGSWQMnfkk7dW/Bm9Djo2gaVwkIzHEnHd97WADcTANqPwyLNNQqfeK6cGLZ/zrVjcCJDeDn1E5pfC9EUjyfAiDbXEvzYKWmHI88cfzYFccRHD6IJolCAAm0kAxJlgX1byAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk9l7j7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk9l7j7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB4BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767014633;
	bh=6aJ7KFg32Tj0AnqluYDdbOt7X2CgGYm8vSJw2O0Db88=;
	h=To:Subject:From:Date:From;
	b=Dk9l7j7E9/8TJkhIJsAVvUSDIEsMw8IDZ1dtjaTL9v4/W9dySWn4YMqDo5m6QlXJr
	 T6MlcULvgfxoRU1bTXvd3PG9jdBkoZanoZOkfovDbViEa6H3nNGo2/N5fKLfYOCZk5
	 EO815GU32tIqaSl8Fqa5h5fTa2+/2vXO76LUvHhSE1S6KjchIFs4buP7N13w/3+qXf
	 1pdFy1+n3yQIp0nURBrIjP+y6Jl1GR8HPFnR/xnDCZPFxNRbximNDGBsxWEHPMnoR/
	 otJpkc1yvjJyk47WPDak+yQcVeuGrV5qdmh8yPVOsDMOjwjcaxHGG3fi0sphUZ0nhY
	 xbDSsfJJcR60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD5E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701463359.27922.10266797021468751001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0f84e0a1972a2d693ec2726d989654216dacf9139671230c6728264de21b9e
Date: Mon, 29 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767014633
