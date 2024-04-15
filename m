Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1645283CAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713191363; cv=none; b=Bjq4ZNA/jsuVtcq6pmKv2u+p6v3WEpqblFeDF2WmMaoSZVHZ68X4UYV8Lj1JJixBhgomvOOBFs4BHuQLGvmkDlPyiLtOwdHMCnpLnirbcUe/Z2gSS7EQaroR/4j6b0AnqJh7BUWElbbhXqMo+E7UXLR5brVuLY+4Hie2WnkeLVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713191363; c=relaxed/simple;
	bh=P+t5Q5MxOddqdTJrzd0jXv9ZFkdpEgdaKYR3Mo2oj1A=;
	h=To:Subject:From:Message-Id:Date; b=LP1SHKdxUeByGtMjl0LqfENgRHGhSUxtdvwfXr1/Vi2hzlox40gN7oprK1P6EQZh1tkn0T5LP3uUGWZiQO9q3HHuV2ZmfR9YhDP31bZzfnGZTNQeKDb3hO93NBlSTCLaXDpv4z1CT4vG6fSNhxviL+qz9wNP7NNWXZkCMD+nlRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVZ2hEoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVZ2hEoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8EBC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713191362;
	bh=P+t5Q5MxOddqdTJrzd0jXv9ZFkdpEgdaKYR3Mo2oj1A=;
	h=To:Subject:From:Date:From;
	b=tVZ2hEocQSjQvUsyVx6uNeh9At42l+iOfbN2NcWQmCbUwHBdRh5bCnXwdNv0JJKB0
	 OSesuaIF/2UNxUPKCPPKY9Njh3fQq1RYhVZiu5Pf1ldakviVmyZh0GqklAAAPMmpTi
	 T2LHZR2VVtyqazlyiarV3iU6m49Y+vSI8WTVzj2oO0t/jvHQ6fjenJ+axHZNE5W5MJ
	 A7PSbp54jftb+nBlslorilTGfPYqN+expa1q2o1zCbQnS6687KrbA6x85HqeXYQ4X0
	 sdCQIJf+qHz8zk8srYyTQxnNj+EIEmaOclHb/1lrQfUHS51jndXdBm4sMCSMXW//iQ
	 KQVdldfBmlBLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE173C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319136276.18795.5262937102747593296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623428b217f8d5fbec6fb6241e17e4de5af7495c2891f60635f9caf6232dfaa4
Date: Mon, 15 Apr 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713191362
