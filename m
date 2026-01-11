Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1842B33A9D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768139034; cv=none; b=M7eWwWfoNV8o3s1d/4OgFd1t3cQeWjSfEYmdEPgeQn7HqrFJSgJR5Tpj2h83hGfEDmZKvTwUz2AqlyIrl+JztWG86h2FgtZ9hMqsZHA3FIpV6gcBIqGhv2DAibWsp4GNiDCSDBKX6Ad5r4rEvQYW/ebPBXE5YxsCapOSn1Mdbds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768139034; c=relaxed/simple;
	bh=M13Aa4ej3vrNbItgwEPl41d7/7YzevS1ze1d9fVs/Uk=;
	h=To:Subject:From:Message-Id:Date; b=tOPEv7948Gs4hKjVoDYDXAOXpU0uk/paeosDcOjsvx+bihWZV0z9WKx2zDb0HW5j3UKNVqqgnCbgQzN4HsM0zqmHyseqJccmO/Qr8b+g1qAb0/MLdrOsQ5BomT+pPdidJmTlz5dAZq+LpupSrTXrYi090nKGc+CJAcV5IOJ8c5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tho3BF1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tho3BF1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768139033;
	bh=M13Aa4ej3vrNbItgwEPl41d7/7YzevS1ze1d9fVs/Uk=;
	h=To:Subject:From:Date:From;
	b=Tho3BF1iBILgdJCeQ8SSIPVIDpph+epDAZduiPxp+kbXpHwHJFCBvaECmLHnNeJqT
	 SsioUHt+Jk+w+tQeCx/BPYPyJJSOHsm0hbWZO5KQySt0lZJDKFSYC3I/1RWVR1gvcu
	 azYJw9M3T2GWLJ4bT5rHVQRaowBbd3TzCNkr311jB50cHjEVODmRxkQwb/glGEa8tA
	 bQk98qJ6oVvfFthTkS9j68Qp8Gm2xOkh+ObuRtfWba+o8kttSOyYTk81nNJBCyRmPd
	 rJURtMPKJrN8dhHrbgKZ+rMGqxsIAgs9S7F00avGzGbF+kw1PNHKohhWeAaYhy9PBz
	 kcTI3hx6nIeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DDD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813903358.6274.14613325901199205522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e341d27c96a2b8173f134b79feaa795af98c66e8c2f5bcb330946ec6a51bb1b8
Date: Sun, 11 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768139033
