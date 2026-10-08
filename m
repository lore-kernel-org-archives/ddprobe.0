Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3AC446C01
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791494434; cv=none; b=V1dDPyNQxOuXk3zhf+0b+/wV/5OhG+xUQ/pRR1kznmkAwIj8qNr/kzzuMQEq0ANmqYSeUjTn3xihEZLUuxASSum4UB90IL0Pq/tjeoWjL+7BCq6GMe+r6MLZWHU9qYAwqsUAMpD6f9rQUpQCC61t1sW8pyVeBI0w51s84A8ZvZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791494434; c=relaxed/simple;
	bh=WxpbcFkwjoa5SbQ0esJRTyCJwaMFL7vTIiOq7KDZOGE=;
	h=To:Subject:From:Message-Id:Date; b=oFxpxOXYb19Bs/uuJFBnQObrlBOsvw6bCbmixo4qJIyM1vRU7QCfe2qDqTuytj4qqwm57WExVowRZDzXuzuGwTnDNBQR9D757Vy0AEV+Fpg9umD2aaZDIqfc1tY75g9NUa9HPRSoGKt7d7Xj5glL7HgnZ8ti2zidY6QFkRlvBmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es1QeZdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es1QeZdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB27EC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791494433;
	bh=WxpbcFkwjoa5SbQ0esJRTyCJwaMFL7vTIiOq7KDZOGE=;
	h=To:Subject:From:Date:From;
	b=Es1QeZdJuxV2CmarkskhX8rd8uhLoQgD0BzOj0d0uLX1o4uPBHKS9nDGfDSUNUdB3
	 9IbRzsaWmXTUS3d+LPa9AbqjAMdUE2qYHX/L62SXjHqJFZ3/FFn62GtMSkbW6haiHH
	 XMmNOkEnvY3ncY+5e6fTZFeorLs7dSIuBh7bfDLH2TlDGk4laBlO12d2bsP0XoKmEq
	 37l/nhvsxYdOeYHiepAwlxzkCmb5pJbuEFysAIBBcVNglK7toOmWrrE3Jl92idUQhd
	 0OV6i2xHPKOoDZznqWVVKXgW4X9v4VRQnyYIef+fpT3cUdILXZgtjVY8p/rfEoGs0B
	 pXl8tagRG97BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2781CA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149443369.24644.11750531232521488439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a4066fe0e69f456159f2184ebe8baa34a0c386fa123321850c5d7f4989e769
Date: Thu, 08 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791494433
