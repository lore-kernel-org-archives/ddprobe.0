Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3E82D0C91
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757521794; cv=none; b=SbHpG1PEA4biNgLzSv4rolHedm4oUXJyinxI8FnoSW8UVYJADgjKdqIBpEWROX+bZf+xDnAA9S4xyGRmnWHKvtCSntSjHc4SEZ2LHKoPE1TJQXf6WeehKt+nHJC+tY0uBbWjOAGvE1GBZQMzShwMQ3lMa1nCHZVJnc1sT9kL0NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757521794; c=relaxed/simple;
	bh=043MS0U66oB+srY3pAqEJ5VvlBzwIlA/7b2ManItQCg=;
	h=To:Subject:From:Message-Id:Date; b=WgAnNpgQUN0U2TDoIcq8tSf4cvYYt1pAwh1+0HqqTdJ86XRC/2J0ODSwWfB79b076bGTx9JZSpN8GkfEy9KVIAMO6MUXtPWdQMk68trt6xkfbZ79OME551y2hJkKS716rMAFhdiz82KGP48LJckrCgLC1sgZa2x3TbZ5pE5dvJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQR1x7Xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQR1x7Xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E035C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757521793;
	bh=043MS0U66oB+srY3pAqEJ5VvlBzwIlA/7b2ManItQCg=;
	h=To:Subject:From:Date:From;
	b=RQR1x7Xfn1k9Hl8P4ZmNPcHlltZtx7PyQSMMIbXyGQDnxkbe+Ed0f/p2jlC0tCh9g
	 9YAgbppgdmpepdR9QeBYYv9oMFfgFXm1lIQf2Fun8qK2QyFmMyDZlNspGWpaHozKYX
	 JrWxVCXiOU+4aeCqQZS2j4YoyRi6XE+zoZOxsDYaHxO9tQpBAwPT2ix+WfCjGcvylk
	 e4O9q1yTCP6gx/GHDn2bxGGBvAihugm2xkrGhONh8tVjmVaCvWYmSnr7+P4eaBIEnT
	 0WYsHfpZ1cWQcVki7zvKld18A2xAHT9DTQoZm2IsGyoqJwoCYlpvJXXx7fiE/t5pJc
	 2R8fKhn1PFOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3FCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752179358.20128.12443151385449766279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544ecc7f1ef85a36083b643bc8eed127889c7eb294f4d3e0546e4abf2eff41c1
Date: Wed, 10 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757521793
