Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCE81F92A
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745301594; cv=none; b=QjGH5DovdeQly1ZkxE7mSYap3ntnlbhickTdmpFEgRmirQ/7EoJabNCq8H50LB62MRcPlgytRgWXfS5sIhQ7RTO/tlQf0SvvQCnIPAc6DrLwlzCKf+vpCWZxZNFICGFR2+PF1+0/cY134lDzfeb5wnSKNdh4RkN87qDJqwld60A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745301594; c=relaxed/simple;
	bh=bJlS/rc+IR6kFmZjlxVEE2DAHtWrZAMJCT1bJ388Evo=;
	h=To:Subject:From:Message-Id:Date; b=GXwhkt5VpX2tg82TLkUQkYXUp+9RytYfzyvlBLMUWF6TTbdpoUpwyE0zhvSmoDF0KtPvVJfQU+3EGTUttGsulwAhiZrtjoW0hzIeM/YDwz9YSkL5368EeBn3Ouv2UC/1Ji98J3C/JhwFus4EnPy8fa+4gd3TKxkZXwYhvlDEehM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO4xGAD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO4xGAD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF1AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745301593;
	bh=bJlS/rc+IR6kFmZjlxVEE2DAHtWrZAMJCT1bJ388Evo=;
	h=To:Subject:From:Date:From;
	b=OO4xGAD/zdMJ02JFEa+2/ehk5kNfLggVGNVBBsfkFASPb9rGlKxvCKdn5N7TwdfK6
	 sbFZVELdWI0jlhjEvb2V4xpU3nR+WlaHtBh3l9t2TRcXavMFpGDyw/GhbXP1BeOdgy
	 cIpmgYPZ7bqVPKGamwLUqIKtEGhsK8nG/tnjiO/uzwBKMLkVLFV4xyEPxD/JeDWSMf
	 KL/fkH6eD3mJ+V5Ssht8ZtGznR7kfNC7KmBZkA5/am90CfDrepxafcwb3KeeQZePuw
	 JUsIdH8NxSZ5ySmXMaXtY4EG9k+E6XBMwozjXmoCFCuytT4hNRDCIn3AbNolBsjbXQ
	 AjGZAwtSGDP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731EC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530159359.27417.12081731245704257509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0a4e85ea27ff218924ba6db69b8360633a1b06a97be4d71e4871e65843266c
Date: Tue, 22 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745301593
