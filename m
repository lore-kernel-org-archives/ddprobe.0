Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F16418DB2C
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741274334; cv=none; b=imnj1DENmqOPtIPCcxIAYSgvi60RwMPmcqmQw2bjPGV03NbVBzBQKDpZl2pCVS9uTJhKPvUyzlVWT+zENw2vMsEESjUhpKaUhk8Yex4obvXzfi1Tgd9i+EDUhQQCXNq+zC4a3+3a2ml6nNNhRt6wupjQYWMGHXjl3/rWmiY5eKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741274334; c=relaxed/simple;
	bh=y2M4Sl8W855XLrMzuXqcdjsyhjpBrJs0EPimmLJWM/c=;
	h=To:Subject:From:Message-Id:Date; b=kyU5x1UTK9FCX7YXdgxUJUb1AK5V4/GMzksDBMRL+gQUlKFNRW5M6XH23sUEfi2ifr1eRQ7Fh6lDt5xjmA6/7JPhhoJxjQTcMzMExZOxs1PB1B/4Qqa0MPR+/KVvW1aCz0OHpr1D28ZK0FC9NhY2oLYjinw2QtOIMFhkjyGJKkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as9CNDE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as9CNDE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D3DC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741274333;
	bh=y2M4Sl8W855XLrMzuXqcdjsyhjpBrJs0EPimmLJWM/c=;
	h=To:Subject:From:Date:From;
	b=as9CNDE/3DIgEBsYVNYpR8bQ2L2VELJFF8D4U1ztgBSnlg7CsyufImM1OXL+lqn+U
	 BOUF/Upc5tIzKw0U8t46Bmo2Ai+RwuNwPacR6dDMmbgNaz9RO53eMxMxT7QiTug5vw
	 mJi9c84Vb3ZzpyaM0RUz5qJExWFB/ljq/v3VcMrdmvUs61HOGUWXq2LXC8xVTPj/wV
	 ERekwQmqJWZtqVndL+3zwzfVqQ42OSeEKgx6M75ohbCPgZMOJgOFS7zPQ7fcXYmUJX
	 VZWNoY20MggV6B5IDlNtiazSTGVDQvfifYZpSvWALLRMTo4NBiu86Pjlp08Yzz8sTJ
	 ZqL8kwV8LnT4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC60C282EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127433363.9941.10253403963763441739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b24d813108dc22ddef58dfb664dd74e0a7cb279811d1ca446adebabb6d6d342
Date: Thu, 06 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741274333
