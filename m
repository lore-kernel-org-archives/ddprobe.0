Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD6B6088F
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743220794; cv=none; b=XRDWOBV2y+3SEaVKflFmJkM3nhJf0JLttgc2t8YMshmnnwl0EQM5T8t0YY71A7WJBj9VtqJFH9Df9VN74IhScMwM6V9Bv13f+tGhskN9lc08BIjwMje0DMeJa5Nzkd8OXrPhxLB0oxz9FuZuFXxxB8qraUh1NSV5bYlRHOg+T+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743220794; c=relaxed/simple;
	bh=EtBfEAa+ppPDkBxzIxIbX3ZSrq9FosPnxaZ1p8sG60A=;
	h=To:Subject:From:Message-Id:Date; b=lcOqAtYZq7Yh53VcRmr5v699F4YxcV+Shc/cwVB+OVnhtX8JgLSiQWq4YJCmB3Zv7E+uGdHRE0ybGOSxE6xdXUtGPa+tsDb9c1Bp3jF90pa+1nxdFhiPHna0SdabeMy7cfTa7MqMBZPVs23RVFCNCSZu9I3rSAcCJVhOnnmBtW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fumagaVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fumagaVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE26EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743220793;
	bh=EtBfEAa+ppPDkBxzIxIbX3ZSrq9FosPnxaZ1p8sG60A=;
	h=To:Subject:From:Date:From;
	b=fumagaVm5sSp67opBnJHnS3HnDjrgvQZZrCCQeHuJLBbgXaps0PiBSK7ltaAJ9eI1
	 qkbJQU56JYgMxbaAB2E6jg7YD+whFBnjrrHT3Aeb5/7skBhIKMmxJHmHpqXOSzq+v8
	 QrIqKWSKgp0B/3lQ7o76Umo9+GpBIYrzdw/wR0KIzsR/f657CPpJg0iesBDkGjKS59
	 AiodH8TXFvy4zrXGNidTr0S0hzTHivvXHKry6MKY2N2mvgKJBv7D3EFXuvgv1GtDLl
	 2B13fUa0pI6+/FwEFJAc/I+k30zM9NMW83urLDhl6/vwIphjPGTUNxHuVx0k5LDHHV
	 MYdMgvIqiXG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96569C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322079358.18258.14427203332283502413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57bec58c09e7b520e3fa6f9c03ffee270b7a4263ef6ae578abb15f6595b4d0c
Date: Sat, 29 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743220793
