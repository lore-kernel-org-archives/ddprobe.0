Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F59034041D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784597914; cv=none; b=r+95CYJJmDOgszl9PeIFXOnUqlSh4s8G/ordu92+PtH99Uv0JZvMEcCZx+C4GLJb7TYZ0b/RwMlZdAzNJ7LaDZlfvKjWlcXm87ZNio4swgEI84VQ6PURby0gPTA/F9fg9FQRKAgng9VMMuEt8/Xo7F8Ntop/BBKBjEDN0Prf2zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784597914; c=relaxed/simple;
	bh=L06hk9iBU2fGMr1AjwOFncSYahnvyYh//Qr389Uce4M=;
	h=To:Subject:From:Message-Id:Date; b=C6cfzsEL4PSu9hNPkkGR39wyZUw4xoOMsT/yY2y0Rv36VBkX369QFHwUlkO35puXgG6+l2hljjrTRHDpIY+sRsiWAPWRZPdiEvGJhC5luemCNrS8OVJPiO/DgIq3/JAK/UkuLKwsoij72oqZBSzk85S39NPtqmGA6c37UVN6LOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRLH19E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRLH19E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE575C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784597913;
	bh=L06hk9iBU2fGMr1AjwOFncSYahnvyYh//Qr389Uce4M=;
	h=To:Subject:From:Date:From;
	b=SRLH19E82HlEscrzi9M78Z1WqcILC1TZ2pI8pMtjqg7r+JPpUbY7HDJ/ZRpD0tF3v
	 i2bWeIPY4C3zgvJaUC0MPUbeBWaZg/F1DE8E51rGKCa4N92x9bwECypZZG/ljaaCRR
	 D4h9qxSbYbXZu8JKQPGPM67qvrfxdyiWbRe1/PAxiacLfBUYg0eUEMkga4CaHVDgJ4
	 n5xOMeOWIrxP2MXPNW2fwadIam01MsHzhdK1q/oAXyWbtbDK50EAa57xpSEPeQ7sS4
	 B+5hC1Q6su4CXgSeT5i1yEwnvsNcyCrzdj/bHb2hqlBZVYXQHIIWOY0Jv2H38hmmQA
	 ALtLCA+78cd0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED1C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459791369.8934.15337145396735759114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554a7e8a946be7b2e282f58fa2a9ebb58af6ac6dff474436130c1df573759790
Date: Tue, 21 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784597913
