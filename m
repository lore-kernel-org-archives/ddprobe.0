Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D55841D222
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791408034; cv=none; b=nmspI6I9D9aVIfvErkLcknpMzLR1XWQzgHZHiYSYFjE0ScI7nbhwTjbJW0FCeLUOGZhnE3ECqRwdE7OV264JuoAR/g0eG9qfxygb1nyH3QZZnNlL/B1sZZeBmoCO5Tmey1q+61sezmm738AXVpq3NaB/IC9YE2tMoUjSxt+5oPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791408034; c=relaxed/simple;
	bh=NzZm4JaLKowtpMi912uOamk6p122+hFqBHSwk/u2u8E=;
	h=To:Subject:From:Message-Id:Date; b=uLG/AQxCSNsWRfMZA4Sxnd7gEe9coNbYoR0uwHHwsHFFYRTBeCcz+jSbdJq/G9B4BSU7AJCcSaoUscg4IB/fxGSnk/YQTIunaVNf0hC0MaSZsSudmMy8RIuhqUeN13gMfKnNsfTUiPAW2sr5imM1R7RbiqVi/evxGVZpnkG4BGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe0Sh0rF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe0Sh0rF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E778EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791408033;
	bh=NzZm4JaLKowtpMi912uOamk6p122+hFqBHSwk/u2u8E=;
	h=To:Subject:From:Date:From;
	b=oe0Sh0rFwp0e3168K8zGVLNFTzOv1faycWtrBJD4abc01gQpXT08uJwOVCggzw3vR
	 tHCoxQxl/aGrLcnpSkzwdWGkhf0G03JpKQOxmwW6qFWY0Egaxe2Rvr6NPQyZ0bvESo
	 8RsUvXxq1DFwlTjWtIYGordyNDZPhh71C4td/KWPjhSmjZUdh+ckh+9UnKJLhySP7s
	 Ur/kgk8zABw6iviQHkkZe/E6iKeGTYaXc4MOcCq494S1pRtO7tQhTFZ1S7Apy+PVVC
	 ub8jfyd2XpjcK+eJgwtVFLA9Xtg9a1kzMfnMTScYvYWttKC2LCzPTkZUv8Bnt1O6fI
	 ArP5hZemW33oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC6CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140803368.4234.9347990443975826115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48848c45fdeb97d145755d3dda2d2c1c0b4248e6abeaad560ab62c9de49e7fe5
Date: Wed, 07 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791408033
