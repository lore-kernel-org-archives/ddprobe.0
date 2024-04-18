Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5512D6FB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713407963; cv=none; b=igBh1IhLQQUiqGSFGX8oHZS13HBP5KfkUXFMXDGBnoIIz/O2Rd3YZdxMk2mTg8vXwVtFzaY61FWpijDG9PU5gmG9p5sjh5k8RhAILJ7urQtHHfSbr+4XlHGgxSZSna3KzGxfNdEEWxh4dhziZGFaNf2iAnNZHYR0lqeCNpVY8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713407963; c=relaxed/simple;
	bh=mFlsl+sfkx4KM4e7jMOAaBSO7NA8jWVzlwwDetS0QNg=;
	h=To:Subject:From:Message-Id:Date; b=QtaS+WFdkT7AAcgvINjlL0AFNTFgmhjaY9yHJbwkqCNkQV5DbtmofTDXsTYmA+ZJAKtsc5Oi33TZ/mQclKSvpcPg1I9tVPptOAlxV0sndzdHADGvN11nDqujqcQExiqdMzFRCN7NH/H1asByz3814tf2OiyyVsVyrkN0XS3M7oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfqPCYH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfqPCYH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC58DC072AA
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713407962;
	bh=mFlsl+sfkx4KM4e7jMOAaBSO7NA8jWVzlwwDetS0QNg=;
	h=To:Subject:From:Date:From;
	b=dfqPCYH/oY2lzffuGEaBO9sZyZbD/zI+13o3tXq2ob4TzRCn6qD0RWJSgiqn370m5
	 ecOHUvFTXjnQsczCeOmLReKAtmQWL+VLRNdQZjVdZCRS4TppAPvD3N0E3AXgVk+boI
	 J92Jt1DbT6JqocYQ9mky87y1VInJkCfo1L6N2OeVECiNLqNDBkB3tKQKSt8MOScNZW
	 uBHhcn+yRpPDqnWg8p0toxX1norBeyVSZso4m56E85+oZ20Ts2orUBd8VrIhCexzdj
	 AxJz4WyQkJEy5Cks53aLV+m9N8UFMUSkuDuCPUCeHiykRK/6liBptEF+DPpivcEGxe
	 ywcnQh99Fn/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FD8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171340796279.14509.6228133433518096400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503abd6b02458b3acaa3d8e38193465537a2d5102b558d4d280df3a69bc05c2d
Date: Thu, 18 Apr 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713407962
