Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5712DD8A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729095354; cv=none; b=SJ6TOTw5xbSk04XqjGjYLr2LXEJNTw0H9ifv5vmhKqHORTrIxoCCrCUpTjpER3UFXA92lmWM6doOVjptqOdrCszQE+86NSfEl5Sn6YhwJiNPCYHE1KyO4Jprgb7mPkrTODOeo6nxrWRVZ6kYz7io9vLzacC1Ak49/mPyFipnST4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729095354; c=relaxed/simple;
	bh=g8bj1h630iZVrisJmEvf7tM2Kn5+eyPWMds3kHavev8=;
	h=To:Subject:From:Message-Id:Date; b=Xd2XQ+BLuXcazT4aw8WZOeQx33jQPj77fcsDMWVnztmc5oigzAdAzNB6hmZSZnphosPKet7sipHyDfg+mp2mNMG6TU21bhUjht8V9zikxe3FbNoW4rEyiaUSzADgTvAAPs5E9cZpKhfukp5qJcpbO8+rvVOmiF3x79UC2/OvIik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf91VFQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf91VFQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF8C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729095353;
	bh=g8bj1h630iZVrisJmEvf7tM2Kn5+eyPWMds3kHavev8=;
	h=To:Subject:From:Date:From;
	b=nf91VFQ7KVnoRmjS3RY6Ntha8QxzyhvDZTmWmeO+SUCMkoaYVcAtIoGEhZsL0aC19
	 6o/FHFqwzlb2ncaeE7pVEW8e2W0YLugabtYNjuCyeOcu1YlSKYQf7XwfrkHKnLFLAx
	 SxyLA30TeIlr8AeN4+lH46ITXz0kpW8jYGyfGQSZ90IBQYkfTmBqayDyKVgcHqn3B2
	 c88k1YpJtpLSEsFIKFSEaowanjcu93ITegg0lAnsaA+DQ31OuB+4F6wBhuN3PfiWcH
	 sBEo23jj5FhTR5xgic0tfrQpP5BkpuYMCw0d5+fzGyPNfh/EK0/9ZMp8m7MGKgQtTX
	 O6eok4p88iOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99576D2A530
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909535361.12325.697135739292485612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb73d8a62b1400aa25f46ae089c22e2542716377715de379348c1fbb758738c
Date: Wed, 16 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729095353
