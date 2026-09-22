Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D983A4521
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790073635; cv=none; b=Ij35M4P32Wr1We2poplXWxWXHFrpp+xDb+LcRcUNo4P9nqnp5obKm3aiLLGYVrBZVo3i1Y+yEhnxwnhXSHrs0/vLyAaRIpzUgSSN8/yNIPw4wn9XNmO0hxtz/QhQYm6ANxB43TCTahZMrxZiXacpZSZ643kpYXN6dOTH4qAKZzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790073635; c=relaxed/simple;
	bh=hx3MQYLyV7dmEW02x+i+HqA5snIw4yyAuF+4TwbwqRI=;
	h=To:Subject:From:Message-Id:Date; b=ujjiMmCZE/vIE+8KJKkGRvjXtnExQCKCPXwaGpVOSbY9iSaUtqfDTs9DjemH9eNuZUaDAeXEEMeEzi9eeRk+Rue6aUHt3TNkVizibTSfkD61dQFoeSUY8AdOOKKuPKw6nHw3GaCiEifPhxi95hk2nOpp4RE95xSXpI3ng0Yrzt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HudDPxfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HudDPxfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CA6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790073633;
	bh=hx3MQYLyV7dmEW02x+i+HqA5snIw4yyAuF+4TwbwqRI=;
	h=To:Subject:From:Date:From;
	b=HudDPxfWYw7m0KyKRHKxmK1I/3dltMtTsQQ2zAzf3ey6JcTKdg9XrZGXKtZCX8E8p
	 mc1cWxMw7X3lzEkkLmrjmsAFPH4slCKrLra3PZ/SdakEc6r1+1GguMDFRSMZIoizLb
	 ExrswUscR0yBee9uhsruVPKCke2fHGtSUo3UqTlNrh/iK7WwDRRjwsbe2f7QR55BFy
	 cwPJ8eN0YJlbeB+yNx0DcQbYL/G+b7OLwUplV9hq3tsndxOSlBjv2LsAHT4DNY+l+u
	 UYBGwKLbtzwHQDwTNxYocV1p4dCQlJJ6CcyoJ3n0AALeaPj+ECyDbRtH4WlvkQMKVU
	 BklU/wQHkjezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD19CC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007363369.24764.15535206846346505111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcca601107878ea81f45d351c737b8d0d9fd50d97f1c919a69a1cda15c5a5af
Date: Tue, 22 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790073633
