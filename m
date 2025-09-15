Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C956D2C0F87
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757980793; cv=none; b=nYIsm6qd8ogBEUfOcbi1goChK3HodnIMbKL5aUQDHchN91EZWFSStHI0XSrLLJycWYhkSWLryMiscuA3zddQ40yW4Pml8xC4R55MCL1BzZqqCynWlEWVfurxJ7IfrZN8JU40l4EMkYMHZnEGzHFaFnrqlB85i1b454BabduYMyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757980793; c=relaxed/simple;
	bh=/+alyZrtGX6wOyO6jOf6PeWX/mgoMQ5/J8YMcOwXVlU=;
	h=To:Subject:From:Message-Id:Date; b=ZFBCUVFJI+SiV9A3wIlPJkwdSzIYI4w4tur6wUznMdKrXTuz43q7d8W4xuZjD6EcnspGm76HJww35iCJYRw5uKq7qD6o3mRrzAcAOCDSC4LdlyPed/sZmJ8ezPBvmClAddAmqJLZqXhjHz0rXRtENdh8MT6Xks1rW7O73gb91LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4EIN4gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4EIN4gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0877C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757980793;
	bh=/+alyZrtGX6wOyO6jOf6PeWX/mgoMQ5/J8YMcOwXVlU=;
	h=To:Subject:From:Date:From;
	b=Q4EIN4gZ8SIOJBjq2aLMFbLfjzDK/LaVGx34HrFplqldHEG+w65AvHzKXyQAjZom0
	 j2voCW5zcmwEodIYgfeTRCJ1l4mWRRz51gT4xZ//F8gzkMhWXkTY12iI4/Fab1aC4M
	 rmK8BxJPX4XB7s4DcytoSlc1yg535HYVRmA+v7EvcjGzHZUD4ILWvyoLrBygLjostx
	 HqeUMumiOpbebgZgcjDTEfDpvK1FezRUzJOouVsd76RRMp346WO4hWs6mUiGVR4IV3
	 3QgJDTCuxvmA/Ml0CWvD4Dht1Lcc7QPDPcVhD2sDEw3auL6/B/0KX6/NG1ILZey1L4
	 yoin1093WcLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798079358.10468.8016374486139142561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb09a2eb9ef337ee2efa407353dc50f0353876ab68bfac05f0e66b5f11d3d7f
Date: Mon, 15 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757980793
