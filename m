Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D8F1FCF65
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741949334; cv=none; b=fSBwTVShH3eH0y/KQAcYwRvaKDKIEqsQGo43uz8N5qozXB7OfILbb1gdLlHUZgQ0LT9Q/5VGEqSu1j8oVKQG03FPV1mjCzmswKiCVZTp9oKiJNJ5chGS6Wl0ovoAWm+XIhGqDfcFA/JtgM6k7UhPzogobkZN5l+lq1PmflWqABA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741949334; c=relaxed/simple;
	bh=NwFxqVno3YQ7qKugQbMVR1pvja3BGFIyRyj46rXFINQ=;
	h=To:Subject:From:Message-Id:Date; b=XoszeOFFZX6m9CcBLbBXqF+X743xzRHMLvbGpsuOdjiXVI/G3yQRkFB5oypAh4mLXFN5qgXRA7kRuTz8AmWwj4kcjkcw/UmgXyi+AspiVnB5uD9aYTggLJHUwIyVg8w4NnU/uk6i+zPe5k0nc8i+Z3kGyg0gWe+SKoX19fx12n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuGwxvFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuGwxvFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B402AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741949333;
	bh=NwFxqVno3YQ7qKugQbMVR1pvja3BGFIyRyj46rXFINQ=;
	h=To:Subject:From:Date:From;
	b=PuGwxvFvsdcu7V6EE1+WZeW3DRree0jC4hjtM9Zt4yahE8pI0R/tGVsKq5EXN0caF
	 R6aGMqNU6w+KpqJHhGtliTD4kl8CT+U5ua9uFAkGICAMgXlxr9hRsgXovbAlK1+V9Q
	 tLGmrkx0xEbCUiRpdDswczjJOVpkryYDnsNwnI1VQku/q4DGNGzoU4C/38LF3zz6aH
	 RnAW3eYg26IJYsurs3z6pcoaSAV0S0bxDpp2Rmn4l2SDqAT1DJGYW657Y/j29io6nn
	 DKrwsdN0ugMVITlcHSjgqxxM1MGc8PQ0iSS7cMVHyUgVAx2PKDVY4B4uzUFLsL+uEW
	 z7NccC/lSEtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDE2C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194933362.15331.5546711922270204766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72280b16ea80f729bf3634896298bc39013fad15c5e1aac0904fb45291ed3ad1
Date: Fri, 14 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741949333
