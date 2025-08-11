Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8721F9A89
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754926194; cv=none; b=CtXGHC6OU2ni8wfbQBkTRBtBIgEJGTw91YDZadiU/l7GDpah/4dHp0aTQlwMHDpK6DFZtnZP8ZLsrUNrdfQtumleVEM3mYnmFrbTkS7YTt3lDkegqikkGmHn4zA+SexL8hQwXJAlBvazuSwDgqi5KzxxGhO4UOwHgiFF3grhkEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754926194; c=relaxed/simple;
	bh=+baNPEMBb63kNxYKtRgwYosPyCFdkos7dHeMFSki2SQ=;
	h=To:Subject:From:Message-Id:Date; b=iULwRkTMao1VNK9gLo0TB9L29i2AIO86qpAkWec/08+Sza86JZaHUsK9qDINgLVG8+cHG6i2MR4gcHAbcKt6izWOyz1SZX5SdTmHmDt3eirq4CkJdAvwKR8nkmVmFIhTryNh3huyF7xA/FYwX8tNNc1rAa6uN4Ot9zv4WvnQLtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+A8w8qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+A8w8qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3973C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754926193;
	bh=+baNPEMBb63kNxYKtRgwYosPyCFdkos7dHeMFSki2SQ=;
	h=To:Subject:From:Date:From;
	b=u+A8w8qgQj+RzWo0MisVVNh2nWtCqHChuyIZ5oqvqDa3Jjh+33GW3alJthSCSR9p7
	 oMGdy8AxrZzqcbzTxjiFVwKvs+cjXbF9NoUbRZL1G2BRq1vBVWUi2rn0W7+aFA2XZl
	 zYhRO52iqA15NMpYEDXqVRVoi179F7OmKKxX7nEPC7r89FPGRJssE8De8Ggl7Xmv1Z
	 KHK/zPBaIU8F79IdoS1Obr7zjn7DK116qHnQ5syw2qenLy4eOJrCYjDBUHGqkQpM+g
	 Wg+4MyecW1LvlkKh+mNQg4XPcDYOJV8+K2SfD0g487pCNeHq0PmRptYWqbf3k/4C17
	 odPGFCsz6hl6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA3CA0ECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492619358.11663.4567737633497871428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6a77c8a32f7d64a68e574087657037e2cfead1e5714049d623bb41de7eafc9
Date: Mon, 11 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754926193
