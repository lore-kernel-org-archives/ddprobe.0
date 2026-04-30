Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98F2C2349
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777526854; cv=none; b=Riittx7rJRVSdGEatGxSlSBV5PEvzi+Xo7yUwR18LHX8Mnw43TN3CdtFf5RcJDqYc5/qEqDgSYHT2Wk4RBoeMTDsNzPLlKNYvO7cey1f9eKPXoGHmb7YHepndFl9g2uUNe5oLmOUqRrQzk+GY6GNu0MUdmUaBBLRJhYs7e3T2zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777526854; c=relaxed/simple;
	bh=e2I5cOWej7hcE+0femOHDmjrkJQxFz3rrXGckwoR5ag=;
	h=To:Subject:From:Message-Id:Date; b=cawFjA//Kg62Ep6e8gJkATYlgUda4V9y2gSi0qEP2oxutV3sjJhj13+hLGE6Qg+l54nSEVO/z0VeidfGH3DDfSTt0qYJOrUe6BwDuaf1ltEPSB+br5jzju11bTjjrtyKxys5fBztvj5o+8+96KgxsWWGY64esTYf51T9vz8DufQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+pCfutH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+pCfutH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74D0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777526853;
	bh=e2I5cOWej7hcE+0femOHDmjrkJQxFz3rrXGckwoR5ag=;
	h=To:Subject:From:Date:From;
	b=P+pCfutHDAFH8mSMBCCneFZLggOUumTLw6UffAC8k0Tkbkl5HnJuTTSLnr7uC16IG
	 7aZ+wsqvyGd9PAgvBvMiXJWolQVzBJ2sNDEKCaIj+dqLQJvd3yDYqppBOTdJChrmE0
	 3VGkWTMB3t5jV1TFCvrzVi4LZyrPvDevgc/erJari9xm8vMwEuasj1L50kQDozNKM0
	 almFgtS0GvS2opX5QzRbGJa2sKunEH+2V142eG+3rTqgT3gcvU0A59L7iddDxTEKEL
	 LXEUOQ97knnqdCGrMFpC0StTwk+29xRzYywjXXVmGbWs7iAoRFbFVdavxIKWMYaaS+
	 3TtAmB5SFTP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A2FFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752685368.25652.7545786599008764643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4ed4bdc45b0a5c2779d40d871d3b8f0fb10f263ae5f4c0057a68fb50cb6136
Date: Thu, 30 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777526853
