Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1A175A85
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774247094; cv=none; b=tN8myzucuQRWOwz2xwN7OVHt+SRexgfg3rDGUzhF0U6osJKX1PTM4yGkXx2480JhJyNwjieThJ+vPGXzXAtYy1xT66cLmDubDSW0+QZvoqlNRddGEQx5L8Fm9Bk9DUr81tAS6dA0e7DcI3fTij35jUYlNuE3mwJo7wTaO8YHO+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774247094; c=relaxed/simple;
	bh=djCdfYV2vvZXtcR/OfzgAC3vR0aWYilJVt8sx0QC7c0=;
	h=To:Subject:From:Message-Id:Date; b=DxvYvzMwSamqEnvpkyPZBTcoT7KC5edVQugQCJuQAj/IWjc1TNshtzCuyHFQlPWVbvGdWG8wc8ltf5x3f3R250Tm6NhazXm5nwkSfzSszhTkTPrUMY8d3+NjyVunUL0ZOHZJ5mM76vP7yO7LSkMDVgVOEBapmRnSfmMi9fPyjiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl8KXW4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl8KXW4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C10C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774247093;
	bh=djCdfYV2vvZXtcR/OfzgAC3vR0aWYilJVt8sx0QC7c0=;
	h=To:Subject:From:Date:From;
	b=Nl8KXW4jETUl5PD3NbVoseV9DVi6Yt9H1hSWUteX6zbcUfMubs9tAkxAt1SUwQ55p
	 7uptr2QMrExePacgvZo3sTkRqkQZzOfXoz94f/Jb4lYKTiLP/BawC8anZuseoeugZz
	 464+twuKGfYl7a0GcX4Bbn02E32mea+KXGbDNkNL/X4QZQTcAsaGpuRN2D2cunMnf5
	 tfXckGwDe3Emjk6fbcOjMIzpsFwyu/RwGLhc9q7WEErI4p1Nw8N3G72sxVU4pR1tj7
	 UI3HJrgLplwWEGDC5D9UqdLVrlz4EYPXMoKunQaOS6D1VfFaa0StjUxxEklm8dnsg8
	 pO+s6sZeGQx3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD1D58CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424709359.30048.12367076885966738309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e833dbd00960c641ac9e0dcb82b94939492cdde4e0c815fa45597945f9af9d3
Date: Mon, 23 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774247093
