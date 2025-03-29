Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4303B182D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743280194; cv=none; b=AF/lJIL2ew9EwF/0hAue/BSMsTJPhmLkEXgMS14F1NFcya261mSY8MDsj++qnOX+hptAi2oQeYwpLMBUhJqSTh+ThEE4NNab6PnlSibScsIp3ZLoC5jcexHLq/BuGaAbhHcXMIrEYgRjvUKtIyk9aIwBTGEGtpp7ZPtuycr842g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743280194; c=relaxed/simple;
	bh=9lyaqBJPq04KdmspXZRJ0dzo/dqz0BxhNcDItYBK/ow=;
	h=To:Subject:From:Message-Id:Date; b=h94mqeAhH33UqVMNRvH4E/XiHbsoOzifVj51ehFhR5eLUIblBVzBuBwyvaO7TSkB8HWvXKI8kD0J+x/tCcy1QM5W/e+EW27XVDURujgP0IUEiJXFx+O+uKy77mQoCtQ9EBVbdQYfSBokanvNnmpdL6Gt9huuu3gjjPIct6OIzfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFved4eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFved4eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B765DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743280193;
	bh=9lyaqBJPq04KdmspXZRJ0dzo/dqz0BxhNcDItYBK/ow=;
	h=To:Subject:From:Date:From;
	b=WFved4eDxcumFX9xXYeS6wGVlMmqHqMWV2mEDbDUw6imO/ciMIfa3hS6OJwIPNF2A
	 0TWnABFm7aPMOpcLXwhalGT2/ZDUK58WMuI9S+Icdk9ZZq9ACAlsfbWzYkCFYtkRC9
	 1OCnNxPI2954S6R3VIVHT0RKzNasoeiWL2xxC30AhiEa1QcgXPHiiZ4jQ1W/Jw93t7
	 mQ+O+zoKXHRE2q0A7rTkyJvWE22NAXM1T7z/uIK3katoakAzqE1LMlWbbgnS7c1MZe
	 djzt0Gs9EAvTdKeQDyBJhv5lGrVjBKLG5RlzQN9qNySUKi6vZ10mOliHMWI2Mjo3YG
	 WSLaR+9OFO6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A048C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328019360.22410.16780033616411682500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc48a02f08cd20aa6c62b01c580bb41d7679d75b161f7559fa57c2f7d048824
Date: Sat, 29 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743280193
