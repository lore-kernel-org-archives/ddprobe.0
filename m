Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C934D4C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786671036; cv=none; b=BOdSp6qL1ve44ns8aXOo6VbwcZE0Vqdrm5tTyRASH6nkZ3hrhSy3WfRiV/nJoVNXcHssjrwgoXGoDytzyd0xk2yEQIcK2k6ficEHDS4GwBTNwAWGQk/WCfmmIrZcSLMPOF3dE0cjuS2Ic9+V8ud7Ka0GAAp0EHMLwNuqcWostMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786671036; c=relaxed/simple;
	bh=J0yPxuYdUHmdcuHupqRLXTXmdgu8ExTvid1sol0JXkM=;
	h=To:Subject:From:Message-Id:Date; b=ln8m5hPjUzTwtZRJQDsbXnxllVuf2VR8cA1gWVGHYwToPcjpdEkSyJKk+Ix8tquwnqVf38712iF630x4XdS3HLLDX0eK+Ol6C7A3Z86R6oHCNJZGL2hHRgxikD8fKyTo+VhS0TYIHazH/Yw4PEpgJi8wNdFTFb2QWpaVCg7gYd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXFGutNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXFGutNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A2C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786671033;
	bh=J0yPxuYdUHmdcuHupqRLXTXmdgu8ExTvid1sol0JXkM=;
	h=To:Subject:From:Date:From;
	b=UXFGutNYxzaVzDSO/uFNX6VF7axRcb6ff16YlcVwZNRk+860bNtToqboqkzhcbKuJ
	 2Y7AVCqL+FAWKmyHuGnSPjAlQMsu5iD5ptc55juyk8ApqMJ00kaXIUzOQvbNt3ELpk
	 7dUaIfndeIKfk/WFcIKIZbyI1M3gx4zBXoYXkrQT7DhZr9SdvYsSYFLm/jFpVe6Yp9
	 wL6JGr/mkg35p5pr1i+MScEU/8nCTvHwlvdocc/bkd++3IptL2HQT1x8cQAlXypUlx
	 Jml2ipPv4Q7D0Q7QAgd7luw2u/mMc073QlGk+2G2tHgNF1JkjCLX0zwjHV4u8dCV2X
	 dfftS0QDDhUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99CAC5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667103368.32665.701310309872159321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9a7d7a0b807bc248f4291ff0e74f71ccdd0140476da7601c180dc4332afd18
Date: Fri, 14 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786671033
