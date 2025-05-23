Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3071A21FF34
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747969194; cv=none; b=kEMjfZgZx0R6JPKyRM2b6b+MaMY7PZoqEWn9ZTCDQHO8G/7GIAGNBBPbgBvp6aOdTq32QsjvlKDpMheFi++ZTNqcuWnd2ZGdVS9Bc3LB7DtTRgjEvHFANHNWFN3CYLTBN+MiJlWH8bmE+6f0milDY0gebHgznaPUoO6u8bIBEAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747969194; c=relaxed/simple;
	bh=r5rs7I1/9J6emILDhDOvGoql4JAJqahxFPjylb7eZSc=;
	h=To:Subject:From:Message-Id:Date; b=tTZ0IrHTQBQye1kD13bXKV6O9swHj/8Ap8HjLIxJoGNkpGQCAinAuNZtSGapv62dzVSeUz2hm0xfsznpSTXBfGieifoJyduhuE4eHq6uVC0QqrveKn4KQTwdXRPFwWhJASSFiVqZY/uvo2Dgq6/w6mGbPzUNAJGDdcNMksLccd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5YpAdvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5YpAdvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA30BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747969193;
	bh=r5rs7I1/9J6emILDhDOvGoql4JAJqahxFPjylb7eZSc=;
	h=To:Subject:From:Date:From;
	b=T5YpAdvWEBtTiXOLB6h9/Ors8JobSW456kihE95YuRMq1q3B+xlQ4ypOwfhMBUCRK
	 Fw7+sW4eVUKOD/xxPck6uO4sMMRJg+qa+OVMiwBEqQRVq2aojjg3mOp7vqQO1fsHpN
	 xUogLlT8WuJSAaZH3P94+S2CQa0tMVVwxQnqc4zIwcoU4WI1EJwCSpuTpiZp7DTRTD
	 ryzcWglbnG96Uw74Je7lnnGXQpqugGiYxwLybdts91WQipSxaST8WCtwqLBNifLp2V
	 3xOgyrNdBknM00CvZIBA7Bd3nE3mYkWzxKgUJSWnBsv83kzqFwYhaJVMeQovUwA39Q
	 6sjqHrJshjAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3BC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796919358.32529.7495825603093825801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56279c659c688749a9ca117b6f2e1f3fb2afc77460b4b27abf4e7947eda06dad
Date: Fri, 23 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747969193
