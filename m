Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2EC48CFC
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788404434; cv=none; b=MiDI8GDdDUvr3lAhZageJ+pyfikXrCcw8pCtuDKVrJwivp5JgTSjm6ZkPo9N99mcVIyHrS/o5y/YoVyT1lF25l17S3tR+gwex9pY8MCMIbU5GPZwG7r0RHPYxRIAkLKbL/fqgoFwobaaeloOdhT9g0tgbrqJQHQQ8x+J0OrfMKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788404434; c=relaxed/simple;
	bh=/DJXSqAvy5mNg/zJWAufP2tNhIP/ULOnvbgcVqlHw/c=;
	h=To:Subject:From:Message-Id:Date; b=e4jvwvPce0vf2CxL8SEce/dKrqqdjMrRcjadpV+WXdXr5JLpxrCahZuG0dJTtBwiCefz+r6WDZ3nBuqkLMuEy8LFksmPEwSn5M/J+ZZKoXjP6/X08pZ8oAM2cvIKvcKuFxwg5XumWO/dDj108Qi6fVOnlub4ALjt3/kTNVTofn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2kawT9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2kawT9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE1EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788404433;
	bh=/DJXSqAvy5mNg/zJWAufP2tNhIP/ULOnvbgcVqlHw/c=;
	h=To:Subject:From:Date:From;
	b=c2kawT9Efmn0NyXrEwr0sFBkQ1iD6mY7PBvLTe6wApmCnLDawS1ppLe3nHsJp4tkG
	 7fH2zjToPaotuXhEOyPXq3qB1ovg1aUro8ezNsfy2ibHRrcV3IPLHEejmNARTmHk0U
	 i2jkrvexCswMKL2nbzi/dF6WLfzALzk3v1tko2sP50Zkx4ZfegiwvZPiwjXMY9wCTk
	 bE8qU9+8jLsWwii/S8bX0GMr8bQSatsbFTZoix46LYSAKvfMImdMYAG9Hlo2V4yT6L
	 jNjxHRpCgb9ZGkj/nWDhiZYxgEU1v9IWZDaP6i4j9NVHScvnVk1izpwKRVLKxhilhu
	 Vl7aww5ekDtxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E85C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840443368.13810.11445803316716843548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ae5f800c66221cb6b2d964d9dad8dbbb6832cc80c83cce228e182e24d95560
Date: Thu, 03 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788404433
