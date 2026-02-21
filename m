Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A875267B89
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771636494; cv=none; b=fcJxpuTYFwLpXzgDBqH+iEJ6bY9neTaU3HzDLLyUV6q42okvuZf/gmNGIbQnE960MC3VQh5gy0+c2+gbNaDGOx3u6woJi6jd1M8WZKLmuBk0W99VlSHTj4mX+HBbNPWLPEeUlN/SeeTKjSI41mRKwfL2zwPxxuSGnmvRbXkzp1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771636494; c=relaxed/simple;
	bh=q/r+B1Q1yoWQjteiUCEe6jslNrUKCVsV28CWEb/T6RM=;
	h=To:Subject:From:Message-Id:Date; b=BlY/jEa6BRV+2V/+q2p4juTX49K3mexk01P3jvWaYcOJwoCCNUfAupR3PiWaqQrrDJeXUs+3o3lR7G62lKFutqLknKvdq3OhFi5rMx264gjN7nJ8M+ikhqVpS9OaO1prAgGrLrqxkJ3lxJlR2p/uh9X1WZDjjqidLyeWHw8bOj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXcP9o7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXcP9o7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB30C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771636493;
	bh=q/r+B1Q1yoWQjteiUCEe6jslNrUKCVsV28CWEb/T6RM=;
	h=To:Subject:From:Date:From;
	b=fXcP9o7kc7LFs4gWJNiYidGLdMy0rT7KtvxeZg2CjcouMwTGFdw1lHHoUZ6LbAdSr
	 uzVkpOKG8VSrzI21G02Ym4AvfeWiLRYlaKAbotx6GEvs53wcsOSWsZuFPo2ThoksqZ
	 pU8vza5Zj9/t91tDHbXCDxnEUnrZeM2jJHuNbO+Lm9lWVnkoj9mEmia6vLPodLDF9/
	 isNqlel6/RdgYqleU0BYIpbZ5ae5WaY+jQQcbB8Ha+KlasGqFsTn1Avzdj9JsavBqJ
	 GrDqbZDwHDxevgKRTJTNNvmtkYbnQ45YImcy+yy2Sb0LmaAN/ealmPiDkg8RPyxhpZ
	 WbtM2V/KEz/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A047C5DF69
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163649359.1172.7780625976779383519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb14b5bf7dd323efde59f7e1a7a5e3ab48af5f5e59a87511fa6a5fce84c6b87
Date: Sat, 21 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771636493
