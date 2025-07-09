Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C33F6BFCE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752079794; cv=none; b=l6sQ0bv/aSBueVqUSHNB8IUhYWdaLkY+BLJZfNEHYUmHdT//c0FW1PlZwclO0QcChrto/GAV+0+pA+acsaOqdtoMGrOHTcuoI0EEIKvBe3EB/vH2+MzL3adyX+/VxT3OL1ytTxjob69+vda/ENFqu6iNt+ot10T1293V3JlsyPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752079794; c=relaxed/simple;
	bh=8fX1xp67Ro1ylGu5U8pjaNg65F51PgkSu1zM2aWxKNM=;
	h=To:Subject:From:Message-Id:Date; b=Z0XFVV7wMeQlgbfBoo/fDxHmOaEAiWUaUHfeSPcnt/fy7yRc3nriolRoWcDTvlLAcTn63aVBgcgkI20705SN7twE3yqAO0yk9E9lxgiZVhMJK7J0Gj+Q2O/Hw6NYg/Zuf6NyOS/BWQ6jdA5XmjoZ7ezPd7guJkoa8zU0l9rjOug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHgOIt8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHgOIt8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB269C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752079793;
	bh=8fX1xp67Ro1ylGu5U8pjaNg65F51PgkSu1zM2aWxKNM=;
	h=To:Subject:From:Date:From;
	b=GHgOIt8W51r3oZiEDrBihQOeO8zMwLfuOBtLbzQlshCEPIpTFhTglM8SkxkUPHZi3
	 NJoHCFH75L46O4PrX7n+yMBw8uRDAGymMgMRqlw9Q+AN7layrPdGJOHkAeB0KqLKY9
	 Vohcp/zuTX49ldRyYW8DYSuwibiyXh8H8z4HiW1tDehlqrzAWG/jlhx0H0HV/0j22L
	 +AE45+Ut8Iz9cPlF/lK8Vm5+mWWCLNfe452hnhH1Wgowfac5EwMtSrIVLFFDGE8G/I
	 QZM1NNeQeC+B6Zlarea/tmcbhwrMCVhmE/j1glocr+acEpG+kOITpbhYYLRQNwmGL6
	 8ocIGAAHCBe1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6F1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207979362.5314.1378740611015688129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4e829d0e0c04cb6a073638503c2194b323a9c1b2b902d4b1a29816692c06f3
Date: Wed, 09 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752079793
