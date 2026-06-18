Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428F2349CC1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781821594; cv=none; b=RjeCAFfMpyoty3cT0Ll6NyqUac/pRLYHNIdUG9M5ygIWxTIUGJNwJxVht+keqDXBQHGDglFfhfn0pVVyWpTcOZY5s6sfO4ew9w61dBi55YHv7mwEgNQRLy/jUIp/v1TYcMjAbdytwoofSIs85lNK8SJYY12KHDrbrQ5jx49pVyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781821594; c=relaxed/simple;
	bh=eMMUKr5T9SEKwmoijS1BdmyHJH3yH+D9xLbiYIHzJrE=;
	h=To:Subject:From:Message-Id:Date; b=LMP3M6hBLM3N+EP9X8nKXhc6F4A0YXPywK5Ij7WsdPaEE6ydxRy/fy3fHHiI4t8bhml53U8PtV9ijbaI2c1RLJq7bguushmDwh6+Ihy6uqZY8P2P7v2qHr7w+Xuk4PyCnTEfteZgUFozjlHtvniJ9vTQk/nSEWDR8DFrDm5cY94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR08oiir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR08oiir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6C6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781821593;
	bh=eMMUKr5T9SEKwmoijS1BdmyHJH3yH+D9xLbiYIHzJrE=;
	h=To:Subject:From:Date:From;
	b=UR08oiirNE0K3pwjFY5e4/k8GRYZdobpV7JywHt8tWgECTgP/fSmR9V5wWe5M131Q
	 FX0OfuD3uQ79075B7cd64z6rR7wCF3KtP7tEdtivIEmZ9S7beyXlhbpn5twkjcPc74
	 CHdRCqVuzFPLZO8VZtj8Dm9FTe33mC3KfkXpZyVNgw68W9T3AZU2BfQnUANoBn6DN4
	 2d581NppQlO0NhO2Cu0jtBaTH13S7ilAXDHaprjYU7GJHOHPY6ZYzVQSKjJ7245e2t
	 rq88YuRpa/cfiMOq41Z7/1NdRnh3MkFFwHeMh6A3xvrlDUO+HAwYFQhOGjld+YWBHd
	 qJjAXqdykHMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DADCD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182159372.18027.4500367004771316085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9701b40e7b35e4ffc2193935f011043de681e14908843f2e1b8b4f2f76a430d3
Date: Thu, 18 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781821593
