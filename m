Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501882DFA41
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744686594; cv=none; b=K1CPcAWS0El2G8qvhv3/pb9HigkbVWoDzT2a+EkTBRqGECHYn0w/bN+NFcwCHpiwIizPqPSNvHBr5zKCdAjVtBEDC1MdPkhvB4cIb0JIgDugQtfWKSSgwLQypfmMi7eSueZB9v5X4GasZ5h8HHJ3a1ZbxhrEeABwTel7NPtOFMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744686594; c=relaxed/simple;
	bh=1IVfQ/kGk/YhliwA74nFNaBDaHNSoJTsys8hGYa28Ek=;
	h=To:Subject:From:Message-Id:Date; b=Jl0Xo4b13RLTLp1zlcHSqkTiaVtddx3nVkogIxo6rdY9KfFfKsocz+V/mBKLQqA+cTiKqPFHDCg2RU2rVVzOH5rqmJFJXz7m9ua2LdMcCdICN9bw4laA31kqM/e0u5lemviMdGfitcVV4U/fvMQPrH1sW2+8lERV76FBYyFxga8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7QXg6f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7QXg6f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2362C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744686593;
	bh=1IVfQ/kGk/YhliwA74nFNaBDaHNSoJTsys8hGYa28Ek=;
	h=To:Subject:From:Date:From;
	b=d7QXg6f7S3X8COP0MQkEi3JCEAPiywYBwxA5jBD6//v0k1OjGMrJJ5E38e9PCRTnv
	 v52/clWRlMicvGcvQULPU9zQb+tPXhAi/n7eN3+MCkhuOQiF1yZcxr07SUpD2+F3fT
	 qMrFl2MvY1K7Xov5lF0+WdkTsPC+XmDwdfipKFTEP5EvZnLEgjjnU6vSnTPMYtpniZ
	 QHwF+xQ5olYrbuUfytKnzG7IPWUoVvqdeorIxh05RWaiNFPdAsIIVefnQVvZIELv+D
	 MiscF9JgfzK0r4WwL7CKfYTZ8k6ZNqGrnXaJzeclVF6n76ckHgTXHkX3WnZmLAMO23
	 daREhjnnj/XCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E203C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468659363.17340.15089124310752568665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cf1f774983e99a03bacfcbd3e2096b22c04a0adf6708d42949425eef8ef177
Date: Tue, 15 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744686593
