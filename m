Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C821339A4
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775400934; cv=none; b=ke+iMVoW1d6hfmubLmhd5/+hryOC5I4xUGBGE9XpmXYGxrRR5FQeLTbfvWn01rOO5kKXjfmZ8detdmlfT6uLpGJKxP5KBohDkNRSEeNNkqPXKgMKmAHHQP9xjM+ZxSp1xVMDI27JJzW+5L+ziJcT/Ffi58nhgkievkldNxokQWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775400934; c=relaxed/simple;
	bh=sXBANXBfMHZUZ2PrMjCYwxk8lf6mbW+KC2SRe6gcmBs=;
	h=To:Subject:From:Message-Id:Date; b=TOolX5rydfXcH5UZ7pqKIxdHS/vBQfWcGENK95bry3BbONu3kJnAJX55z9U/LxDdSzonys6OY2eQ+xPimDTlx73v9ilCNmg9o5lDW5aSXHSPH/rYt1WIrorhd+SGct2hoSX4JaU18hYVZdEg4lYxO5rvO3M6s0lrlIPYSxhNO8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkLIG6mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkLIG6mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB9DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775400933;
	bh=sXBANXBfMHZUZ2PrMjCYwxk8lf6mbW+KC2SRe6gcmBs=;
	h=To:Subject:From:Date:From;
	b=NkLIG6mq2VFgfFdBLjybSbu07BN1AdvvpWCAVPX1zsbMur931yC6CtPgXbgy2AIIO
	 V0LKLvcjrniFd5uYJFf8pd1MhFLBlQNxvgJNdT0AdhlQCe2KWOC/LFfqDrZtC+Nd1F
	 imvn73LiAhqgD+qa7YfKmrIu+mxMLwYz4yGpJj+gB29vUS2XyBJERtGoj+kcAawWqq
	 RjujM0cMHO3LWczjBA7eCICu27h7Sw9l6hEnZAGMoCYdUNDa/HoO1e+8qshscavDn3
	 DVxmsHSRs4YUVg4X4ckmd2+l587inw3V8mwvEe25EzW/tTb+/Xx+1H3Byrh5m18fJL
	 zQFrzQ60R2XLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E48E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540093371.7910.8799632975326997786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43766be05c970270c9b1a66cb73c4615c9664c5e5b8121d57fc73f0bd6a8571
Date: Sun, 05 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775400933
