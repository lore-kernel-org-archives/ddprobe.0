Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834F730ACF1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790728834; cv=none; b=o9BHRX3+jLmqh3NpOiTk6jh0SbhhbHmBHFF3MCINb1wbn+F2tJLN4R3TK67oMkD4vKEiacasT07fYSspK94/aHwPczFU/PgnCT0EQS0Aq2LRlQv7yKyimWtFGHMxnptLvxhOHcEK8/AATx8mrGTWeZox134ebnoOnTZ6NHFYvR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790728834; c=relaxed/simple;
	bh=/NJ6wukcMzLRXsrXBCkefoSwxi1ibAi85X4/nPUgt0M=;
	h=To:Subject:From:Message-Id:Date; b=Etyv9IJC2RAZHVwKnEMzdu1JvHBflbAR1CCvhS2Q6K90tvGLQbuEbuS2d4tNW+IY7hLCgCqCcSrLxjAH9fcAdCBtDr3b+MaEPAOuft2DmRbqKPOMlqd1satT7rY4LTCJ1VI9/zWcyytFov7oLARSoVFJgtZ9FtZ9rj+8ogTBBk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLRbqITv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLRbqITv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FDFC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790728833;
	bh=/NJ6wukcMzLRXsrXBCkefoSwxi1ibAi85X4/nPUgt0M=;
	h=To:Subject:From:Date:From;
	b=XLRbqITv7BC6TL4OPDvJPf1+YlqYRHEiiVQFUNNrS4fKdMutScrx9sv6zRClI3B5j
	 OENQ6n9e0dknReKQVojSn7x+Bhw1HYwCNhctQ7XZ/ZfWda8a8Q38EwgLWX4xUkbH0+
	 smMqWu7m/SI8QgfV8ESgxXOLVKGNfE7K+oeNH8+8jrmGrCjK4Y6ugVaQ/T2jZDOiIU
	 ysHT8/z9x1lzKfUbmtQRzNPnuggT9ZmeyZfq8tmlBpnlDtBgufrACDJlL7/h79N1tm
	 f09gdY5h7ZkrTU2K1tTo6woqlydc7yfrApsmxbbCDjd7lEhOwHfHFni9mx+6ctdJT9
	 SZcnZue+s+8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E7CA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072883368.21136.17527653397372799434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562ee35c6250e8b648afcf9fea782026bcf096ccbfe1d09c2ddfdae4c13d7005
Date: Wed, 30 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790728833
