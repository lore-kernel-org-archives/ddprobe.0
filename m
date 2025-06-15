Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0131917F4
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750022994; cv=none; b=qQw+6eEcdlt12Ls9IejqvRza9XMIEuPmnFN+/ecZwWb+M29w2KT9/AmhBnjFqIPPaAvchi0s8rMGE5zU0GYiYV0BI5sRnugU8o9eb+2hhPOY4Q4Z2zAaM4184lVYlHS+KMdcnhrtOkOPdKrfFdpNkQeSEfLiNrGjo8qSzCuFf5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750022994; c=relaxed/simple;
	bh=AusYz+K2HO9OGW1+EiFmxHOFdAkyqscfSbp8x9juG+k=;
	h=To:Subject:From:Message-Id:Date; b=QRjHX0JDmrfX1OwUttsR7pZiuubQM9sH9uWiloQ3wFjevYo4yxP7VyLv2+nPxW5Wf2/tvAX/nhwxLJI9QrXEvmAJ86HPGQyuMfYpa4clau8ZuyhYvJeFeIZktvNthGuyQt4x2LUXMGsUCecLQ378aEKJszYZRL/kp+lk4wpvIhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNoFxYFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNoFxYFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C79C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750022993;
	bh=AusYz+K2HO9OGW1+EiFmxHOFdAkyqscfSbp8x9juG+k=;
	h=To:Subject:From:Date:From;
	b=KNoFxYFDe1zGQHixK66D59upL2bgB6u6kmteBLj48UhsEG41PSwX2/GZc2XW0NMxt
	 UTA6/kRq84iH/pb7Jrgf2A/DX3uYlmk5pYLoNr2fcmOzp21w29T+vM+Ox26T3I+bhR
	 fM0SHnCSwVdruhzgKBFN5zzw4JRKE8JnWNlBLCPkdoPskaCVP7d6CIaQPyMXvJjuAi
	 HcPtOTXw1knLZnWcuTV7UOMp6bTxaqrqfg/hNfF5+lUHhFInJhW6Brb7vJzGqz2tGx
	 6hFdxXyfbb/YuSNqcm3wXWwQqp+Yy8kHO1MwFl+T3JLnON7niGJ1er7ho/Z2uOfY3o
	 R2b2yi8uzYZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EDC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002299357.7767.4426322381307255882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f71f37024bff5e5f8a9c5a614e5280568850707641c3de0c8201cf851383ea
Date: Sun, 15 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750022993
