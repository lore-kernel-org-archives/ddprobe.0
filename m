Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5416F6AB9
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714009283; cv=none; b=WLNrzcLTIhvqyj1lg3OYOHwloNdnEFf4In6aHr0AJq5ktDblb1zznF/WA1FmjRIwf2uViSqqgXupMbTrrSIMdZbjNsv506lXKUz1gSXm0OP2Ep6glImy34IieSkGl37zrnZQXPKbu3iOMoAgCRWYV2IhFc0LQI7LVdJ7H9cxUHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714009283; c=relaxed/simple;
	bh=vx51Bz96LW0MUK+EqTPeGb3LCIxIpWXv9zHieBfb32Q=;
	h=To:Subject:From:Message-Id:Date; b=Zq6mnzvEjoams+9BkiviatECYxOATtglknvw95u0gHH9BzIL0+Iw+xpZS9Awu7VSDiyEXKlpHD0n2yMrCnO2laKeon6iH5OmGAXr0J6RKDR9nifeN6exOYSRxtuSACixxr2SeD9Tvb1SOZo9PF4dKMYhXF71PVUs8TmGThhOYBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcJx/a+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcJx/a+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0548C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714009282;
	bh=vx51Bz96LW0MUK+EqTPeGb3LCIxIpWXv9zHieBfb32Q=;
	h=To:Subject:From:Date:From;
	b=TcJx/a+i2tFDkHdTmzo8pQ0eJFljnkq/sKVulIuJkIx+5X1887po5K93RiH4+PzJu
	 kjg54M828eLncWYc8d2ZTam60lmOtlzMlyE8iemAUwk3Xd1DD/FmOtBjp7TE1g5AJS
	 jczP21gJnLc+/BIsV+6Q1wrkC2rPUVfOxSvFwhmYJuTaVLK6owLwnHoKkg4e7s1u3d
	 ZH7a/0oZhLQUnMVOoFaFYomWZWUcujwIhqAoCsRe1+HURuuK6eszArYVNVDnCndU8c
	 XE++8tVpvTs3ePHY7VfteGnMug3wQzpDDPC6AKtb30rfcokQRDLaCpcac5JMl0vNdb
	 y2UULbMqpgEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E88C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400928277.27734.2293022924103927071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8583891635c204f2d34e02c6139bdec88b13862c38033168bb88084168e1a359
Date: Thu, 25 Apr 2024 01:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714009282
