Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B42A24466D
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745578194; cv=none; b=ZpzXbsNhKcVFLWp59cKbjJJQzjY722/M8QIhRyv9N9FyJUIApUpYwRJgm3mmhOOdlbVkUXgBWilG6gY9iZk8pqLXazeB1wOVv8eMGb11oQNcfMn0VV5q8xNFGiWPJcVeuqdPLPeUuooS0V3NgN4wwXixl9MK14c3kM7qbIOYKVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745578194; c=relaxed/simple;
	bh=NMnhAwmqWXhYNpxlwM/4ELIGnnapJWPV/AO43oQCSlQ=;
	h=To:Subject:From:Message-Id:Date; b=XohMGo0BGyu1zbIvnLbVUbOuDITUdxsmjZLO1+dto7SWpxsvsRcv3Z0yK81Va5u6t3A8jZyAyMzvIxcc3wfn5Yur4fZkgaEiy46rhknKJHT/cxNr3aK+DcZdDEdQoLh4aeOpySH4zKVTdHiGSROmGLiYzvbC3oHpVguc2HHmnjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=relg1Ga2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="relg1Ga2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2371C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745578193;
	bh=NMnhAwmqWXhYNpxlwM/4ELIGnnapJWPV/AO43oQCSlQ=;
	h=To:Subject:From:Date:From;
	b=relg1Ga2TmJCezr11f/mch36ueYj7Ev2Yehrckgp2p4TfROiIYEGyHiivKNWC9Rse
	 awNNuB0/6Z6J9q8/aDLUBEF9/vR7zQX4Dl8xxcOxHX7QrWUbBv5b1sG9fL8/1VF4aQ
	 4p83Jhpus6jswnEU2L28eZSgv6IgWBFknU5lSFPZBPAUJxCPYYyCk+IzJmX3smYyO/
	 RY0k5ScZqMHBRGXfW3hJ8B/0Bwu8iHy6MPKl75IMd6KSjuQKV/mIJMCYqqJZxVbtCV
	 fQrDIYD9eYjd32YMdcmqdV9HMMYCgyvZxZOWipllJTUCkK/yh6xnjdwNvLZxSjxqfb
	 nROk8u/Gd7FZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCEC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557819357.4275.15654944559745705050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffaea3293d1fe2937aeb5bfd28b368bdf14cb5c9c223ae96b91b8e18e73a6df
Date: Fri, 25 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745578193
