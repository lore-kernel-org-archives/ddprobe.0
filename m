Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1325C235C1E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759882794; cv=none; b=LTksBLUG1226D3mhnvY2F0+LK/MMXLZEKzhyx1bInQbBu2qeUUJPmycZ6pwLJidq5oZJ+CI9Ylu7XOaoqPvJgjqBFMz8yoeiSGEewvleZ7kHAY6Bf+sJKO0iGBAC1VviyWrtUxv2pPRb6rgn1cY/02wdvoR53eWlNss/DckoCMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759882794; c=relaxed/simple;
	bh=rkpVr3HZAX2zLeaXcmytF+wHAC2bIQ7KA38goSl3sE4=;
	h=To:Subject:From:Message-Id:Date; b=N3C1CZA0f2k3PSAO8Br4Bv838cEMYoBJblP5ZYxV6or5NSkpA7x4lffDARMPHs83CE76zpFApVPXchXZli9XAN455LlELvqvZXkuTg3oC6Dlyt4SGbWtY4KTV+ySs1gxGeT1g2+3vYgPe9S0nAW2FQ6pC7VhFPpZ91TsvY3DB5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBBZ1aFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBBZ1aFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759882793;
	bh=rkpVr3HZAX2zLeaXcmytF+wHAC2bIQ7KA38goSl3sE4=;
	h=To:Subject:From:Date:From;
	b=vBBZ1aFY7b2Q5Slf6GRcmhWS4iDOfaYiCgAAO+JyJ02Vn7GcqooTTNRIIt7qiFEdB
	 lw4YXHOan1PeAhOim537vm8KyErFN5KrNvx0qRrzOHyHEp5+D1PudRayhor+L5Fc6B
	 T5UIH93no4Stc7eceOisYQxiDwFWiOrTyP06qsfqsUpTMiZRYQbyxpNgTO2kNMYf41
	 3XxIGr8jGuoyhBZpdnYPWOWFFM4xwh/fSoSLFzmvWPIzIqMiAc/vAxnT5P72MJbK9k
	 ZwjKWLBZXrhudH0B5rUwLO9Fm//sjdEFd65WeAzgIOkL4d2l97HyQieEpC/FMxvgkP
	 vAxRnjz0O7amQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D72CCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988279358.28860.6382569564460974865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b32f6ce83476e0a09aae82c7b5f6c4d640c302ebbf603129cd4da21c2069aa
Date: Wed, 08 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759882793
