Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4927B3EEAE9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784014714; cv=none; b=kS+WPxZe5H9KzofBwqLqj6H9aDtP6qs2xhg6o4tWIOBzslgmdhPjAG5hKh00/t8ZYTkNHKt/wMeOAUg1X6j2f4+CR1MJ/UEfU/NT5hZnpFwVrWiznQxgLQb/A5QG1I5JGK9jK6Q/T4qWsAOEBy3HcrqdkXFhyyLU5ALeJXPN2cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784014714; c=relaxed/simple;
	bh=AiPaiVbt93AgkBDBudMgn36/fcDLl0LUCc3noudLd1E=;
	h=To:Subject:From:Message-Id:Date; b=Ej1OZBukTAwQoa6DZI5a+oGWiAzJStRxelc0H0PQgkW2Sz/08M2uqEUmi7NZWGQyxzLKypye3myl9m6e+vICWKlaJZYttRCM4qSPT6yfe4QSLcu5cVi83sMCOh1AsiCwLU8iHGcG2w5Rp4BS3P1infCYQJrqcJoNDaXeFcijXdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRe/oH/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRe/oH/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC551C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784014713;
	bh=AiPaiVbt93AgkBDBudMgn36/fcDLl0LUCc3noudLd1E=;
	h=To:Subject:From:Date:From;
	b=DRe/oH/3bWrecqOMi9IOaDtNPPrltIv1Gn2mwbFnmqfS2pEwm7DW8SzXWsaRJ5j6W
	 SErm+mBVsUscU08ogOGJJtzFhSY9lnjkqUvXXHDrB/u9/U9i49vET9a19tk42WWWt3
	 XQLY5248LYsXEqJFtJ6VzwiAoQHioKpor0I74ULy5EP2GGwwZk8A2FIsIAdgft49yV
	 91ZHr5Puqad8LZ2v9zpYJZfMzGNvTBA1W7wvYjHtvpvt0IMAadBWvMldIY0sp6RjWN
	 fuMnE1huCo+s0mZdRclV8waiL5drAjVNEXGbox5Me0QXPKaWoQ5fGfo4Z/eaTqGJxr
	 07uAO6kC3Qq/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4FC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401471368.22535.10925981592945313839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946d932be8a15e423deb627ecd628cce405c2140ede9030efb60276aa8c1094a
Date: Tue, 14 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784014713
