Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FF125A630
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757243994; cv=none; b=cBQTDmwjW/k8SS+YlTw1HF6E/6seHpvAx7InP7OnG1lxePOWw4VvGy67BnKzBciZ/4hE1sw9SE2SkiUjS7BunGPblOvyxebN/nACA7voLH5eujhIFOW+Xk1b0i1Geg1xYyNG//zpNUo0DmbQ4G1vBbZ4Ogs7yTPuJlx25J+t3IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757243994; c=relaxed/simple;
	bh=RbLcy/USttmi5b1V+ZissKMVSwQe4kOzaoH5/ZiF6z0=;
	h=To:Subject:From:Message-Id:Date; b=ITZhcYVLqVFBs5oeY0HywQ9DPqoGXaS5xVCHnFuO088dqkgHw4vI5RpF4qJK2tWlZSVbmdo4b7p8/R4ankL444/8Vx947LqbpBSuNbsauR7LldVALH1fVmpO36eg5QP7inP10YP4wiFimsKggTn6xMOifOLWPbZQNAurWGIgraA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxlO+hJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxlO+hJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757243993;
	bh=RbLcy/USttmi5b1V+ZissKMVSwQe4kOzaoH5/ZiF6z0=;
	h=To:Subject:From:Date:From;
	b=rxlO+hJVASJPWLwNKwvQBgtmYNYWPeNQHFIDfY1WvzjGPFCKuOOp5E+Lzw+Hax9Jx
	 9EsHJ89vm3oNTaUaYWjzMf2i+tV+GPjoghAnqbrFXJqGIA5GK1daYE63kJBERM17Zk
	 d1+zdwDHMI12NRMJd++g2V1HOU/BfFlvqDSSJYmJm0BTPuMbMem0uwkS3MW4Xlrk+U
	 y7jc8bNBscMkXPvsqKh9oSKnfAtzK9+A1ojjH2rtwvZNBioqLpJ+mpPQfrcGuMihjl
	 bO7tgTmidP4GgY7ilRdFSoCJ+vh0sPNV34ohQNZeIgNMtMlhquHX37+F9PZJysM7Ld
	 Q2p/rIIyU6TYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB3CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724399357.25871.11052187051621780251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6580a975b60a8c86c4b508baa0ce3a74952696a0d7ecc5f174164dc760e69cb
Date: Sun, 07 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757243993
