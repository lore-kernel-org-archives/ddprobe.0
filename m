Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647A47F4B
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707592697; cv=none; b=MqOkHIGRUyf2hFsaoaC5E3d0Fh1pbT2l+j6sL4fkqdbeZ4GNFnv0b6bywQ1koA5azXp4fv2XkvtXvS50a8mr4K/x3PK129+hWtm8DJV3biYw48/NeAYQLqSz8olS+L6VrIvMEAvyD46+JgKY/tu9H322mPKA5q4LefQk/4KKipA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707592697; c=relaxed/simple;
	bh=wOfiXqQBZ/CFogFNP0CHDsHPAJ+SmZMpGagMyTXC3no=;
	h=To:Subject:From:Message-Id:Date; b=eCBz6M/hjl843Rxg5pexma4OyA1h4Af48PcW3ovfUxAmXii/gYO9q/YNM8pFtuBeaL4m4uDEuSksVP26w3s3btpSFmsM17u50eLx4G2bBQ5hAmctT89u/OBM8gvOzXDE6dpkBus7JuaGhNzJYc8hMHYW9fl7/+RPASKcZ++QKys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWsbKDeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWsbKDeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EA1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707592696;
	bh=wOfiXqQBZ/CFogFNP0CHDsHPAJ+SmZMpGagMyTXC3no=;
	h=To:Subject:From:Date:From;
	b=oWsbKDeQy54bo5n4wcFaD6+14faCtxFoqPkiQF4gMIJvBWDVzxrvqj+gMaXWoLyHi
	 hPADzt3RdWe+FI8HqdFq3lRR7y/FF4VBQRMrfjCc/lYo+Xc6MQXsiw2Xya5ymmCHLH
	 sSPeWe5vBBAh0nPtUkK0VEiLYCkI/WaZ6cHcPfvcfhdS+BF+nWCqHO2rp11l84bWah
	 knvHXiC03NBSsXXtDpgXcT7dkqcDwW3Y77gz3sUaR9aX9Q0SPWQXNQS+0hISHDqb7o
	 sT0IppDFBE8MFRn/a+6EN+SFac6oSmrVwqLrQp81zh0CGcOe3WwSc4t+cq93Tx66Ls
	 1GfqI94YD1P8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68725C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759269639.4536.17675455707666380629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc04febc654e427d5ac55551df4ac999c10a11a7631925349ea4f3f9328495f1
Date: Sat, 10 Feb 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707592696
