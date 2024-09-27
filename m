Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BA0282FA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727444154; cv=none; b=LyCVzjc8/bQ4lqh78BJgWtolN7OECbgGO14bglkfTZfZwDpqGl2nWN1l8OSMMDXdJbhQmLXe3MD/DzGCn4vkB3Tjzzugh+Yrigld4ysP5rVV9IrfBvUmS62mPASyr7kNdvQN09Txe90vs64yTn4JsFl/PMkKcNVgDzHYbZ0A2W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727444154; c=relaxed/simple;
	bh=0mOTv3WymbOWWUbVG3YjjQM+5RfAB059/CwsdX6llRs=;
	h=To:Subject:From:Message-Id:Date; b=lT7KzjoVDA2egydEAcUT0lsU3VJhqfnVLqFSuqlkGSiTAMzhy20lg5M4PK1rgpgXifqmVOLm1oNplm5lnlr2jUdDs7nBoEsDo5d80tP3yKD05/rZi2RYuhw+p5HGyNkLjYPgS3Ovr5e9wprotNKoGAL/b6Fsophi/FVQB8NXBoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVKW7M60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVKW7M60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E01C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727444153;
	bh=0mOTv3WymbOWWUbVG3YjjQM+5RfAB059/CwsdX6llRs=;
	h=To:Subject:From:Date:From;
	b=OVKW7M60a/O1D0txXI8gyRtIzWEoa0dzpP6hQFcDA7T9xtoFDPYB/XdrF2kjoIDRt
	 DJwOmwaV0LdcaQ6kmZ2XxvluZAz2qRENMh8zJqomGgdjwDp7R1LoVaUqiVUZB68bJ3
	 RHHBGCx5bpSYqYP0/CIdFPW2RJpOJpB445QbGPymi8mvojSSZd1R+xvrVMuvIEFWFC
	 Sf+KPywl26SHDTyBLEARiLi0hohsevkNyGdiheCKvkQP17ds+Tvh0Lpmqc5Vh9Y9u/
	 H/ImsL9olGKxxY09XyvzRTAMItPUiCexFy7x8kxWpbC3gelZFzFQad0IxTyV9YI4iO
	 B16d4Hr+u666A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9355ACDD1B1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744415359.27449.11397654868819724483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0b588a3e4cd0afee3da197fee30cfa68acd4efe0d266b01c8d0cd3edcb87b9
Date: Fri, 27 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727444153
