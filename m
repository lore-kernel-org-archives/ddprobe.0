Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346033002C6
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763499115; cv=none; b=MafM7B6O4dU46vYPXjhNV08bqNe1pLlZzYcx2BZ5p/9YW+colqRpiXh7Xr6jqBScTswldkHP2eJOPNCVhqIskAFOIC6b9qFVnSJkfaonlXmNtmWFjs2maOjZy+M5Kbg4TTL9DW+pHid5RLJzQgxawNxjjun30kzpbBMFE3bgTKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763499115; c=relaxed/simple;
	bh=M/fPHLcHBF0bPPZ1j/dbHxPrBztxQmYYyN7guYlkImM=;
	h=To:Subject:From:Message-Id:Date; b=Q0TvfHiUMkQhGqq3KCF/TJOj6ZP0JGy1PmqJNQFPmyo7HxYtvBkfhGv/GoS/Un3PKqBw2F/i1RdQUYuykZibf0FkqKhgtawEa3Zo4ymMApMXlW77p/TdlS3lUNJpP3QEpOjiU7FOxwfXa7F6kzYpzv8MWGsPcvr4TQ50Xeuj438=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZL3pUMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZL3pUMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50FDC19422
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763499113;
	bh=M/fPHLcHBF0bPPZ1j/dbHxPrBztxQmYYyN7guYlkImM=;
	h=To:Subject:From:Date:From;
	b=LZL3pUMpvKp6hU2S9gz4npdsx9baWzKCJoul49PTRvjYijemprVsz/OhxNaV53coY
	 Jxuonx3ihpxJXcz/zWYHK1hCpNW8A2LnLXaBQHTYnQlzV9HJY4HN/3am8RQdy4cTkk
	 vqn3NOBf58TkJJfmLHW1Auo+l4tJi7gYPDMGB9EwgEUMR2ZbIzVPYPG3YfSBSSEEGJ
	 va7jNYD+3qit7KwC2gzu9GAWwDqK/sguQeKdxBit4FtqeY3oA6AQfTAnxD4WL8diIR
	 7ynzWbRAWzDWsANQAO6FvV6CLYLqXIZZXbAWLrGyDaj/fzpxJSDCqxZZ32d8jcMD+f
	 68UlhPUIZODpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91286CEE358
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349911358.3283.14826687155425343859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21881a818547a26cbc38c819c0c75b181017dbc24aa57350f52e378dbb9f0b01
Date: Tue, 18 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763499113
