Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5C53081D6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774446293; cv=none; b=YhfqlDH+OmxRrnsXwRCrMq5ou2Do1SLLT4KBSvOoJGnvUCZQ/NwtMmUzt2PbTVHDIczfdFL3mw/ipGBJs6hmRHWLtkX+fc+maVPcHFPX3ANF51RIdY5zZqaRoIO/5HnOGUpB/oG94VADIj9U8rE1B0xHNIcXgs324djT5gRRu9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774446293; c=relaxed/simple;
	bh=Mj2ORi66DZpHIQgeIGaTGvPBNcEgcEZLaEr1BnSkzxc=;
	h=To:Subject:From:Message-Id:Date; b=Jao2bDxnHVZYjOLfSnv2kuiT78RLpBFaHaimbus1+iPG6u7N6L9GTZntcjnGfqhi91GnlUCJF1lIWWURfcIGFzP336IvgUPepMtyLmfkQuOijiYGatcrWeZEU1LCvAxK0EAlPsHVq10BRRyxfCThwDAkTmaOs6cxSaMGPW+NJYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kg/83tTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kg/83tTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A187FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774446293;
	bh=Mj2ORi66DZpHIQgeIGaTGvPBNcEgcEZLaEr1BnSkzxc=;
	h=To:Subject:From:Date:From;
	b=Kg/83tTaJVvVpZKQWE+bEaxZs4v7/8Sz6OF2NNJEMKOfiqHJ2rwoo2o3C+0M/O+wj
	 SBrFlfgypU+JRK2UH5kZJ8+Dxn4svPU7n0OoZ+y5DG/pX+Vwj0MPERyQ5bPNBQBdnF
	 jSIgD+RYOPfMjeIOAamD7GmYjFqtzTCQZgdEl/xeEWJH4/l3flo1QQvDZ6OfAFkKP1
	 z3OQy11lQemgrVs9REIVbOHgf7UQkb0oC1lDlQFaFWCUCCx3rmjrIiDykCJjeDIoPw
	 aU9qVyu8Ia5XtlNyAPgd2nlgoJsK6eENYpWdYZ2icUO4kR9OjCG2WHtSiq/5D9AvaL
	 h3pmqHGoik5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7B106B53A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444629358.6004.3159985004874349827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcc6ee8acd4e74c12299427600375321f53db5e6521d503ab6df962da2dc2c8
Date: Wed, 25 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774446293
