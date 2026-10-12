Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0E48F83E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791819034; cv=none; b=EiM6Ueia0lxl5rMiPV3IcMnQdW2IP4DGzsYOMxE9eJNGQFa/YlYYippnIgC0EaST6UXuQdF2BSl/1KN7no6PW0miojLeH29wZg2Ve7ZVnsNGS8Ik6DOXDPOffvKKpWKHOUxz/mrwkucB0ERsuNCavZ/f68/eP8houjFnuKbTpfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791819034; c=relaxed/simple;
	bh=+JUA5DQNpjLFz4ixCcM2asNlnwDtiQAsE8LQUi224Lg=;
	h=To:Subject:From:Message-Id:Date; b=HMsVtEOD4IyqrEwDq24DF6OTumIUzUYpAORRfTdIaRH0UpUX3/bFawWFl9o6e5NgKRwh2RO7qzxBfmM/fnf+4ZelI4yy6bTROOQ5/dOwSEb9I7Bm9abxsm0erwpW1mootx+4p4R5lI/SE7e7o9RxLimBlp90kk9S7IXM0P4XAYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAO4n0Dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAO4n0Dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D986EC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791819033;
	bh=+JUA5DQNpjLFz4ixCcM2asNlnwDtiQAsE8LQUi224Lg=;
	h=To:Subject:From:Date:From;
	b=TAO4n0Dp8d280p4/6MIwoSIVoRZl6TH6fYbf2VNhPVs/FV5PfrVq49azTAlT4VtxH
	 ycZX/gNzGIUXfIIaxJBt2cQw/tWMcpH6Zu97rFe8HhzxfvEjyxY94/TXRhDiThUx68
	 3RlDNIEy/N4Uz9/56z77Dtos+zWPQ+k9Be8IlLRXhEQAgqspZMrPBuioNgUs2OAWfB
	 pSYl1v1peDaScMvb3grKfEnCOMWfy7qDWvTJJZ75addHeQc2QDH16t1IW8i4FtoNqC
	 ERymPHkymgjKdiWaaWIuDCbYsqpE9fswfeqRraackiIptIX37w7uD4qgdsWBt5DpQF
	 oudJCMZnPtlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5692CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181903372.9421.18187569470895293836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b949b116cfd4baead01f7a44d1d8c9abea10a5c7685bc38cbbcf80e2cb98c1d4
Date: Mon, 12 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791819033
