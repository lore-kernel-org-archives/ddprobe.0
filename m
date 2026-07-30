Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8D730EF8F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785414634; cv=none; b=DZ/rrbDP5X8nO6bwgW6sYkSVhD6OFC6bzoIDtRnGeN82L5d7y/SUtIDZ0d3S9MRKppx4qEjY+Ae+lTqKMmwbUVJIfmA6Kohd5DM4hHmtAw1j7eLXc18v4VxKIk+p7IpFTBMQhniGw+sxcO98iveSvqxDruUZt9coe1VGMW8N3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785414634; c=relaxed/simple;
	bh=7dhP0BOcjuupwUGi7vIKz2qoO+h85ilDKqFsnMeKD9s=;
	h=To:Subject:From:Message-Id:Date; b=sb0OiVG/0azhoHWT72wzelgpoMeSFEMMgoA0mKhcVnCs0wBuDhvyjTeoiIhhS0jM0uFfzDjMReS8uZVVjoZv0OfXWKS0pkDRbLcsC2Xii5SStT4nBR+t0XlX9RYyYu858X7dXdCeMm939gSFuCXbA+X1KA0DNeFqS2OZyCC29Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI92mkPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI92mkPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB888C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785414633;
	bh=7dhP0BOcjuupwUGi7vIKz2qoO+h85ilDKqFsnMeKD9s=;
	h=To:Subject:From:Date:From;
	b=nI92mkPLPXt2P7ag1Ccc5i3uB6wy+GxT9UNc/+nLYaFJC3eCZFeH33dc4UPq8Zw80
	 LKm0wa0a10FB7bbQ+45JL5yvHjZyGUG+aCz2bl2e48+ZIv5e9qd06XG9565Y+0euid
	 QwHAMzp34C4Z1H3GVJSJaBugvXP8weMF0JCxSQUBSB1j9x3Ttt1asRz3HiXFHQjloj
	 YfBev6bHwUHCBAEmwmZKs+DqjyCPsRSDlbBeH5VhNaQ94RmbUr2F/nrKXIO6HvDlTk
	 DPTqPBwCjddSjeqclFGADXOtaQiypWbHBJu/kZWPiU5ut+8+RjDwoZb24cr6Ifdn92
	 HJKKl+/dEZBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F86C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541463368.19692.7756545584188460614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7656e069e03f98bbeb5029af97f339d90f872278e5f05455899d981585cf2d6b
Date: Thu, 30 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785414633
