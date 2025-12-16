Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0406031618B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765905234; cv=none; b=rrM2o7SCCmtojZji/DA7shEyFm5TvfUuv4yTGEL78yeUgBfjC0gF03GnZZWCiebPPBHyktYJHDBlVMcNSGzsGZWqIBdf9kmFpthHqY013zms8upkjUaUigjtkoDzbP+H3+m6SbB7TGN4SQBd9mMc1F1qvygghe6Sn1sReRkIH5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765905234; c=relaxed/simple;
	bh=KpxtN1hSfWKK2ZQFc59dnqJDSpc8mGPC+GnoeewBf6A=;
	h=To:Subject:From:Message-Id:Date; b=MZJLui/u+ZatXi+kBTGU3XjU2QEcPYr55WLNpLg/Gmpx5dhNgyuMsguY/KHSmTL2SFULMIfGXAoCRN0RNfjwiuXNgiQ5HaoLFCoY4Le9clGsuoAfvcKnZWX1WAKlB9q85Mhf3FCFzYz33TxeTHWoSydmFXXNqWnX4/OI0HoBQdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYO00Ovr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYO00Ovr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A62C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765905233;
	bh=KpxtN1hSfWKK2ZQFc59dnqJDSpc8mGPC+GnoeewBf6A=;
	h=To:Subject:From:Date:From;
	b=YYO00OvrnEZsDe5UsH3eVPXac3NC70CYoBifz7HSGcNM0ETHeRPfDuD9cDuRa2kcp
	 l6AI8P5LR2Qlq05fPcfsjfWJJzinyvHg2X+DvLsZsjdSNUm0UK309aFcsiA3OLXcTu
	 0sa7xHXIE+ASO+NdjZPYQZK0lgrjGj0aBClSnafCr7lCDA3pHdCXIoGIcP3qUOB1D+
	 FjFxYbB5UQAG4oNay/LXriUm54g2HC4iM9VkC7DFzPHrBAZOQEgZfb0lvfrpn5PVFZ
	 8kQNtzbiBEv1//6gAEPBCmOuFKftIj6HCJn4QDkGQonpvVknX58e3G4XDmHpOPQzOR
	 iwdRdhte/dd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F77D609C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590523358.10723.1583085766658611551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87fd9ff43cd9e56f45243d272fa3a9c0a6aa93a59d5f5a05ea1339f6aa4e2b9
Date: Tue, 16 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765905233
