Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177BB258CC1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755530995; cv=none; b=uw1f5bj04yFZLtaQcVpoHfpoAhl4gdaltX4Yon8EV0lY6HTXMZosrPBQog/BVqbt7G9/brLYEB6P8YUfliXKvw9D+XkY+HdMBvkSILyGN9tJT8dVtmYkQAcjFVNUAgt7UqMj35fN6qmqfiI0IqXLACeEV9VNzPQfsqf27wDytTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755530995; c=relaxed/simple;
	bh=h1iMegzwIObRSJLVSJ2vC4lfHr1ReFIAcS/20T1bgno=;
	h=To:Subject:From:Message-Id:Date; b=X9F63+uFufhQqXVMivMKyZr/iH1XTBfI66MO8LPjUG97DfYkJzYb8prpbw1Vek6jlQaEuZSCCLN6a/xLTDlQlIUaYlC4p+n8uxuLAK6c6kw3T/yYwH5KSpr3REj8RWEo+fBGKPfwPs5MsXJ4Sv68IOVqbEhVn5zgGlptEhjTeOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgLENPF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgLENPF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755530994;
	bh=h1iMegzwIObRSJLVSJ2vC4lfHr1ReFIAcS/20T1bgno=;
	h=To:Subject:From:Date:From;
	b=PgLENPF1yd6pYSY15NV2Pz8MuXMcNebLaVjtRSlydP+rCI8Mqg/wC6duawUUDWZdh
	 b0orlYSI0f37cSi9EttrYhl5J+vWsL7jq6eReH2iG8Q/7L/6jG13YpzFGOXUCbbfdA
	 R9RhWW9hrmLgLc0+xwHqI31TBjIlI9hkwXeS00/no7pCUymB+XpmuGzu6cDOFqQ41I
	 /iqgYiujvUSnsntWNT7/p8FCso0VNc3ZeuWYgFtCmMTtWsgtBxRYQUUwBwj0iK/fsO
	 Ys7t1s8tQuoJmIihTxVv4ejEijilGBRbm8g3sOYJ3EWY7MKkOCtgXoFzhXU8kqj3TD
	 Qe73sD/OGUkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90748CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553099358.17788.8777732945746993963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2428093aabc9ed699b027c5e46f39924bd7b72a62dbffa69ea5dae351a6787cf
Date: Mon, 18 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755530993
