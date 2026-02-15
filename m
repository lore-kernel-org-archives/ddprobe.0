Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EED2D12EE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771148094; cv=none; b=BzQ5FvNDNOwt/oo48t5YmuhIlnz+eyUrsiCGKulh7mearZewyxhy45meB8+3XKYXCcS2xDuF0rday5UPqAOPl6OTouTOpBypTYS6U/i1S8kpz+ZYEKjPoHYo2vbe2BfYMOpqQgiVGLdt3Dx7vVjeWqAzU6FvAlDGaZRR8Ewi3nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771148094; c=relaxed/simple;
	bh=J0ap5Ir90CldoIqqjPf1VKj6Mon62kzvA+SlOCiI7Rs=;
	h=To:Subject:From:Message-Id:Date; b=MgRsApMvK2Zq4TJyUvPSOn2aGA5raYL0seV95olvv5vwAH45WdXbv0/zxEcd2YejajxfY/9nGcPH6vo8Rl8sAD0UHA9+J8C3lcfN3bWGXrGbv4QGBdgLq8CJIkji1KGcsA622rXJ0sr7sIQM6rBFWslz12mYzTshQqudDs95yVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txVxvAmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txVxvAmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD971C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771148093;
	bh=J0ap5Ir90CldoIqqjPf1VKj6Mon62kzvA+SlOCiI7Rs=;
	h=To:Subject:From:Date:From;
	b=txVxvAmtZ4xkUYt5LOCqtbQvK5tLJ8zdF/qfZYd9+TtfIU4VHnvan/hkeoEjsy7L9
	 BIWXwLhwh4Ja2N3SGgiIOxId3wH155hWtlD5GbdyKs2fzveZJVA4EbBaL82Us/Tc8C
	 eTRlT5H5nzjo8ZXctrb125rESiti4fi3sa/zTI3K1pyjiD4CCuH4wg2TeKH82I1Nhy
	 5+qMrRqkPewAqU6cSSs0QOWAUiALlwy4DLhcFUCGv6Bg3/Jk/wJHBT+8PgVDS4jb6p
	 BgmIm6U0RpIioYFhvQRXgUySUDyQ0yxtZqjq1ozAANQ55fzLWz6GDkJxBfGA5f336M
	 pP4/lcda5ngeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1814EF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114809367.12656.10116168109166626876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f482fc5fc63e2d2ae8d6a03d98c2826ed2590d7243d4fe4b85a1ef926e9cd504
Date: Sun, 15 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771148093
