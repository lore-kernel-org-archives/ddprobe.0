Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F98182B7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771950294; cv=none; b=o1l0umIPb9I+gQ3iUAh//ZvJusVvXG90DnEbKErf3djlw2Hyp5Dc6c9Zelbyudh36F/9cbLcsiF/zh89g6ZhdkBu2A9fw3/qXc5ywNxKv035SWUgbfuR6/fx5WVW8Jwm3Xk12OGAcZsp4icYTvXnBS0aO7kK1PqEYokXh0X4aL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771950294; c=relaxed/simple;
	bh=6yUKWx37WwNeDsIkjU2JKfXXc94wcA2dQxIaoutEcBM=;
	h=To:Subject:From:Message-Id:Date; b=K95MRgzCQXnag8SZQv4OLZSgeKIRDHR9NvMwVz99biewIyhumzflP0AjYElpOGj+AeaRHMezHaoKSChMTUhStpt/wL+EnW2vz5jKlWzbfuT6SFiWLyNHTq1sv/xL4gVLYklmYDnoWabFjbAg1miJJNLB+SMjic6szvOL8TVJEXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgmO3rjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgmO3rjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B41C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771950293;
	bh=6yUKWx37WwNeDsIkjU2JKfXXc94wcA2dQxIaoutEcBM=;
	h=To:Subject:From:Date:From;
	b=FgmO3rjpZF+cGlM21nH3BWbNmM4sT/7hNY0f3LR6oyS/n2hZQvAybSVdtrrHqjTLT
	 Nzn2wiNY4gXkG90D8YNY3Z5o0pZ4JUENKWJbMzsB5pMglZkRbpUSgqhMxzGEqYY06M
	 mrpt9CAFT1vOec5Poi3K4qfA0f+8cdT1rDBorn5XmzPJu12F9ZvzipYH7dDzifQNkx
	 5eMvWjSZK0yYL+qLKli7JPejZRwShlPJD5T/WzVMyvoiUqquycg+RP6+oJSscuOZz3
	 StPvPyDnLdDz0aGnVHQWQUMevP7ZaaHTdjwP1r/JwGPqYzn5rs4uElv6wDna1cDFIs
	 cOK1GagnRXlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181FF3C9A8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195029358.31426.1260647840275672338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9072a8e9512168f3eaef9ad9f05abac6ca8036a38edf11369f80c3d4e5a307c4
Date: Tue, 24 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771950293
