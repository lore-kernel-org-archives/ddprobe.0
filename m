Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8D393DFD
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772993094; cv=none; b=S8tbsckKBCk6BRWqejzaQfZwlPPWAV7o0bIb25WGkRFOZjStRcBoKjZuzNKq9M3DPRZzKoVM9AsHUg1uCd6HJaBjkQcFjiVw/QafGWFv6Bl3vxd1waduu7zkonJuKx+gAF04CaXwDtnS1pHFnLoCcyVg3T4thg+T6E8DFUWg3hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772993094; c=relaxed/simple;
	bh=Amt9BgMeJJi56JZ4S3k3W5OFEr1tuJrWr/M7WTA2A1c=;
	h=To:Subject:From:Message-Id:Date; b=c+yExeEcfBLSyn61x1NtJhkOKPtBq7T3DyFSQP0POojlmpE0x9HIs91kiENEc0IdV9//Zw6GjBgyIERWDzgCXkIHcfQ9A8GVtJ4w7/histesKs+4WkwKNHdy8PTi5eryi+XYFythSThBmSCwHvoiThmxG9oxTFxHX4lJQoYFVA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKH6RZFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKH6RZFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A450EC2BCAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772993093;
	bh=Amt9BgMeJJi56JZ4S3k3W5OFEr1tuJrWr/M7WTA2A1c=;
	h=To:Subject:From:Date:From;
	b=SKH6RZFv29UtdHovrGA/UmyCdtnoC8BJDcIU/vV0MwYQCUs5unlwe2KwRj8GnwXeg
	 AZ/coyGseg35qkqHtDjuPhTc/GV97MF/vrHLKQoXpTXd6NZ4en3jLX8387v3bETCwS
	 pYBWZkQ8PVysNR1tETbvSgXnckNM85VzdrtyTgXwJPCR5bv4lsQI7ylPbBVAduvtw6
	 SVdh2fXE9TVS2f/AwFcJaLg9OLsB3w8KHhJhWwu4lMkarRGBD8Y/M41h5rOhus23JF
	 H1kz7LqgOx5sZ6w/REMqJZi+IRhbwXzcfasnEt3apmePlfjOW36kben0eBnSt8SPDF
	 XPfc/q30473Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93984EA853D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299309359.28209.1904034706115755524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d992e14d0014c9e1ba8bf27565c672d4a0d4ea0e76d1e4efe5c85a13df575a
Date: Sun, 08 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772993093
