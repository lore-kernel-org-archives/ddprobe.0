Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2088E270555
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757159394; cv=none; b=Qm5jAXMae2nQCDeEI2p0qtT/Pp8MSvYx7FfSw52U7Bark/gu5mSanIafVvdvspsQJSs4BxkG/tDPMWDTi8M92ZdYSwGqWdOonGhonE4Mx7yCG4kG6b1Q/tDpS0n26QKRyuwFvUS8CjmJTvMJkjjNn2XI6Fg+LP7TRG1jkPQXFqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757159394; c=relaxed/simple;
	bh=f3xuZcAbIvLPw1jQROOpBC0e7o+M0afaI5KfXOGEze0=;
	h=To:Subject:From:Message-Id:Date; b=pF7sr9hbw8Nq0zBH7kSzjSZWSMJZ2KHHIHMT1wlNzbYw99TC6fs4anCh18fPAe0t4PXymziSljUoJsya2uUSgL3aZmrVa/oAlY6Tmxabz6gbkj3JrRZI7pwQ8imATtHTfHW7U89gxSKVuRtk7b6KlhoOA2beTe2u6maKO7F4Ung=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeG1OX8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeG1OX8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757159393;
	bh=f3xuZcAbIvLPw1jQROOpBC0e7o+M0afaI5KfXOGEze0=;
	h=To:Subject:From:Date:From;
	b=OeG1OX8+tN6nfFOKHCynomMr1buW0vyXHFt9gOsiOvjLIH0b4modh35nvVvAOsSKj
	 hhl1K3vpE08ydpCk+/43KVMzHSR5PntuIXuD+oZ46A1cQ+rPK1ANl4DERqxmMpyDNT
	 YuPoVbTC4X4PoXNcXwXK4K0nkWLf/xTc/xqPTDZAny8vLwy5a8WzxibuTFWXZXwYys
	 Jh06zfYT5/rgFE+AuZgkphva5wmeJSgMdYh6SAVRu5bEbnJHg5QOTAoO6tQWhOBcBW
	 EZz6T/FAymfWxI1ct3hA0WprgG6nu2Y7MdJYqKCGKS1rUm8MWJUbP5hRD/vBrtTydx
	 4JqkqYkExbOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ACCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715939357.5331.5738477584290172014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7975a657a5d806aa06f1c8b33cfa0e392b04362a6363765e5ef41ae02949d8
Date: Sat, 06 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757159393
