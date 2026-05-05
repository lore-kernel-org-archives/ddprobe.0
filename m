Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914902989B5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777953454; cv=none; b=VmvjcHsPtoFJ9V/DBD+iHQ7v0CpTxzGUEOIJyzLaE6085+WFpGgq1M1u5thFNIV+VE6/XChmgX7uVcgeA4QB0dCQg1C5YtRxuGZ+yZa+Ms9YzNEOA/NnLfFfnEnhmO8d3zlOKB/F0HSBt7NxyJmGVeGWHyXl9DbrLjmqyZIkcrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777953454; c=relaxed/simple;
	bh=k+KCpflRV8JVXDqll961ynoRGLCz0DFQg6kc9dE5kUc=;
	h=To:Subject:From:Message-Id:Date; b=oChg2r0m+4UndzoGRnrE/V6LRJynur+5Ch5rSojhvfcWEFrqRXT4zCf4aqKGQNwIb60S4mfoTRLkQqgupBA7uKu+H/HE1wyxL9Ye5wG2PbbAVMFk3+vilt0JBJmSVdCLM/hhSdAM6vFMLcFqaq6H0VTlTUFvaq814CrKTF07PlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgpX0SVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgpX0SVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF88AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777953453;
	bh=k+KCpflRV8JVXDqll961ynoRGLCz0DFQg6kc9dE5kUc=;
	h=To:Subject:From:Date:From;
	b=JgpX0SVonNA1ymPqnTATgcs/J8kL/kwp2bdu5oX7mOEWewrjov+yWEhPJsLUWvGu5
	 hzI0cd54knLI5c9cYDu92SpFQgY0ELhq4Grl7oP2OJJ758nuZYu+MrpynNFdW3PFbC
	 eS7yftyejbbJcvO310vfjz5ODLHjK8CSKBLcv64/Gw6+JVd/8kX58GKGzzhS7feweV
	 1tTx7spjOzg4wg4LE7IN3Dlk7f1WcDOSjL7w0bDb5Rnpzbfe26V9D/WHbpNGCLmFcE
	 YSi36WrrG9ERIvTFqXkn+zfPTAJa9fNa+h93lRISj+rNn6/nkQsh7uQVRAHxmmXq59
	 oUChN8N7vMsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C6FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795345368.2080.10726625029706212975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe82332d2bcc3dff5b855047da1d41dfe1a563c5143b2cfadb9e57ebb37d0ef
Date: Tue, 05 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777953453
