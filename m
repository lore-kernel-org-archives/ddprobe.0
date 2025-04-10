Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4017E1922C0
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744321794; cv=none; b=LsVtGYuitnCb4gLowrkw6Zk8BWfIhVN2XUR9b+33JVns6DvkO0LT9y+t6YQQYou+umpvUlUzUantKoiMrDD0x7eM4PWdPyesRJhQTu7+5Wo5xYuxSJcP83vowUjhlnWqC4PBCQQ8w/hLPlEJTTnFeCZrc8ESQ+wmhst4wBE42ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744321794; c=relaxed/simple;
	bh=sUK+4bTxGZ3iUgYU1NT52zJ74dRuGIOg+gdOlC6mLoM=;
	h=To:Subject:From:Message-Id:Date; b=cEK7ZiwytvCM8qtKHdGZNLofnYSfPhDIlAEBF4EDV1IqZJZnAk3vnGBHFAfzd++fY4+8cBe9eplM96WVOR3Hm4OIxAYAVpfHHmvorzXdi325TC/3PYJPfJzK5u8xm5fypck2WstNOGpSQiijr3f6IDiwOFUtGPObhBCDfuWIYz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF2qRFRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF2qRFRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECFFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744321793;
	bh=sUK+4bTxGZ3iUgYU1NT52zJ74dRuGIOg+gdOlC6mLoM=;
	h=To:Subject:From:Date:From;
	b=NF2qRFRdShv2+K7saVVCwYrcqeN5ZJeDAWcTUGYA/itkaFgm3dYD+wauN8U7iAquq
	 SCB7FvsrHGXW7+owRP40rN2YQesHUqroxTSaOkd2GWGEEkHzuA1Gniy+m2VWRm882Y
	 jh4OzpA86UMGF2H5Wq6CyuZOAfRvNx2qG/2EHJua4zMyLjycBGS2vYmhWqOcnouvJ2
	 QXhia2Ks34DAdg1BNls4Ki4oNRyjShCyyszpYxXnoTyoDxj9Z5RiCkQy0AJXFb/+T/
	 i67zeNLjp8mmpyi6SCBEjatBhsHzLayaisZ6srGX1uTHPdGIKD11TkWGAw1PiL6XxW
	 ltfQUrL3W6NTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADFC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432179359.25382.6554072873197995749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfd75906548a41924b4397855ca9a30d79266447fded7ccb1572f3e3e21bd55
Date: Thu, 10 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744321793
