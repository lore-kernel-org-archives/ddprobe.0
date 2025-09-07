Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E6517A310
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757288394; cv=none; b=c6JnCiCq6+sFoeGyt7Rd5ooOR8RU6vkNXgAhCZLsGFMUUEo9qUFQxeA1DvEsbXjR75FvRbXTDL2Eate6XhLkHNImkx0vm1MT/WHsNvW/L/dyvGCIywWQIxlxukQt5j0sn+Naq26st8ktv59eO9EkUZ5g+5RDL08WvmFWwIIGlNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757288394; c=relaxed/simple;
	bh=vYJAHkrhc6teexd5H1KtjBqIvJf9uUgjv/hqbcyiWaQ=;
	h=To:Subject:From:Message-Id:Date; b=SyT9/8UOuC21IDzvfBfdZzeSnrirZMpPyixHktn0h6GxqC3nVa1g+hffpqLVy0TtYSjCuKuMqA341mGyYPwBOQbKpaKOhmK+Cylr7rI0z0h7vkArVGfhboULTJpjx1kWfR8joRZ5OSOdFZpNRHCS9LsNeg9LBGz32ULOFQioAes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggD9zZnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggD9zZnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7274C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757288393;
	bh=vYJAHkrhc6teexd5H1KtjBqIvJf9uUgjv/hqbcyiWaQ=;
	h=To:Subject:From:Date:From;
	b=ggD9zZnzWd8pB4D8TG0BH9OPQ1aNBPAG4P3N+dWWt2z39xQWyXbUDwxioasgUuU8E
	 qgRR3oZ3Ql8nyOteiwaiWIY0zvk+hLoBxf4ahBeAHyY92PRYbhUukRqwPHb4e4ySNb
	 vysN8peLrBAZo/tUF8DNS0duwZnuKe+X0ejBETGxQUNcIMfet5fpEj5S5YrSWXIFwR
	 tIROzkj1eR7YoouoLX/uS3q8vjNNpk7MQdFOlIAsj2WEn6JmebVMxfSBlIhU7tQ1Iu
	 nDbKBuGLTMRScYmHOM13IfsZGTykb9nXiduvC6Sc2Kgz4rj+iKKg8APx5N7Sy69vKE
	 fOsho0TFcU3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728839357.21295.8205952383675350815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781c83e5e2f847c69fc27b16166fdbc1f99d7809e1f3687812f2e15720ac51a7
Date: Sun, 07 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757288393
