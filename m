Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F85C28E0F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786786234; cv=none; b=VHoH4wu2Cn1Q7cVE4IcH8f5fC4Tjtn/lUUYOaX7yB8HmrEMDH6m7Yod5+2/Xbkqou0vXJcp+em3LpxLZ8fVZP0si8/IqC5iCZZfwTc/m7InZvbKjvi5KiuKvP8g3UjmD8zbdJXN1XcvjVldobKtqXTTYPOIedYI68e/l5RCKxxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786786234; c=relaxed/simple;
	bh=9Cijgtft2z3mDn8M5u5uogQQ8nZBxI3lhzZX52MDh/w=;
	h=To:Subject:From:Message-Id:Date; b=rCJ1X5pKQSPmjetjqnapZSFIhe80PNiRvEdesaudouYmxyROtp5aEK/kUr71tBLI/VtBqZljaYH1WK1dkvlENKHqc+eDUgljrzFU9PIoxpxpgrczPXgzGOm0CNrrfPMQbOCs+WRQT9U3ZJMxf+RFvnFelRWaCHAwcbe6bc0/jHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5ke2hSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5ke2hSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE888C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786786233;
	bh=9Cijgtft2z3mDn8M5u5uogQQ8nZBxI3lhzZX52MDh/w=;
	h=To:Subject:From:Date:From;
	b=F5ke2hSa0CyiRF0bBpq+pePP3AUanZA/M/BPWCtIb9zlumpFT2ZkMvuc+kRveuC42
	 ZLDhRqkdezxT/hbHFjx59vqPHbCfUfuqTN7HdsQVXLrhdiZX3FEP2eA+iQp+TBhZ7g
	 dwMDXC+l//mPJtoeQkIUuoxK+/DEaT1OzIkuqDddixI/CAVVoyi9mluFFTqqCXGaKL
	 W/v4naGHPmqT7bLfgMh8n8o64SKPiCymbdL/6i4R75Zt+b/iE6aES8NzGi7kZllFW6
	 TolMEmeGTp3IAFBCgQ63/BCI4UC0a4zGuv/vaI37uU5+LBo+KB5X0X1wXB3OZHg9vZ
	 KY/SdqgZC/TsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA481C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678623368.2718.18170242838886923692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d168ea3619f35db773c7108a263eb6fa91d02bb47d60fea14308c68b5706f7
Date: Sat, 15 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786786233
