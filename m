Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4212D292B4B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780244074; cv=none; b=W68ucl7H81zMc7JmL86mDinML+crsaj+AzGSgh13Qf7zSTK6zJOb4UPtIEH6ekGxc2SS8PfZIfTt2jjccm+KDWj1KckfWMiEcxIOqpj2i9D2sUmcxS5IEZOGwjEiR/LFRk/2hm3BXMJzc/RxNvLueVt6304+4kG53jHzAW/dTrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780244074; c=relaxed/simple;
	bh=u/p/YkIZnKKBYmLKM4g+ZJwTh6pNSsS/4Bl1S0zTxbE=;
	h=To:Subject:From:Message-Id:Date; b=oYNIM5GTZfbxWPK081ZUje2opYPmqkfMPbiXW5PJod6aLotwXuM79ee+4f/ytGekE/AXMAiOQC4iktuHw0RGE0FvXLYnAqQbhK9n1RrvzBmKaeexF0mh4l8B+s4KyInCDwnZaTp7WJO9LNe+aayQtpIYIOjR5xQ04txW7JlyzjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G//T0w/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G//T0w/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73F2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780244073;
	bh=u/p/YkIZnKKBYmLKM4g+ZJwTh6pNSsS/4Bl1S0zTxbE=;
	h=To:Subject:From:Date:From;
	b=G//T0w/7N1hXrXcow5O0oTYn08FynI6RC2ZPw8llwvn9V28w+N3+xRH8r/zTbANft
	 u8HuOU55hQpcshjMTYM/IOwZbXfg+X2i8TgvVrigmYn/lhrIULW9xwb//zCxZykAPy
	 gJG3KJDCpTkaEE1mG6pUlnlr7BPxYHGMUjQtcINBmY9CRUQE0CnsgpGOudK6A0p+Ql
	 ddXfr3Y44u0QBuh6pApwlXD18kraLL1882oJuor+OiyMev/b2js7Gb2kuKMnpIlFOF
	 0IjFGb2Jtdq1C3j5slni9FZ9YcXaJOkq/kZyxR3DIVp9XHUxP/49gaNYRBn37E2ktC
	 rFnH1rA9k/fVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E63CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024407369.27163.14121755014580390096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6f6531c7c2c784616c816bc002e3ccb2e4f410185a3511edb4e68b6107fa0a
Date: Sun, 31 May 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780244073
