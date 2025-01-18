Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57816188015
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737228354; cv=none; b=ILvDzmeTy1jfoxxdA7bHC/sjjUH/kDCKapoOFXmWWRX4x9zi1ktXaJz82GDaDOAxdzyTgp7dkRImemt+1nn9sdeCcY/XSB87qdo3chjytdILeVXk2kM/gM7pTQkDJ5sqwprTwAqxHw1ITpiEf5ANUt9qdRFXu4fJOcPGPnSssN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737228354; c=relaxed/simple;
	bh=ygYO/TCefL6SrDVTknXwMFFrltKVNDB3uRm15AKyBY8=;
	h=To:Subject:From:Message-Id:Date; b=fRuukTi+N6508Gh0bKxicJqnPT2ti1kc0v5juY0ypFmP0FJNHl58ybA0G0kRbSSqgpzF/zPx90KrcngLrE1iDoBo43vGvX17so4lUQuuHbsk0ltdNsPTRY501E77aT5AhUoLJX4eIX/nGq9BrU3jSDGvdYhwsCu+b9f+H0/dlPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5KHsYjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5KHsYjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24A3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737228353;
	bh=ygYO/TCefL6SrDVTknXwMFFrltKVNDB3uRm15AKyBY8=;
	h=To:Subject:From:Date:From;
	b=B5KHsYjCeIeGxxW5yx8e1hgm99piXkJFxFSK5D3KFE/s33V2ET1HI9Wb4A7xor9gl
	 2+IN0Q2S48vtsJ2yWyKeA8Ji3Clfv6A45+RZOi6NG4Wx5rAZNxm5xVQ7rCJhCxru18
	 TipRAG5AazvsLzCyYdRysyppLIDBxhfi1YzYHUoPLTdO2Fjhz8clGEm/43aA0Nno5p
	 E9W6uSdQWXHuXT1wlFPeaJHGfontOF1Z5XNImOhOy6J6ZpFtpVMHLtol5IErqklcSx
	 QtplCCxZRbfjWv/AVCvQPhPmrpRqEgrwYmZ7gxB5rM1XJtPT6EGVYGrS/ClUYLl5GV
	 y2u6vFR9ZfBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E569C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722835359.5288.3792004846949475239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb4612fa0cd21d3137920142f07991b75f590ca4e336d396009e0be501b852c
Date: Sat, 18 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737228353
