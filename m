Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215653770B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753515594; cv=none; b=Xi8iBe7jMPrvXHWgfhD47iCqgdD66kftOrRnP4Av9ugnaSMAWArLvYFBCbTkts5STlnZ5TYkN68zx0bPtMhewJUvSvi2af5CfyFF+2JPc4zm298sQG6m0pbk6STpLAQLkKB6Z/Z7Qf19GAAMzoQKOPI46xFPMhLvR6p254dMPCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753515594; c=relaxed/simple;
	bh=Sf8fXKX5ARceBX+DpRXGNXBvOi32SSkkxiEdRe4Iv48=;
	h=To:Subject:From:Message-Id:Date; b=MF1dILRcVOUbLwEwLM4juLii774V28N7+WzN5xMCB79TQ9zpCeNG5mUxCso5fg/V66gNnNPUIAGRHVZwL0fhZmWbY6ckz8NNBreWubtHVV32VxB94zvqCwGHDROI4d7SgAkwcggIy6jvtdBSUiaAr6csfj/rwN8vDbzJyBzvhlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1Nak5KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1Nak5KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C09C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753515593;
	bh=Sf8fXKX5ARceBX+DpRXGNXBvOi32SSkkxiEdRe4Iv48=;
	h=To:Subject:From:Date:From;
	b=r1Nak5KY4DgbPvr+QJNkc3IptlPAacoCVzbOSD0VV57R977LC/F7/Meg6ReuXQ1l4
	 sjKfSPcleYbGunYeelrWxPZOOTUP6N++BJtJm+fUpL9Dy5d8mgXwZvn7dfQ7/iq5rQ
	 RBNpitm8RwjN6qg5k81jJLIUxrd1pRy3J+3BgvJB5gmLevD0jZ+CviVtyWjUhW3USx
	 fo7a4+BHgMHD9ndhOQoStph+rG09PGPfhpgUGxHhkkjRq6dM+A2iQaYGTznK8A0S7q
	 ACw3RTrMVlRLp9PMnsaHbvhun+eHdeQNf/XeVTYeVCRt02gHv/HSC3Ru+XJKGDG2F/
	 0jSUdXz/0B0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D0C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351559358.2346.1365799460743754205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfac4e91865a25184066c0590eecaf90461bde875605fd473eee9e9639996a7d
Date: Sat, 26 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753515593
