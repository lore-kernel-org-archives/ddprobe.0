Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF62566F5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769866434; cv=none; b=JEdA4Jx+SR93+DCmNzZu8md/8fVJEuFHxFGVqLZi8dg0pyu09xXepN1u34K91c1w83Zg84bTva0AcGVVhevZfzHRjQGaSg/XM1CD2ZsR5ASfP21Q0Cif7vcqwjgy4BESPrh+54iMfhJkN53PDlL2x0z7q1mabzIWVCNLtuKKC3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769866434; c=relaxed/simple;
	bh=5dQ51jvWGdpHYePu5hh2bQFaWqYDWZ2zubna09V5b0U=;
	h=To:Subject:From:Message-Id:Date; b=ZkypxffPuy8ixikUv43PHTe4i1g3LfdHjDSXvB2Tqy4oSIA35kZmndLO+Sa11ycFXzHHTZdc14PHQG/ovWIHw88EBC+gv96HYPohZPUqeHZ0If3LwBSMV/JOQaP9IlgT/syE/pk/HzEmuppo7edpeeoKq+yBW0EjkyAIhNygEo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM0UZJzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM0UZJzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8515C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769866433;
	bh=5dQ51jvWGdpHYePu5hh2bQFaWqYDWZ2zubna09V5b0U=;
	h=To:Subject:From:Date:From;
	b=qM0UZJzt/xe+qhl/OFDdJ/IlwTjoZHohZN6uuGKZkw0iaI7PnFE4pTRE2f2ftQEq4
	 4iE9cJZQpN6fzmtp8h7TIpXi4iY8t2ORYtgsoAJOMBO3knRKUybV6ai5D013QVLWH3
	 kq/f/UxTScfqZBf2VF0BhXIxzyc4VWbF6gIO0332K6o6IjUpTHoUzpK18zSbvfwDPd
	 a5xiR5jNpTBbcIHGNsbFHyRaES0F38TmnlpmHsmd9sh/ORwwXc433MF/WvfSJJ0dBj
	 Fb2t2lezmEKZR78taOSmno2W1jeoN9j/8jzlAIvR/9SiQsRAIT85iuSa5AhEi1OYB7
	 LGu0yTDHCTuLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4CD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986643357.6197.3826847853631287946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaca8f93f040ad55dfc4f7ae9d6420eaee2674d8b6ea8eb50b61e5dbdf65da9
Date: Sat, 31 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769866433
