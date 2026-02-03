Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28E337F74F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770125034; cv=none; b=BTLpvsHDR+zf+qA3UEL6gtCYHaMfOFYHGUGSFSBFG+DQ2vlaU3cVtOVmFQOxRPTv2ZMqi5uBb0811/l2f50ulFxGA5F1S55qX/kOTnkyZK6mkl+9nHNu0RwRPvlg9rymGNj/szGjInEdzdY0tAYcHTMDp4wxf+Euh2JAKEx2zYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770125034; c=relaxed/simple;
	bh=mGx/CPfY5msaTkj5xG7pYIW8FyPLSLV/6loFI9U89DU=;
	h=To:Subject:From:Message-Id:Date; b=g1onxbcjmp793uo2CtmkMyfU1aCXPz5zSsKOvrPyZp6YWB4hBXtmyGjepR8xRWhnXIoAAsyUCZNXejEL+pXd84s+QC0IEkDuEkeV712zVctFrXEZe8/6hVbuyTOqpX90nNUMt5GwC+bfR1DchYeoj1D6q0PtFwpDnATSGRtVFAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGbP3GiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGbP3GiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A6FC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770125033;
	bh=mGx/CPfY5msaTkj5xG7pYIW8FyPLSLV/6loFI9U89DU=;
	h=To:Subject:From:Date:From;
	b=gGbP3GiFlBWIKK8dcrmKtOVc76AZhT0U8aBaxN6pVvhfuFd9Tq/WSJOqAgZPCUNvV
	 lT5cbj4o/XF7hr8YaUPIOKGxWyq4UBwC2tUmbTdzLmXYnQCA3ZC4Ok8EUIyrnPWG7b
	 /HzLNFZbSAFXK/SUZGGuEX+xJlchJMMO+clU8eVbvKxrNXPkpTBWdsPXpDvs8Cl65u
	 Z4ujKhdfypM7laao6zxGeW0Rls/8p94N+YJd3qIbivGJ6tadlan/yaKMruhOf7xQ+S
	 raVP0aRdjzyg3KNG3vXZFnKBlxAGM5t8tRMWechIb+wUtxn3+Mr0ZVjHw12nS6um5v
	 +siJ+UwmQmJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD000E87829
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012503368.9195.15327284086908607510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eebcbedc6ccf994f46200f4f405667d68eeacd9b4ab61b3572f7b8489d2c61e
Date: Tue, 03 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770125033
