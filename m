Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270AF33B6E1
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771458294; cv=none; b=WULDPzbhvW+JJlHVBsVzPH95NfsqYUIVdnxe9R8I/GG0g9+B5TgzGEIWcrbHe1lcwBfbhAfHyzVdqXfemN0IAv/coWZWEfN6dpOMxa/8PVipwJ+UkHBJeS7/z7Hxo6OHIEz0+dFqYyP4PD7FGLq+PzICBnYAyPtd1dONGqCpzYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771458294; c=relaxed/simple;
	bh=YGQYmxhHrDF9V3lzpEjeYlmjDQxrVrrXKqJ2f57VYTw=;
	h=To:Subject:From:Message-Id:Date; b=Nv8X7qg3IMRTigeZXTyiWyI7DeiwutL4bWHN/66INahvje+rhmr9A60uNfzYO3Mt0Wok8rP10XzD9n2yqonnqZdqvhe4/LQpczgAmgw0KdSCvNc1LwA8l5DfR/avMfCDn/yLmMhScr01TnOFIxt7OOFcyPn1JCXUopeKUi8wT6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp/Kab9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp/Kab9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D4C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771458293;
	bh=YGQYmxhHrDF9V3lzpEjeYlmjDQxrVrrXKqJ2f57VYTw=;
	h=To:Subject:From:Date:From;
	b=lp/Kab9DwiPw6ZGIvFnpBpIslavk6DRA+rBFutA3ef9t2BbdaGQNs8F1+fgzOHYJy
	 8s0AWHj6HongVkRExYdZ4a83SAkNn7fI/hEPGOJNF9FiNWB4ukUwk514BZhDOqRChu
	 Bps9+gckjs42H4G7z4+bnOCBs+NI32zZwIeWO+iSXeYBo0YvZhtWJ6RbYbJBby1m8I
	 hPBy+REXTFroEQhFwNjT1MZtDC3vQnKSek2MzHZrY/ACqEIcusqcWQH/3h1Gd+252t
	 EP5IqUdMrXaGycS04okignmvKyGEUK68z6PJP8KYL3PdfEVRGWuvE01GESI69y4JdH
	 KG8MVtQ1LXMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A429FE9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145829364.2410.1329123960701963205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d788c83be1eef6cf3cf19245e79a2f8c8fef09eb15805b48bd816bec141984c5
Date: Wed, 18 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771458293
