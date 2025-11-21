Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D6E2D3750
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763751114; cv=none; b=SNCtPdIfwF89jeSP6eAAkqeyCd6Pwb4JOhqio/YA4276AebKyHS/IB0Jcq67/FNQHGZEWIgNFkWKbgJ3x0TfrFpYwwDt0EDkN8Gg1OkZ7MBWrZjkJ2oNwbBxK15MMMss2bAEl2rsdcKrWaw6JZUIWxr+AjZuM/VODg1wnHDO1AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763751114; c=relaxed/simple;
	bh=b/j9yB9gBSlJ2pticFvt+FnXRtLXElG0/KFHi4qOjpM=;
	h=To:Subject:From:Message-Id:Date; b=kWR8o7H7anuw1JzFtRt9+8SlqWGz0l9kehlvQkuW9EpUSeYbMktC4aZx/gCRO1MlOMCK/mPGZMRErwE0yxAEog6X2q5EVf2aD37PunJ7dfKc/cMaUym0bHj52F9r/QUfeXnhULEgUdQFO8WGCCzp19ukUQM+mF4xiFTsQPqBzyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvOXsqnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvOXsqnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99FDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763751113;
	bh=b/j9yB9gBSlJ2pticFvt+FnXRtLXElG0/KFHi4qOjpM=;
	h=To:Subject:From:Date:From;
	b=UvOXsqnYDt+X2y6zZIxwttZPyjHoK1jF/kNmqXuyCS51P+cqK5m1rY6dz9Hr6SaHE
	 lZnZB9JhkiY63bxtbvh4boOkuEq05b8JKW4PLdvbi7LgT24+zUYSbWFB3KlCGzbeQE
	 +p7AhZ0fuLqJXTNhAWaWDUZgX9lyHugXQUTxRJmg1MYltOk8BfYgWsphLN/mgOrkzV
	 KHm5Ekd8/3iZXOsZu99dgx1nmjfHRLmJcN0RRjzUXrd/CvgkJKIIXLYC378DWprUTt
	 Mdfmh4C5Tn5lZ0qpYR9mAaHSC0lE8UqJAJFPIXorvrSj2DwM+gIvQa6OwlUjD2eeQL
	 F10x+KAgX7Yzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C45CFC296
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375111359.14197.6383866552956222232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7229ae9f22e6a2dc2e2d053fd637538b1f174a5096c90fbf955f98bd373d6086
Date: Fri, 21 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763751113
