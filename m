Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123141FA16E
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546354; cv=none; b=I6YL+HvtxHdbRHD0vdy4sPw6QIdiS+75GlvjJq5ZttZHxtbgNEp1ba2GRxVAq5JVxhE76Mcmwt/93LdyhLNHwvvlLoDoOzLHZyy+EC1wmBfJBHLlJGYeW1aX3bmx+8wnRMcH1Ro7gBLnoWVY58CIIzFub7YhttCduJveOUdxLBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546354; c=relaxed/simple;
	bh=2GEykwhAm/NrcE+4OpIVgR7baVUIPc/aEdCbAUGrf1Q=;
	h=To:Subject:From:Message-Id:Date; b=BmqcYIuDC/HAgIp3e25w5I9fgPfEBWgEf2yQ1O9A6lBL/IQeAyknZKk9VKzcoDrhUKKciDwv4ah1zJAq1IkIZPu9HcAcHYRiUdiE0y0oyTR9FcQAQNIFVJI6s8Pym2Tftft3pRD9kzwlr/fOtPrVizWXOZgVuJCB/khyARJAyac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxopQuku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxopQuku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7BC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734546353;
	bh=2GEykwhAm/NrcE+4OpIVgR7baVUIPc/aEdCbAUGrf1Q=;
	h=To:Subject:From:Date:From;
	b=GxopQukuaFhsoNrh1jj60A73vbB9gZBTnpWdLLuu5f8kF8oCv4YPxNbjzLU7f4dS3
	 YKeUIGI5103gBZs3m1iRQRpM1P6ajdwcnYU8u/ze2mv4KLUm9kGtfymMrHu1Tby8/1
	 T8AR+2MiYKagXtWGbvI3HrsbKBSpAcexiFTI+dWi5I/dh7VV8ZcLWMT8R3uP1iWm7i
	 1Sy+q544W17Hw4xEB1Lkbo/PdyDnoKIMc4+BlrZ7Mki8zXS7G68qlx4gwzDxFYgVgU
	 TPkMAY8UJhpWpCkTtLxJApHH6LWBmID7TMpwxOaKdc78cmTG9bkIVCkqldbd82nHtB
	 JKjpZKULgWLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E5E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454635357.9751.6971325316926477430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098ba191568b93a9ac6fb1be0afce281216f9bfc2d07eaaf9a0fd75afc9c15f8
Date: Wed, 18 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734546353
