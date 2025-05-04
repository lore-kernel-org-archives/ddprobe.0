Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7D09460
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746351594; cv=none; b=iN6g+Uhyla31jtc+V1xGbE+llZyNzjwiuW6qMbSS6g9FOpZv6ArOX37qKKnwyffg4IYQSdnLUQIQzmLzP+1F8croa/PjpqOx0SsItNFfWo4GHLTPRjSBXKvZgs/7ZhnOUyb88m/R941sGgYUZQYC90emKuZdVoIcxN6v4u8MFdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746351594; c=relaxed/simple;
	bh=RIrnRO2owI1tKKv4fpCvwuCBkz2+HS0gmDXM9pGswp4=;
	h=To:Subject:From:Message-Id:Date; b=e/wH8dTV9FZcPV8uFJ3dpEZIwnbjF13xrQTZucN3pdVB09SpwTHZ3BkK1bVUoLk1J4sqtIMT419xjp2+d9XenKGgturOPNNcu7d0oiMSfvuhdNeUHaES0TXwa7REQXSF6mZEtGzkMZQSB5oUhD95qvznEt/Yt4RBvU2ulzMVtL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqZO4XVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqZO4XVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746351593;
	bh=RIrnRO2owI1tKKv4fpCvwuCBkz2+HS0gmDXM9pGswp4=;
	h=To:Subject:From:Date:From;
	b=gqZO4XVhdo+uLAmMtehlN/adAUDbnPZxX91dbYqJ4iUmyuMPrSopPSjwIIMD+MbxK
	 /8FawyYpmo6OvGq4z0j7qkVFPtEB9ke9MWRP6fAl/tPDg/x12AaRYbhgXe5/DSmKwQ
	 IZe5IwUO6UPeKF/3kVxezLxwi2oAdEHt/6zmBBMWLpkSUVLgo9t+q5kDxi12fNjMAe
	 4HKYhd85vcDTrl0F0pB0MZJWosv21dkh+Tkc+b2pAeWNPv4Z8XkrxVINpMEH4AUn9H
	 3WuI0qjfGoSsxjJFO9C9vP4Y/uLs5ojZzTvtJp88cJnG3sIMj4okPduHHc+K7uA3sP
	 ZZS93CeaPkAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A74C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635159357.17807.12002494837037817263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dd0ddb3e180bdb24c1af32d59878427fb4b31d1694f2e2df02e94e059f7975
Date: Sun, 04 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746351593
