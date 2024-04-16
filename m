Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839062375B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713308963; cv=none; b=p281Bu9UTlRvc+PrjaBBHW4WmZQL+mV0jvd82TBsKtofqyjzh0QFQZ6d0Vm1YUdUoCSNIS3kDb6UoK7JAG1Fh98rODQIw48kQ7pS/y7bF5TdyOMdqbOHFX2KpYthUIBtcm/kDJmMum5rYEcLvZAITDkNeT0XD0Rmou+U4nHDoOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713308963; c=relaxed/simple;
	bh=0rCOVnjMs7T/eXTSYQpAlhb/3yQ4Q84MdtGsPTwo69A=;
	h=To:Subject:From:Message-Id:Date; b=ottvJmRxV5Pu+g0g3lEgDKD1oqfe+SwJcxG/NQFYNagxCRM6d/8BAkJTln9rtuTB0yffacslUNlICDeUTuA3DQ8NtVtjpMVENcCOwOFeMxLIcXUGRY/gS0bC5WQ8y80OozaJiNABPS+uz10t6NnG09KgymEJJ1cSH7KYFQomZ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igWux/hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igWux/hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF4C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713308962;
	bh=0rCOVnjMs7T/eXTSYQpAlhb/3yQ4Q84MdtGsPTwo69A=;
	h=To:Subject:From:Date:From;
	b=igWux/hXSg+5QdjnekK840ScwDEX2VMm62RDGK+K1+jt8t14HyB3rD6Zuz87Vizkg
	 RJEv+lELU3s1u9SbH7gc7fddtSoxTW8DO8TX2qt4W9BcxT5GgjBVkS+TM6LURcKQyh
	 LY/V6VlgrL0OmzX3AIfJINgWuHV8VkGMETVPzPxjXzao+//6U8yKt/2PO2DsZSlDbj
	 IIV9x4XEWBIxhmYyaEDjqIBTwLUgp1Gg+ZVQlyCF6F80QwO0OFCUYSIW77PC42m94+
	 jwTSkGNLZkUsXPvTeZAx8dyxxNyDqNc8hiFMmJFUaWMPDcV5N6NYmkEXDy5S6Nstnl
	 W1aPok/3bqT9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C113CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330896278.13976.8056652056404998139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37272d839a62ad833b039d67834de5e12814fcfc4665ab0a0e9ec6176cb5c95
Date: Tue, 16 Apr 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713308962
