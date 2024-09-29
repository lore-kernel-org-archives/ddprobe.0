Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3364C625
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727571954; cv=none; b=shnZPy0LxzGMl9iWDPsAtGcWPoBXCiyQ+mnLKFA9C0jJllzgocv4m/PzSG8JG7cmWcFfB5qiiDAGqvmI6ptopmdEE0Uk6y1L8J+ox8n7ueuLejsg0V8chiiGQhhl5XTD59YJEN6Bm6Mep2n+kec/S0dxiHonvenSbHxi95YdQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727571954; c=relaxed/simple;
	bh=yIs75D8NsO0R5YoObvHUjuPeC1pJQP6rtfFOhCqe2Xk=;
	h=To:Subject:From:Message-Id:Date; b=DJzO3S/Z1r+bemGNvDOLPbAyy+0g6lj1LcYxya6r2czN1kB7sTjtkW9iZw0qmgnR0+9ttZL80IZIYc+/G/SJg5oGA11n6nFSdkwfEzUMXUzJhWzYfSZ9qoFlDH8ewPKQSgGYi4EzVBYhjkKwwBj4mMRiZigLRKCJGcg4INcEbeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jma2WsOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jma2WsOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CCC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727571953;
	bh=yIs75D8NsO0R5YoObvHUjuPeC1pJQP6rtfFOhCqe2Xk=;
	h=To:Subject:From:Date:From;
	b=jma2WsOYRxueAcnBWnqmlYxOXDM/6yR01r8prv5mIQnt/aTQgxWZp3WXDnD2G/B0n
	 YoZk923LHI5vy87PxaR5a7IYK5kl0tRY+14PDQarUtORkl9vdWaV6siakdxo/mMaMk
	 5lwiauavGJKdMWjkdIBuLk3AKtGhkLHwS79p3gNsIUUfv3+/xOtxL5nSW261ZEw8tS
	 qcl4Mx4/Z6xDIdP47BxulsLieUU4Aoij7hAlFH16Pd4Tu7TG8gE7bvpvNyyNa32Pg8
	 fo8p5mSxsngUi6vtBZE6HBflUKmVvbdtr4+fcSio7/EM04NNTxMQSZc7TwYYrJcHGc
	 lorSJ2rdePFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC86CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757195357.10049.13414128756479680648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33419738a7b85d4c4ae5ad435815324d9a2fdbdbb10d6bb89646c93be727344e
Date: Sun, 29 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727571953
