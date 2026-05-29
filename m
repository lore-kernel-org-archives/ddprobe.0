Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1B3ADB8D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780094014; cv=none; b=IflDraQx+c+bpDKuslnSatQ/mFWilK9uVylrvkuZErLJrNXYFyGv/muVUkMWI/ZVjA62io6TfO+RZVxgTEVt+nvMhidyM1wjhiUISORyCFAYie//4vU1Lm2qskS1p35ztRlCSQNLQf29WfujN2voA4xGJkn/MSdJ8/f9M5QhJ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780094014; c=relaxed/simple;
	bh=tjI3H9OUKESgomzw0lBgFcA/kPCy8nOynU23WD7Ln2k=;
	h=To:Subject:From:Message-Id:Date; b=EDhVL1VJaLQrLFdDwCeammscDEgbJaflcXleqTUfRX9JHGu91HQQgLRjyJMOTvZ9dL2vv5jYeuBLF0069wL7YqreBD7zSJVBJOgkgFPEGZvmRBgz2ef5mXkx1rnGtDnO1ngfYTdHg68D2IwPaRWOgD65OpMxZx5ImWmCVJnOsf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUe/b0lK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUe/b0lK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C695BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780094013;
	bh=tjI3H9OUKESgomzw0lBgFcA/kPCy8nOynU23WD7Ln2k=;
	h=To:Subject:From:Date:From;
	b=dUe/b0lKB1+vgiQ0dqI8iv75MYTADcH6r+O0fvlN/56ih7nmoO65dpYG8xdjtOvtq
	 f9ZoOW+jNeseCbGOIy6F7+/Uh0gdRzPjBYHgLZ38u4BgNGopUwxtUWpbmuZbu2AjsN
	 75L2Ox1GLabkZJWuC5waASwUz5JEi1L+j4eZkAdQjMKGtwMF3PytpkKtl26o6fQS15
	 YIojS0XrvLLrRHIBg6GlMajATf3YilvncUPD35DXOIRWe8A96uFElUhcK0X3D0OExg
	 77jYpyu6KWfMIww/tTih/V1lVTrTsT3viFxvD8Km8srSEcDMkeFkS1iLGcgScgrScq
	 PQ/D1amLDzOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC04CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009401368.12209.3382658407793132037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab55fa5bcd5bc545a6947ff14720839b1933f465b5352de03a36f947e455ed4
Date: Fri, 29 May 2026 22:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780094013
