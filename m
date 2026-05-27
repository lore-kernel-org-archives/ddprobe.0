Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332FF423161
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779897754; cv=none; b=ugNTY8kQA4NGUAFob8jGmYjMUARhcBSwaEO6y+Si6X6sqE2BqGqfG/iJjGkCyVLDwxR7kSat0CJzylF211teI6VMDMqw7A1M7QXC1t+wqbZI2mfjyHlLmZhRgWIIzCE4QQiKGE9QvIzMXxM371blEHzMfXmfcSni4XQ+X43EbfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779897754; c=relaxed/simple;
	bh=pEtnZfOMqKjh7fmdBaSnoNxNmkBtfc3Cv2Ru25N4XM8=;
	h=To:Subject:From:Message-Id:Date; b=nbcBzmTGtfl4cAnlAq7miZR4rwyKXXMRGDFexM1+xc39lcEVS90YcfTv0gAZuDO51delvlTlEHujS806ZMh/p/Lmjby0ahEXb5suR3sXcW6tZ9QgO7s7nmvKRbllemUeI21LwZJwgc8DGtnXmLTeyfwDTY3IFJFX/rvev3NSTn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5mA6RGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5mA6RGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9291C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779897753;
	bh=pEtnZfOMqKjh7fmdBaSnoNxNmkBtfc3Cv2Ru25N4XM8=;
	h=To:Subject:From:Date:From;
	b=C5mA6RGdLdsi5zt32pYG6x9UFJrUUm0S/6pjJHOi2B12JQhKEIfwESrzquiwA3OiI
	 4OZKzwqHqvhHC1aWm1ykX2vLMog7ppwhA+FmWxYudz2qzOZJ+L9VTMuft970p9sCCI
	 AZCCmDqR+6aRcZz71wB3M3CzuzW+NU1cYuifFe064XgBECk+UEaw9KFapKAxGu8hBF
	 OpcvCFHiTqDxLyow2bh0gXfsL/G2qPy5Q6od1A//8MWqxIVF0c3Z7xS+FmbRq0AmEj
	 UEogkyTR1fDgz/HzWVxgkRe5FT+h/ouZ1YVZn96luyiN3gAue3RxR7NPgcQrdsovUg
	 7zwSxrPzL++XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C5CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989775368.17500.4859083906845179642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76d0bc6bc20613ca7386f5c256f251a2e03d81ce9f412ece5bd35588439b520
Date: Wed, 27 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779897753
