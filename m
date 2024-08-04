Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E39F17C9E
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722767754; cv=none; b=SWCuhCmE/+CsCaXzAMViNTo7caKXrxoFa7WbH+ssNLN3NibYnvj4jdHE/fhT7ZzjSi71adEY2WKASSRLXGAIgSs7Js8knsElZgxsIM0HMKEnwCN3dh66M1YIX04SW9deQ+OvejzYGOK2uHNaMeAxOVbcQj5A905ohlp7h9R5KTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722767754; c=relaxed/simple;
	bh=xVB4GhSCSju7Gpm92Sl8KxixvywjkQ/UtSRfyTTqPSg=;
	h=To:Subject:From:Message-Id:Date; b=VdIdxtSIw8Kis4ScLr6hPNHebO/k172DT1k7JhQ5c/IjM5jl10esoAWxF3NUrd320Car6kfrLUTLDWDIcKaOHcGjrfKXVTKqFOjwcj9635nSnxBzmBlAZgEjUiMvreF0xvCIgi8Jj2PHlKHN9KDtuz0+sU9rcjHlbiDAd3JWHQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgl6U4BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgl6U4BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD812C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722767753;
	bh=xVB4GhSCSju7Gpm92Sl8KxixvywjkQ/UtSRfyTTqPSg=;
	h=To:Subject:From:Date:From;
	b=Pgl6U4BSKTMbZI4JGlcZH9F+84Lh5hMs1vxv0C/nBmMqDkagK7chexL8k6E/I3lpb
	 Fgrrn1eh1RRYgLTKeOMaAh8TDgtveHFdJ0ypLTCzXJhw4Uq0QPH1w/l6EHH9GXDRcM
	 3K0P2EW2o3lUQYLFiNNmR2ZoVFnKnfXT5HlSM3ySo0s9rzD2lXcHfQ5vJtdVp53jtB
	 rz587xVjhhW7CHau+ErvpDZbSuWlW8FTZogH4oPsnP3ei/i70n8AjKRJVlKaq0Q4NT
	 hG498vpBJRnefb7+VkyIVCGg0x7Kg9UJUUGt83JyBQ306QHPNJ86l/H4vjArn/FJUG
	 RTZaIOHCoJiPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94029C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276775359.6685.8168699311151493598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d749ed3fcc0730e2319e4e6fd59e2a95e6c0a6d0fb8acc742c89a3519050f596
Date: Sun, 04 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722767753
