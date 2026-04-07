Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299EB318BA8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775559934; cv=none; b=c+sBjwvVkNq/9Jqh+CwqjJGc6pnkTLhKn0kkj2upkEZ3OQu4zXYZ1p3aXkZ/c/qg+NhK4497S1+A7DXkC2gkpA7gaIoacLQjHWLB9r0ugPfY5V5n8P2Bx5vcdgBMLuHhTc86PCJNfe4ig7i3DYUo91mgpdFSQJn0vsU3J6VxoDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775559934; c=relaxed/simple;
	bh=POsaOKLRvUWD/9cNdvGr2tE8bxEZVS96PTm6F/MOvJg=;
	h=To:Subject:From:Message-Id:Date; b=YOCtcRvbAlJHKtHvFbk2yAxJWchpXNqLFbtQIbbrZ87z8j4Wl3q8dPD5ohJbDogAOElJixWC/vwjDprfirWb+M5aqDn5Ryp3hQ7qfxVuZwgSN4yG+YuSPf+3yRtBTXRwkMXNzDBSDrrAcinsSdKJB/QToje1Ahd1VDmm1wHA83U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZcyGJkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZcyGJkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EDAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775559933;
	bh=POsaOKLRvUWD/9cNdvGr2tE8bxEZVS96PTm6F/MOvJg=;
	h=To:Subject:From:Date:From;
	b=MZcyGJkbxct7dw35g28CxK8zYMgGb7IpzEylhzJ4rX8xhJncSR0HcQ8tYz2+UGvFb
	 se0H7yAx1mdaaLuFplMlR1x2TxJe2XLXsyN2RTM48kkOTlmGxdeAPKsWNzY8z1koZ0
	 d31Ih2FkqJlJgcz2OHgEYCZE5+RYUwbh5INJVuXQH/t3xeSkiAgYQn49NFk2tSua4k
	 I2tazXRG2pcCCFVphQeu/EaSGAW9RDfeOeAkXGyij2JYxoSTSJV/FfuQasdm02XHJL
	 Izrrj6hq3KKgXPZvBd1MLvlqmwB5oEdhQYUNKcmeMNzvoKdWCP+neeiOuA635j2Xc8
	 FwGjqSbtpUiUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBC0EDB7FD
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555993369.9489.16306214613055590185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db067f49193d05a372efe82b59798e75a18f70d6db0b1e1a69bbd890f6b07bd1
Date: Tue, 07 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775559933
