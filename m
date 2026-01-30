Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD7BA34
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769742234; cv=none; b=NtKv6SOTypljMKoNvb0LS3thvvRacp1eIOsd2VqPMmVnbhYqhrejIHdMTKOIxcZ7txXm8ZB6zYSkOX6MmNi8MEVmeahl8/OrKsC/h519E2k0ZdfhrlLyHdi3Z4zTU2Gj7olylyqk9s8/x4HxHYgFlEV9gBhypOWwnpkUTFZcEqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769742234; c=relaxed/simple;
	bh=j8ZjngR9qc34XhkTS5uyA6tEnO/vnM659PlmWcjAvhI=;
	h=To:Subject:From:Message-Id:Date; b=tt7nNHATf79zMNVBlpZMneAiZMu5XoPsS8quOnKbaFj6TwGnQ4/uliV7dxxcnq6aoc+tC98pE0g4AOh9SOUh40ZsVXA3si3pv7dMCzQvppIbCoVUogTQcbhwj+3R/WJMd79qO7ycu3k5noYwhP7bEvseLufaaQPusBr/8prKFF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQcWa95e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQcWa95e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769742233;
	bh=j8ZjngR9qc34XhkTS5uyA6tEnO/vnM659PlmWcjAvhI=;
	h=To:Subject:From:Date:From;
	b=jQcWa95e549GMHxZAYFhdntwm0SVdMPQ859Fq78dxaj1ZGYKsQqJkx2SMf1ZkisLx
	 h6CaKrXdx4knj1DaQnyXC5I+alQfo1XZXqVT1+3x4MI9CFUwXC75HqAuWC3w/b9WeF
	 1CMvpEMPRchESaIqLguG+hvg5MRi1zTjORZnZ5UekzJklUBochNSye3fErvxwTYkU6
	 PCP8Z9BiR3p9hJGEw9L+Avx+Pf0S7ZtLQrxloERn+ar9mpTGNaSJvHNQQxs0ew8FdS
	 FhScGdkpy6JiXcf48QEprvpxFNv5FAlrwrb0I3VG05ZJjIC2d8h6G/UVtppRefmVaE
	 58XP5XF9WwhPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0B9D73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974223362.14603.7254533470116184723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5a331c73e53010e506f0832b6d9c070a5d9394405a9bf544669f926ee4ddc3
Date: Fri, 30 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769742233
