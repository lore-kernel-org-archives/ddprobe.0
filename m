Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06B254B1B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746827994; cv=none; b=h1NxHdYMSEKGMoCS13j/Q0mIfF8uj7de5zKwMnzKtiv6Ac5UQD7wmgwVxGkLDNcvJw8k4+3re3V46bxL4FexLjGhanjUw/uCG27bmOuKrWRbkEj7e4h9hOmYUEH0WZcLp5jspagClReQnJrQ/PcxSXZVSAAfcqCGEP4RjWTyGQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746827994; c=relaxed/simple;
	bh=QJ6CbeTz9HU647XqJda7YUfVSp08Wu8XeE6u1sbED+4=;
	h=To:Subject:From:Message-Id:Date; b=Y2mKn2sZ385gLI6eNcgtVYoOPMeuEjqze8zzO3HF+8DGR4EUUyBe+MY7DV7R7T8JaOjR5H/iSbQL6aAxeX3wmHO/fVEc+XWX8ludrXJvfoEzgWY59gAW+hAizU0bQjEEDQ4ut8q7m0ZXGK1nzy9ElRb1Sjl3klTtBaQL8jJaYGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVBVUJZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVBVUJZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB1CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746827993;
	bh=QJ6CbeTz9HU647XqJda7YUfVSp08Wu8XeE6u1sbED+4=;
	h=To:Subject:From:Date:From;
	b=bVBVUJZrivRdzBejhI+xdAWk4sPckcUz943+WGrFe/BOWJIQ67aSHXY33xV6I8XCa
	 WKnSS4BR7Cc9P8nFASwKA1tEps4sQ2HNbX2vaoEEB+Byu+InTJCsZkyH+yNUSpT6y0
	 IrooTL4AVGC5viVpLd19FL/re4ZMLoTlNZvVnF1eDcuCYNROiugNMRiCsNfFwg+jPl
	 PCSFcaj1PQMJ+vV3aCi6uC8Wq7AXpuMTiw++AwKLRIPhrdMFaYiCRre/LYPeKQ5/oq
	 itIYJ8FabWlmwRLWBtf+VZjWYydFvUuGnjHG8NBqDYB7e3zPedi5wf4py52CeVtXm8
	 mizKx/p8s2XyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E297C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682799357.24825.11078926920966113040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b88f997bca9dc425ad048ce0f41d93e4bd8603cbdeb29568df950f57a4f2fbf
Date: Fri, 09 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746827993
