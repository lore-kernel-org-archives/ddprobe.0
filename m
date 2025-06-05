Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE2D18C031
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749136794; cv=none; b=RMldv0pls6Z9eQIpJ/XofRufiAxoIpuCBaZdWjSd4gIQCklCDNsNHvmumK4JIhlg/xQXiGLcpA4aOW0AYbvd9rzV4F0xw1qaQunJsebPi+bET9iRbZ6taQmq9Q8lJ0Trms6z9SOiwgPJpFuamFZQM/gkoT4LTkM6bqAW78Zo0zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749136794; c=relaxed/simple;
	bh=pAR1/Q1NiNuRE6XFUIEVY3zjkkQsSyTzx+YsuQPxmGY=;
	h=To:Subject:From:Message-Id:Date; b=Hxads/gyah7SuodNJ3f2U+s9xkPw5Y93i4ZSPHBSNSxYKi/59mTwpSZ8CW/G00z20Pl9ZZngZgNft7TzoC7acrsJv4KfYL8/hYJH2zbinZAYi5PB2P4U8Mef/mftZgUE/US0twcGKbEpQlzk1ghAVNLfs+VenDNLRCQCq+UbggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVlCarWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVlCarWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34C5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749136793;
	bh=pAR1/Q1NiNuRE6XFUIEVY3zjkkQsSyTzx+YsuQPxmGY=;
	h=To:Subject:From:Date:From;
	b=jVlCarWCOle9arrssdLrEfYVg4Vm1kWEpy2IGcHsFxjaIol2q/gq9zxfBfaKyUR0W
	 +qDxc2u++sJ6LPTijez5baNtvbFtOzQfDJjwf7wUu+4Xe4Wz1177/2bVFEjZugL8gU
	 34K6xfLgxto34Ez/ab4meaZcR6eDy7lQr67XitKpn8cObMeNHlLsI+pWJ8g5VE6fkC
	 jJ5Jxvyt3Agc7XsjX9O/Cn/ZtTBBisetlZoTClcnSnTvCzY7BufYZactm8HdDvx/QH
	 z+BA7QDaX0wV57trJxd5EzhjsebCMoTSJqiatr982n44nuuicH0YYzl/0TbQt+IPvq
	 cRRWbqptpkAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F446C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913679357.19356.3009527647348692388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e1629b3df7df2f07dc387ee7881e11cfc45d22573af2f079151b204d1b9538
Date: Thu, 05 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749136793
