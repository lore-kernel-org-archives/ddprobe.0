Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4469A4BFE7E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789641036; cv=none; b=WZTH7B77HozE9tHOiL2XhPqA1bcCTWabicu6FUTTGcg1Tszi23iXBYM0PJsjItSPshfj+xtaRkB5++KcXuqImsIn05ZmpOMNJwytf+TMgfASM9T26j40ToCRSt0lXoN9lcZNeKUljs8TQL3uE8bf7OfcX2ojOVZTl8km57LW+dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789641036; c=relaxed/simple;
	bh=wQA5fDNOBcVuWiG1DA+Nw8j/P69IeT56IFJ+bE1fvRo=;
	h=To:Subject:From:Message-Id:Date; b=e+DfPo84n7nc97TPiAIW7aWd0AVB05pGpdgz0aJ6p4JlcyZL2D91XvDC0HOTVcqkqAqgMB+JrW8sXHMjvZJMKxnA2Pj8TkJGNCqDROeRyDuPPNXDIW8NQ5TJeRu4lGyMBZk6+TEKJW3Ew4CDEbKI5AsOKPjBRIOlsxJaSWlsQ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHE+vKEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHE+vKEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82C8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789641033;
	bh=wQA5fDNOBcVuWiG1DA+Nw8j/P69IeT56IFJ+bE1fvRo=;
	h=To:Subject:From:Date:From;
	b=nHE+vKEFUFzTkaJTOTK9Naka3XK1Bz1nuEUq0BFRue2NAAy5T59SsJVLkbHEn4yfF
	 7UR0LEOVVaLiO+5ASYpziG4HmKT0claPH0QgQft6TbFtMfATgFDl/UxZl+keE1pZsP
	 k/rJvp5/AfAd0pHhebPgCPikeDX1yzmMT7pB4Ax6xidFDRICjmAb0yZO6s2USKz6f2
	 J3DCOyIztns0QHb2PCGUBFF/Ci/eTbxI2TLkJwVFMY7PdGpNOgrJnBYGRmaG5xOku9
	 JU3QqDK8m1EEEISpNrM/Rxd0aHTvZI5963GLWRyVds6RureS6poQAooBsnm6CeBvHa
	 DaCjR3lrrt0Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27B6C982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964103371.15557.9439694607761677345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb1f692c736fec5c64d9c1323057f5e2fba033419cd4acf133577051c53b287
Date: Thu, 17 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789641033
