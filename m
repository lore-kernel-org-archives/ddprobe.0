Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED9B625
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784840434; cv=none; b=CD7PFmFoDzjw7JgDhM6Hd5zrFCsqF9aTSKwj/YEkrC973ywjf8fIM/DZ8mhmrE79UM3fDztSgUmeafLfgknMc2k1r3kkavTS+xbCm8YBQ4LQourl6A9Ky39n4QzpMqP+dXH3hjVBeHODGjzXocgQYR8bMfN0ubXJQkyRScIQ/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784840434; c=relaxed/simple;
	bh=2Pb0cBaGyr2Qd4c9pkrHuSa/wQMTDDteinbvP/dyl/E=;
	h=To:Subject:From:Message-Id:Date; b=vBB39QTIMQxf4JrFJbhm5I1zMSoyTTZjXMBGcHvuyYGlmQH5i8txnJI4/DtemsYZLlJ9NhjLQDzIyd69Yv4rmCsEfxWvauatKhhNUK2O39g5Nf76FxbWhbJteyTbXNfJsZLv8WQR0QwacTJW32h/61U5mUVCFXZDj2xOcn5LsaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqBbeJEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqBbeJEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41ABC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784840433;
	bh=2Pb0cBaGyr2Qd4c9pkrHuSa/wQMTDDteinbvP/dyl/E=;
	h=To:Subject:From:Date:From;
	b=nqBbeJEWw30YS/LLvGMOMHIf3SWFzpFR3AILIwNaybeSwaKprs9GwqkxoPXhzP8U6
	 tV9cvs5T7r1QBeMjzR4oUj8LjaomDOxuOwT6HyxsFwYFPTlRZRmiiqg2almfjv/q8i
	 tX9p+Fwjtka2ZTKgCJlGVtlQ7+Rsa5KmGGTNX/fc/1INF1O72rMJuvKPoL6BDJ+CQY
	 B9G1k8wlk0k9HSGVo5KIxS48pLm1XMMgygADqO/9xHNM1WYdL8JfR+5K3xAHpnKXDj
	 xi6+oQGAEHW3muMqiXpi8IeVwNP5cnBc2c4QRjoMmGDna9hMqzAabmAa0cOg9tfx2i
	 RK1v9WG7nA1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3DEC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484043370.20977.1828860805614585012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00503e76c19b23be6bec6c8b66b7654ec943c6660060bbfaa5fe9c964706bc2
Date: Thu, 23 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784840433
