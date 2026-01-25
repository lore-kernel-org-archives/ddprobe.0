Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418B3195F9
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769357634; cv=none; b=LXPcFctjpU/e+l+0+Klmlm0R01y60I4fgxjxM65h1aaFhTM8ZtKS1IFHkzNzA6QHpNvVk4LlauERQGszvynBMRmyF2LMwfbZV2aB4ADUNSktImspKLTBJ5rg7gQajzMctgvxnkCqVuASOGhNcw+RIznvB+HmF0OjyV8NVPM5f0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769357634; c=relaxed/simple;
	bh=JlB2CBc2eOupteanyZfbsnGHiAGPf+fgQIqU1nB7jZc=;
	h=To:Subject:From:Message-Id:Date; b=mMpahKc5pyE9as69qaWl824w0J6sr41JDhKEEZ029SKKZ5UIcm/8zG6n4CekeDFsFKTscHYJqT8fMYO19J6LvWK3YLVadeKSMVv8BZHfNXLwXRrQFAzh8D9uPFjv7bfl2WkRc4snK72X3sZjw7h0xRn5iKPeKMd3YQd73fcr+oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SObPMWYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SObPMWYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769357633;
	bh=JlB2CBc2eOupteanyZfbsnGHiAGPf+fgQIqU1nB7jZc=;
	h=To:Subject:From:Date:From;
	b=SObPMWYT46Kvmllj4MK+Lcon4Y/McykYxsMCD/63CChh27KK9IQ2zF5tjza3ztXNK
	 IGL+keCYHFz6R/xFln4oIoLGfmeMSIu93T2HdiTw91GwkCElA4hEEIrgK5lvEEufBH
	 8UcTF4TXAEl9NemHfUkz/ocLyFVA6vhw8B+DVtcBCcWF2bqQBp4WVDw9/lgJHcbnZQ
	 vRYjA5O9mLM7b4308G3wq1pJ8cOOYydecIAVu532gjfeCOkeLeSJHjpsVcwOPND7mB
	 0pfCter6R4oAiUVKPFH8G0onqOwzxEow3k+Eva/RB7PjhHuHvhtQ57xhUQf4xYq13f
	 MgmfQrjRLClIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94951E63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935763357.24457.3578271421745047450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7202416454766f92154685ee201da46f2cf0043db2400ac6f9b4a0725bd5fe3f
Date: Sun, 25 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769357633
