Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409DD19005E
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787629234; cv=none; b=OELw43amlTsBIW2Gg5x7kP+AaQbuuVyGBLA0vdnB8yIMntYZwrLTBHWMHPrvcjCa07Tn+OxDYDn+CCynBdJQOOlQdiXVUZch5lgGrBKeuVW6HOHVQZMFmtwq5WMi27Z3cckqBQYUeX8rC9V9loyajMfOtDQg8Tgw0qLpenW6la4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787629234; c=relaxed/simple;
	bh=jac0CRvLhkpOlfZeujvffXggDhF7T3jfVd6ZOQ6NmEE=;
	h=To:Subject:From:Message-Id:Date; b=oL8vbdhra3tgmd/Gwtg+WsLlmDzbCoUic9xaYA3YKV+0CN8dVZ2sBTJB2CIr9v0dvo2naFZVn1R5cfLxetwc7HTHmM+xNg6gEhNn0TIXpVAqkmtbCc9ebI5Wq9QpgZf8aJcWi87iEfxNfCc17f6XLj0Mltn6Car7LNP/uN5R8LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aa84iS0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa84iS0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B2CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787629233;
	bh=jac0CRvLhkpOlfZeujvffXggDhF7T3jfVd6ZOQ6NmEE=;
	h=To:Subject:From:Date:From;
	b=Aa84iS0wWzXgoLpblTEX8jN9vBoDHbjbmISixM7ousncZoMFJ2Nm/8Sw+aTVSYOWr
	 gkExTnMBc0+3X+V8VQPQkU+31bnr6bMYdpK631gjfvVT2bQHUDQwpWAFOz5KK1JZb+
	 k7r3x/XySprDjT8OKxiD8UwdINhgZtYB71lMWq6vTpq7IQIPzmbR8VegGJAOMECgvi
	 yxtcQ6Q5a1RiWe0g7sh3A4vfzGCZRhQ17c9MXwWzU+/L1/P3zwDyn7fIGWVXN4ACkO
	 aMj2rJAha01lFD25hRbDZR8frhoNH1w8idOLsftKqHs0bFG9Zof0GtrLgfLNFmey9/
	 yq8qbeloU9QdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFAEC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762923369.5561.14855290751779388308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1031f86bc42558e09047e87ccc35b088e181f070c08aff58a179556a1b7b6455
Date: Tue, 25 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787629233
