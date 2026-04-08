Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEC526AC3
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775618734; cv=none; b=DLyeGvgaSSPXN8qVwCVOsoil2kJZdkqxudcmenWP11RE+tR0UolJJ0oNH63ZCTmzCZkSgkYbYB5sIYXzx1RzTJ7E/MViB6ZIYzvmGTk+sYg18pNc5W88pnRuTyaoY4SUA4aue5vq1sZAJ1gmEaIj/zcv50dfjo+d3YjThI99MeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775618734; c=relaxed/simple;
	bh=L9LhCE2A7XRNOpDPufIEPW+XW3CqXn6jzPu0U1hPzLQ=;
	h=To:Subject:From:Message-Id:Date; b=W8myHl4tk2Gt7vCg12Zo7UkbqSNlHgTPUWyLfnMFftp72XIIdg2qebUt+KVeB8kgKsEdDWSRap0uTfkHqcyER/0kdbANmU0NxuBiZMtUd0/nTOk7FihebfxCs4jn8tn0/dYGQZhVvaeF31HGI07pfdSV7GpeM3jx/hqrk3ALdto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo95HcgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo95HcgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02E84C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775618734;
	bh=L9LhCE2A7XRNOpDPufIEPW+XW3CqXn6jzPu0U1hPzLQ=;
	h=To:Subject:From:Date:From;
	b=Bo95HcgV8LtDLiOi21Is5uHMgu8Y1s57UVLUbtpIgOJtSm+WH6EKPjSABzDTSxqBv
	 x3Z+4QFuBGshtS/ocX+VKQQgjL1sTfLeXMym0lHH/koYFgVzhobjuzdsidxad4tAIR
	 LLjLsT2yXEO955zOjuZo/OLmC4rSMFT0aX0e1QQO+VaAAmu+s4TtEISxuoI4IcZ4fx
	 fbzjUHmGmw5aFNol0ZCkZ5o6SgWKVLLm7vUHI/YxdvA6rnJXoj2JlR217WqDBuurnX
	 WsZmO20IcKhhZxJNlJLwte0Y/eip1LciIMl+Vey2Fa30AkSnMY+jg5KWdsAZOIi6Gc
	 INzgoaLLC1Oxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0410105D9A4
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561873382.31282.10257543606322891426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff190602e1e3044ff4c850f88186b1711028a05cc4a3c6f3b6f6f1a82294d5a6
Date: Wed, 08 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775618733
