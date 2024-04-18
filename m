Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B6C14294
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713409163; cv=none; b=Jzsjzp+pl8sPvx1g97BWdCS/g30yCFTl6aUkfTm5lUsQj9Vb/Q73ulr4TRYkYS7snJTnAHl/0gpnluO4R3WKYyvFiiqrBYbxiD7yEX2MEiMFLfmG5g+1/35rV5Kg0JCToHL7Z6q7kKFLs9c7DPCwxEAlduCJrcWW2l1muX2k16c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713409163; c=relaxed/simple;
	bh=hXDirYa/S+e9LjHjEj+rH5lvCIFf5b0w6dlz31uQRdY=;
	h=To:Subject:From:Message-Id:Date; b=iui3OyuRUhlW8ztZGT1RZlB7zJEVftUcIUgiPn0nASEliXbMyKYFFJG2oH++eLG24z4Mcs+kFaIpdpgb3ZQXz0ReQdRMjSN4gSNcMPYcTp8HdN6FlLSARHDFel8b7D9yTBqVE2jZ8fU2ybkRBsRN7hfx57ueXw/S3ZT/x1nI7aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB1XQ/Mv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB1XQ/Mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6144C072AA
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713409162;
	bh=hXDirYa/S+e9LjHjEj+rH5lvCIFf5b0w6dlz31uQRdY=;
	h=To:Subject:From:Date:From;
	b=NB1XQ/Mv5fxdHBoSZO/JJ70fL0TvWgjL/GP+Y4koWNuRUyRs1OAVC7LFb07VavrqG
	 tUmRcknTPWBsgz0AMYPsdC4ujou/vmOt/UqIC1SIJFDV4FWG6UxMbX11u3mikwf9i8
	 s329J9K9XaxkGwYlu+br6si0K2dy3xOICTMTgeOYW1VT1x8TJ+beSJe0qylM2PTNaL
	 zHogjJ89O7DLR/NXIuzVF80ow2dWUoLgHpjMzmNCahHA9WGrai4rLKxy7OGTR5DknU
	 klM1067q7WbX2o0OIkr7lzb0mdTBrEsWZferlMs77FP4ppeYwJs6R+835x1Y7kJGpX
	 PHOD/7+f+kIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDA0C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171340916276.14818.2933456986558506089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dec18487657e133b7eb4f93b87812f13ce72b2bed42c0dea088a52f0d04478a
Date: Thu, 18 Apr 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713409162
