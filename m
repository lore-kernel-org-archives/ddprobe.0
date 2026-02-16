Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AEF2798E8
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771235694; cv=none; b=cXYCzMnHri7ZyIYADxp8y3PQzF7M7EuiRYSnRZFObNii5q6uoR+VD3mtbSrSj7KCR63nncGwtS1prDYy2edunLmMY62BEKPf3hV+DRXEqSit1vSz6vYDAq8bs2g/AZZ+O5LCnWcff1weptEKsNGBr5IztmwqaLoTYVeaplndsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771235694; c=relaxed/simple;
	bh=hvvV9tazERalIRdRqd9SC/MHuFllA4e1hzmded/29iQ=;
	h=To:Subject:From:Message-Id:Date; b=K4actoCkE6B35WNsKpVNrRjZOrijjNN3os4VltmPGs5cJ0XjaBxHi9vQHSX9B8uogYCHBe0dmvV5YIxEc2kQ3TzQWg46DVCzxIgXeUWpTPIUu1OPosv6zLz6iIgFm7ZwEZ1gai4JY2ZPEFKP7dGqS+OXDeIKnSWchJM+LQjJpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0v6Sv1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0v6Sv1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DBC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771235693;
	bh=hvvV9tazERalIRdRqd9SC/MHuFllA4e1hzmded/29iQ=;
	h=To:Subject:From:Date:From;
	b=M0v6Sv1w/yOo8B0xaB54AZq8aAqa5P8qTQj7mLl5k+DXVj1z1ccwuPMqXXB7pRbGd
	 YkdaDm2yyljTmOWLrjHRACW1zw2NxUR94gX5ymDn3Q1iLm7wki39w2yNkpWO617Y1d
	 Olem1KCIJoIgmB2Exbklc7Zr6p1m7VAi7ezRaD0GIvFgvdrcCz17m4rjAyTs9odzj+
	 0fd5YFWrKvl3YG8+suE64eNz0zkkcGj/C+KSjYTvPv5qaBYhUgdr8CdTUUEGPq3Wgd
	 g6YkidyNP6vwJZp7RleQgWVqvG6ZS2TV6B97Mdw/X9aBMgb8evrz50bOGFHJGWChB3
	 Xcv9CvyAvpSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BFE7BD81
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123569359.27465.4986942222933681319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c545d1ae7d5f0c12ea32e0a2b6092829b53577453c2d4bac0804aab41c24951
Date: Mon, 16 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771235693
