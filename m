Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166BE281532
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788482434; cv=none; b=NqZLSBCtSJfJIHCgig42M3p3oQvFALrXDuVOqXhqjmH2B2nPEr71FDRAH0tAzdVQXdgOrcwIbc8hPhYdYSfSyO4NNqxJOfgqM9PWvlGD5lPSvcsY2uoF+ZY+/qVm2AqxvmSmQ4OH96OFlWIVbV32j7G9Ar6SUpowNPAjxavDgIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788482434; c=relaxed/simple;
	bh=zFwzu8atGLKPRFB1ry21ZXrL0xJIvdtLFiWehkpkg+w=;
	h=To:Subject:From:Message-Id:Date; b=GmQ3pCYjp4jn/1FbtwMZk+pcpBvduRSqC4L7pTnjvxif927vRtuKRVQy+unzG4K0P9Hy4AzE7N/7oBb0u/L7d7rP0jngOm6ZuSeUn/9kQvTlXKgAiHg1hVnGNXhg3kvN9c9S8qBlwccGCW68SCZqLpYdZIyzF5g7jtnU3KMeOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOUOFT8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOUOFT8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF38C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788482433;
	bh=zFwzu8atGLKPRFB1ry21ZXrL0xJIvdtLFiWehkpkg+w=;
	h=To:Subject:From:Date:From;
	b=HOUOFT8AU76bRhZ/DW5s3KQVPjZZtDcoFW7VjWaqiTXH1CnG1BKHS9vPRh947YuO0
	 Y/pYQ48WfiGCG2sQdQG+H8jHa+Dg/38iIOUXsQdfsgBLD+icK23ymwFRbOIpdbFqEa
	 l1WHlxHf4ISw3qHYxclS6JjQjuNMUAXoB533hZ3vVPFJcqpudgcJ/HC20ppVffJXzL
	 MXsz/gAUN+pFZjNXLgkxzWKRnHw2ZebzzkVp9aVaBxZtxYWI9lcLVfsDfHjdW30kHS
	 fXe7LK+icAwGwvnSlfUr3onJZU5zpM4cPCPgbNPcDVqS/S6f7RJPId4cwt39U82lQt
	 4KjqlAlMjI5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DBAC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848243369.3047.3872205059003001461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d30d74f3b021c70704d29d0e7b29f4507028bd3a522c576ed81c1711332dfc
Date: Fri, 04 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788482433
