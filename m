Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811862DC783
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778642434; cv=none; b=uL76p4kSXh1oprNkL9lLwPwEwaNn/ba9UP+KS2ztSgsVaHJLTxQX60jf2fT9Dk8HV9k7opZNh9Akxd6NWZ57qD0R68hv4aKVwalKt5T4ULsL308BIuOPkAtIcxXucLHymbKCWoQ+GWvMap6jrhWmOrvV6iRoEJXY6n12Xqd4LXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778642434; c=relaxed/simple;
	bh=DjZW6Fu9RdyMQuF/C72V3oM6RAqzb//2RXIpevxiX7U=;
	h=To:Subject:From:Message-Id:Date; b=om58ykjilyrKZpiriY7qZ8tkSCfYfuduT1yMSWNdJzst378XCLbcvn2hBKMM8u7Tt0Fi/7oMxbO1NLWtA7t9mJjc0SyKa1pQ4VUc60FJwXuU6Bt5WzIo3nqJIrFE16aijmU7Bea29/w8O/mVxuZ4ARnsam/KDvm7mGa2twuq4C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHwDQs7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHwDQs7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778642433;
	bh=DjZW6Fu9RdyMQuF/C72V3oM6RAqzb//2RXIpevxiX7U=;
	h=To:Subject:From:Date:From;
	b=LHwDQs7NCH5X/QEQNc7BhUAgJdTQwoqDq36FYWQSMDI34uhLI+pr58+ddqTCMCbd3
	 0lO5KrEg+iH+NDjvWbBCRL4hjUHcXg2G4Fi/DvnnSRpHYMmwkP0VfwHPLEUS9a7eKx
	 kCU6vK4IhQtn2MuKfwNKrx/sMJ0fgiEw80Z7xMw7nzZw9qmfMZlRO0L3b/NPAkvYZU
	 4rlGk+QuqtB1HJwhbgupEJ6XvWlOtJC8zMqHq+1pCKgcr24I6F1+brMa42qyeFh0vH
	 GvTWXu907qUZKhgSNIvBI2SRtC+0uDw++dzBFd3pES77qRCeqi0Clk37la0jtmo2Kb
	 Tl8bi+Ts8Pvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF2ACD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864243369.28666.8770728153059830097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9e90aff2f9c655bf2b029d69dbf7f9bdde611047fb416ed02a38d05a920b5d
Date: Wed, 13 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778642433
