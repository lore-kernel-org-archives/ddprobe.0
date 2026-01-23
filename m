Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277F117B43F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769208234; cv=none; b=RUNOyLBXJG981kQa1V4F8T8IMctSM0YXC9saQIMc78pY+osovPhWoJ7rHHTBwEzAz9KXeStgV+cszt3hOJ6Puy5n+XQ9D3/yiYFBZD2fD2sxAT0bCiGww3rqWGx2z2fqYy+SOuHkO9WhLqpnIqbw7chCHs1eznpMY3JfLXtFcKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769208234; c=relaxed/simple;
	bh=t/pblDlAkDNyyUSW9aHCfCheWis002+V2OdUirj+kj8=;
	h=To:Subject:From:Message-Id:Date; b=XszzM+ND7u1GJ6KRr196nVtzmo3L5k6s0dbiFMjDWuKF0t15TWGTHwljGU9kWYcD5Ogf+ag5PuqPjgL+KQH7O1zqPPIkFvAKBOYadBrisxkcM+qAB8mEDWBmR3KDoDwEhqPjRLZeHf1gPX1CJvO2s58RVzlzllTWDdUH4yRM1Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+EA1kHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+EA1kHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDA5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769208233;
	bh=t/pblDlAkDNyyUSW9aHCfCheWis002+V2OdUirj+kj8=;
	h=To:Subject:From:Date:From;
	b=W+EA1kHV8CkuM71NCZHGUq2WUDKx0sLBeCIpI/Okf6BoLy0zxqb+zRW9Oh4IHpvA2
	 FS//W+/DyL593B/oRc38cooMnRfEJpfgAMWDZ+82DuqgqFheHN/w63Wb06KZvb4txH
	 kD1SuRPQK+Z9YywEe2eqWY0VFcrhOHEaHgIwbLk3zaluAL9QNO+oHX2+VuSc8SRiri
	 GEkrwOFLmjzCHTZdFmEr/EjZIEhFeNYiPh29j5s9VJOjah6HJ9c5N9gFtSTxHZEv9A
	 QA9QcLLHJ4NuojwkCSR4SagwkdmDs2nmtp5RGVgyP2fYMXezBpSKeMm1dZeU3VMN72
	 XQsHz8uiCKPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CDD6CFA7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920823358.24481.1807666461088517090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bec984ed9f164c576f410791c45e5d070af753b1baf4d1118103a6eaa74447
Date: Fri, 23 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769208233
