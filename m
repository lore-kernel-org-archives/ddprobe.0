Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D813CCFB0
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789092634; cv=none; b=trX/jsX5MRKQKpt9GAZj4J2QMc8mh/OHIV+O7rZARYOKBrZriehlKn2uRPYmUKluJv8RsFJCZYKXhcE43Zl1GGWHRVehNN/bNzDFJVJztYX66Ee/7bF1rT1sUlsswWiSt8NA4Vidq812rw4bD2DGEHET5Jy6pQV2wlGPk2mEOOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789092634; c=relaxed/simple;
	bh=X+APvDt7spn825UGgNNR4Jf5QDRr+sluzo9wgzqsG7A=;
	h=To:Subject:From:Message-Id:Date; b=Dq6L6XzZ+EuH4A2zGX/RJFVNCKbsmZlbfHCXtQP3S6DcSK/Oa6QMkwuTadfhfeAvfKMyGL2aPx/bQh/yfgweCu1IgtRH+A12iAu7a8gj+o7+Ma8SXCsSkuNo2pFnenCfnahcx468qNh3Mu1WUZbUKIuh4MSduPaNUHxJ7BfvXDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPMzf7yV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPMzf7yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789092633;
	bh=X+APvDt7spn825UGgNNR4Jf5QDRr+sluzo9wgzqsG7A=;
	h=To:Subject:From:Date:From;
	b=TPMzf7yVxylAkOQIfQ31bGjgIJgYVNGbwt7LCB36HNsNmPn4ucHBii4LvScKzmvsE
	 h15RBgufQ+u3dw0DFUIOodeoswX1m1+wIzKMMmKlKBBBXZYeVY58sQZFpm2NYvP6nb
	 vzRG/RTotw+GhK/uMmPpXVw9rpzsu9objNh0mEGBqDQ+rP2Yuf9NmTTqWny2w/PH0l
	 nZR1anQgZN2hpCLh4qVosUzqeLtg6h1gCUosNQj8Lx31jPPBkUWU3BVHj0AaFlkvSe
	 OFqlL9Oh+M5aDUaSumy7ohP5vVDI1Kc4jXFXSkT2PkSh8+tad/B0FgmF+07cJ67bFp
	 LOXYZBj71T0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D2C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909263368.8295.12293096243550721544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963c4c6ee7fda2ec6cf9d0ae79b3a23879d1e2f61e0f54ecc53ab31942f8fbda
Date: Fri, 11 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789092633
