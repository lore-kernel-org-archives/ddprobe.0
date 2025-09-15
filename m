Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC462D5C7A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757924994; cv=none; b=FnUrUN1+lcLGL2jqvGuTa7U/Bk8+05cFWrgcsPUW+NdcmDEdML9U4YwJx0bMoEpnMW2Mf2K3n+tiJf87D0j3ssZA6fm3+YMeIBAqLQsRQ4Efi5rIDGvy1VDFT0imGiRKzZUBqZGxxtefR+h97f85o4qQtQ0SNUEf1V8FEnaRzw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757924994; c=relaxed/simple;
	bh=JCw6KjRevRatngLJ7OP6av8nN1q9dqO0IHWxZChOYS8=;
	h=To:Subject:From:Message-Id:Date; b=dFHB7TotfJlU7uD7ClA/w1se+QI+riVjiHoBzJdwsU/RG1bWIZmMLANGNNLKO3M9jIcWPGgiTsgg7YV52xg5KBpxydw5lNQkbVhTOmDgBwhS7Oongc5C1QRU99VzEpv+fXAmR+CuwpMFS5KqUmuVFm2LNEB9odVTEK0cO/28pBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOCe6gRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOCe6gRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0BBC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757924993;
	bh=JCw6KjRevRatngLJ7OP6av8nN1q9dqO0IHWxZChOYS8=;
	h=To:Subject:From:Date:From;
	b=NOCe6gRMZIXm5CQMeQrfFT/Uq1L2ciomO32CwpZ1wSnLQtriCPcXopM8t2LyLuaxd
	 zhLK4/ogyBa+4KsJpnXHp0YoZl/QgMxI0c5rhUQ8gLRpeeKwhifDbFdmeEentSEWUL
	 9W+EaVywW2mMNuwQXkZHmO/DhdqHE4nZj1uHD1Uit/aPiq6/vTFI/z7J4H7ThzK0I+
	 nRkERYzfxwbGCWzphcUtkBfUwdZl+OIyJiqoDvV9eKnQZhV8zRWmPn+3Ndbb0VZ/k4
	 CQA+jWOnieIjJEDSswtXc23IL608wriGlh+gFmGnXQ3E/BMRjeSgza4a1a7MZV/sSM
	 SWVbi3nfG310Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F536CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792499357.22146.1974739526616154727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4743345d6b0a5bb80dcbc339496ca2d5cc8bc96e70dcfdf6d9907cead48cf34
Date: Mon, 15 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757924993
