Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033C33009EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774429494; cv=none; b=jqKHdHybUgb+sz8AyUKp/+2rg081Onzlewr/3c2eyPC+zt6HQ65211rppZcvFLmR76kZMBbZ3yOeqmKCEdBv+wJKxktAHh2XWZTfmc38SfvHYWIylK19D2brShzPjihTVVJ0Ne2uuuyoCWpv0yzroGNYLI/f0IeSqWlPfp94CM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774429494; c=relaxed/simple;
	bh=+GRmmg2wADvcG90hzZPx2Papm5knV/CNahRhNoQKpEw=;
	h=To:Subject:From:Message-Id:Date; b=Hz/GA1rGWa4PWZPY7xALvDEnD11bJER7vh9xs8slPuLMkD2S0IG6EyziAVSksMhbAGWIxLyJrPcAy9vwtpUzRir5uGlIIbT1OiSqTWpnNGD91zd3BEazqYDfc+qYwurE3D/4QfH1DrcsEfgN/QFd9vnWeDm1cJvxFhlDYdSlYtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skPBwCsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skPBwCsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E2C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774429493;
	bh=+GRmmg2wADvcG90hzZPx2Papm5knV/CNahRhNoQKpEw=;
	h=To:Subject:From:Date:From;
	b=skPBwCsWw06KE9b4qmxfYv80o2UIOtFYN/36PVaKJe/jdA8CkJeKoJreKgMF/pPPq
	 I9t3deOPtG9jcBkyD9ZniqjaOgkiYZY/q1F4uR27LMmxWrQxttOEonVMc1AHGa+/2c
	 YyTkzlnstlZNjHwJASzYxKVE/Lsx/bSncxhgnqhDNkGxOuh+iZ1KirgKF2I254ZEct
	 6NWIczVvu+xGuTmw5X6kTPHqnR08DodTMXwHApwAv0EvOSNvZJsh8TNnPQosmm97hM
	 NzEb5EOKuATHXw5C+XPI+I10SM83/BijYQpm+2wafg829tNk/M0X68o9ku8RlRXBwk
	 3bObTRQSa6y5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97930FEA837
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442949361.14141.4460795933598016624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1316e9d62b44890856b38ff13fb5a608b10cef91615236404b10ca32ae8f405
Date: Wed, 25 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774429493
