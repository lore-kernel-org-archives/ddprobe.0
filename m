Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2837018C00
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750024794; cv=none; b=AeiVkghD0PiHKBytb/4lSNt6YEJktq6/8MhnSpf7oSLUq36d75K7i64vVfS7zHGu7FIzAi1KBQerF8bWGivXPrcRu2tHyx/zz9TFB+fEmggjDWaHL2SJpwHeC8hyfAP3KxYsZ1EGULerDkbT8gIj5FEkrR3VPf5D4MtJ2UJ3Uus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750024794; c=relaxed/simple;
	bh=URHygdiwHlw8TSiu3XeFQ74+FLvO6Tf456aqTS5zuAE=;
	h=To:Subject:From:Message-Id:Date; b=rYwFzLVdisHqY/A7ZlNr7UEPMeKydtqitSFcOgV3UCaEUsz4imbHQTSwD7wa93WHvzEE3u9A92KIcZ9eMBeJaX+prS6I2xAtu/WarFDZE4pj4npRPQGA8bi6Wd6NdHlPCBtA9khaC0D2MC5s7CrvX7qH6qFQVQtPmd3N+wnzUUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLwKIxxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLwKIxxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750024793;
	bh=URHygdiwHlw8TSiu3XeFQ74+FLvO6Tf456aqTS5zuAE=;
	h=To:Subject:From:Date:From;
	b=ZLwKIxxfigN8AqsezxUVb5EElOTqy0aIxWoSegUDTvygF1S/IF/62BvrR+roNtPdQ
	 7o0jXe5DTtN8tEUkYxKBM31E0eLgylBXYUIO/idlxDd5zQ1MG66UiNKhq4Dd/UCSWv
	 w0WwkV7sABc/Heo7zrfaPmzUMDKpmL+ES7TyuzDBqEpQaKwIe6InASUnIrM+yRlJTM
	 F1piqPdTq0OwXlI5yi/RK0vY2guzZKZmUxRpmD4MRmuJGnQtUv0FC/xvdAos/zhYGf
	 g9GfhdA9ZBwnSl8e3zZEMNp0xTsZWFKKX7S3w5sIfPColv3PBpLgfg4UcNeDuQQyo/
	 /pV8IelRnhffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BC7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002479357.10639.1055893662885613944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70826fcb4c6c3158062ab73c27be00442128583cde9b00772c49b0d4887778a7
Date: Sun, 15 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750024793
