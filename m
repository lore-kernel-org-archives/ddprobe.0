Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EC42D77E5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783567714; cv=none; b=BxWTMRsEzHSJagQ3PPFDf5Z/pqhrFFApZUfO520tiwLoCgR0p582ZHJD+qervA5jKptXbjbSyQOdnjF6p2W69+2W0GZdNF22Wxz16xK0yW5vk8l1MP3j6MhSaAtXye+5DsKQYpI6Ki3EkjU6ycdGSqH4auglrNmgpo6YLVe5y8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783567714; c=relaxed/simple;
	bh=p8xy3NPlp2wFn9pX+Sys1eE5o/NVdSkFnxa/VHt1C24=;
	h=To:Subject:From:Message-Id:Date; b=Q4URBxNkvHUWeRPrjlvr9L8muK5Nhe90LCkinUjzS/0z+EuhM4gzEYVEJPu+5BvJ3u8U8BQFtcXLe2TI153RNt34dxMxnCHCeH0dCc7JKbnlFT7Ei5iqhMJs2A4PdC87UvZptvVYeS5+rI93LNGYqZyCnKB3TDADqHoFkWzzmd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLKelC2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLKelC2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EC8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783567713;
	bh=p8xy3NPlp2wFn9pX+Sys1eE5o/NVdSkFnxa/VHt1C24=;
	h=To:Subject:From:Date:From;
	b=TLKelC2PhIRESakGZVN5+90z/9H7X/UlHghNTv5GRWCbAzQUgOsYOqF7x58zWsmS8
	 dIQEJ1JtBREwj3JalSUdyFO3Z6R8QxjKV59e907B0SnIqOzF24LhDEb86qab4YSJc3
	 uxZpgSLZI1Ud/OlZs7+N4okq0wtZ11pqbnraZbmo20SlQoZEMu65ZkKeFyyl4FVyUj
	 DzPL3xqX1DnTfZQwOqhIwFHgkzUtrWNzZCYK0r5mJ++mSljSMBa2efvcaN96pIJhM4
	 YMN5slCYTCEnGuYzZP5qXaYGfVyj53CQZBAsfAs04uedJl8P5x+tQLf6/4iTQRoJfo
	 g1vKWjn6S2XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D4CC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356771368.19970.17750826462128545176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c371d7af6d9fd88f7546a913e66047dcd5503fb734cf5ba7f1cb2e9c36876ed0
Date: Thu, 09 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783567713
