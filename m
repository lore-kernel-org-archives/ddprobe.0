Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9B1853
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756873194; cv=none; b=hdWsd7hb5BdAceJxnJDU4L02Kk/Y7NP9gkStYR0fsj2lXxAcMEfYbc/Twk4vSoJ11HW2Bd+lOiFwsPysJzC/VVNTRJdx5GgU746wFoVbf2hLPO9JNRFU6cL4N6KfpgpFBXq1r3Khrb9d+qArnSRWV5rbQluG693vg2pSvwyVFco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756873194; c=relaxed/simple;
	bh=qAnbv3s+NynbhraBOEaZQ1yRThcaYO48k5DmTvJgN9M=;
	h=To:Subject:From:Message-Id:Date; b=hKuPcTP035CSsQXEEKHhPpwwueXFMT3ljCxQ+i7xa6JxEzkQBLmgu8hGJeY1cBShjlschB6I5/ioNmTd7m6wMbDI/kItuXluXE9mXcI8ZczGRLR0cnFAjAV3rIZJbQzTDYfEfyAMjSgoBj1520eDnh9VknIbJjT2fUK4TGJ0Z/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPxugWyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPxugWyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756873193;
	bh=qAnbv3s+NynbhraBOEaZQ1yRThcaYO48k5DmTvJgN9M=;
	h=To:Subject:From:Date:From;
	b=fPxugWyXMTFS+3zg/60/sd7wztv5nt/Fw1tTtu4siq4CFpWb06OLyPuTgdxItwiGC
	 7bIJOhaXS3SGkiiexzAB+AFPpasHbXBJ5iIt8/AwbbrIvUCbbxT2xcQkyKpnr5yRui
	 CnaOkiHYNnLxYMDmxoRBEJtqxp3VP9p5/dET/Ogf0RyZTxyGjeAMW8+XmVeSR68rw4
	 BwrR9uLeRcZV2/Z0UV94LtaM4bvW+B97vsYjMQ7MJzA6WKgItm21n3BbslvuGOSlKm
	 jX+f91jaketr5+2KFLLq3ercCpNPzMvEdxNV1xZeKKNtIBEMqomDZ3Q/Ls+8Y9zkcU
	 xE+JyFOCebq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90394CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687319358.28550.13764933177918504863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ad8020e8397522c00a32ddb94b0b3770ae1a8dc4988cf0c2617897b0ec8ebe
Date: Wed, 03 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756873193
