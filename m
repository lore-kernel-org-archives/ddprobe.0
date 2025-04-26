Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AB21474B8
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745657995; cv=none; b=hnuCR/uEtBwDoWVYmIZlFv54bDoY2wPCGSGey/04QPs3izAnk8dKXvEuHtfUFcBPiNtrQjR6OhgodXI/VXwkveuZ6clhTsujx3BC5/NTVpMz9UMdI+uYbB9kTp/IWxf14O0lysynJT4T5rNngUGB7aE4lX+/0iKsicPNxamweNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745657995; c=relaxed/simple;
	bh=Nh+QN7X2SxbDd0xkyQFmp1hp44n7elvU+jWHummF0Zo=;
	h=To:Subject:From:Message-Id:Date; b=TayRZrabZB3PJdtFCSebSCnbpRzLrZeESRmql8qZ0OqwO3iS/zkzmcoLMXSliVY3fBs/sUxj1euXPCdhTAWXqF1lu2TpyPdb2SV1gihHxPzN6IHNWrSQ4eZGNtE5SAIXZXmyRey/kIdosWHZcnvkQBIvEi+yGQ5k49HUn1XYStw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tX//6hdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tX//6hdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7126C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745657993;
	bh=Nh+QN7X2SxbDd0xkyQFmp1hp44n7elvU+jWHummF0Zo=;
	h=To:Subject:From:Date:From;
	b=tX//6hdtTjEQE6Wh9qLOiNmaLsrlqr5+YG77jIT06HxpNTyL7ChdQEeyO/dPnresG
	 93KVX19HFYAHmEpNBgFU2yhi3yzfWHM96Zzg6WupqGMl9ElYuAVgDht080W1t94+or
	 Q4lomBvrtOyZAotPS9W/bOnVNTCIK17obm6tcrPV71sDt4R7tRZskhVavrQJIDJ/mT
	 QBOKaRaQZ2MtuZ3mAtPHGynyhDQp/9lxDO5AhuWaie0KswMPDyQnI8NLv7nYZUKeYq
	 YTFewOnfxEOWgvFGiT4tMIcU74R3qkdv2kdESjtrhT56keK2NO+ZqbSc8+K0P6ObR9
	 gtaN9K9PSNsBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565799358.25253.13257234948289854002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742fdd0ec5b12a1db8538b9dcb2de627596a491e6f2221c98b7987780932762b
Date: Sat, 26 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745657993
