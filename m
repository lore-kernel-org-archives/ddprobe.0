Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D01E64D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737173755; cv=none; b=sWf42cdxfLXkMuLhVM3LiXB72eR5431C3G78irPlQfOXJ8bDURaBjT8asMHe76ZTwmpqPCXEZ5PUGU4CJc6vUOS7qRSyVwV2IXYvHc9/6MbqMqoQ/batuX81COWfEWis4do5Wl/5cTrGT91eaUfD/5cyMDcOOEXej00JPIoyZC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737173755; c=relaxed/simple;
	bh=92JC4sN/W905O+pqT1rjgo/H8z6rOwTkQKPjZQfJ2Bg=;
	h=To:Subject:From:Message-Id:Date; b=GUvJnDJoWzY0JyjSMFl1penqwCPJ4JZm3O+nobtCNDV5o6eqcdwhTgQWFKGqJavwG2WUWeHjZMm3vwYwMbVQoJvs/SmtrMr/7FzyCJZg2jcNQqpeelfwMo1t8ywMnK53BcVnrDXn9ldAqGD81ODbjsKvIq/qUyGQdkuxAD8rPFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwOuxn+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwOuxn+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFFFC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737173753;
	bh=92JC4sN/W905O+pqT1rjgo/H8z6rOwTkQKPjZQfJ2Bg=;
	h=To:Subject:From:Date:From;
	b=dwOuxn+Wnt6gp8+sMmilbz3sNILAhHOlHbg2IF6wJularrhSji3ga9YFfDgvcFvhQ
	 hNB6OqFmWCpwJEQs1KkHHL+D9wfPYuLjnTjs7zYuDQ1diFk/Sq1yVpKrlHIpdiTOVj
	 0nOLahpvtR8/l6+DQVu9HA1UwA3xpvJESEQgXU10cg8XN/+vbp5d3J0lvI1f+NOSSP
	 GD8N05gUL+YAK5S8HrAkskS6eV1uAUvKSGFHm25pgvghixf6Z/ViLCZfkThx0ojr1r
	 oWGeZChYhprGOOknCR7vCi7QSryLjbVVE7iv4Cmn1dxLw6R9iKp7ir9gIyrYPme/hI
	 mQJPyUR63AIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D4C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717375358.11694.15152615179387045097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75b09299f7b095effe3fa52afe64f793a07d8ae163cbfa155bb9a45aa44ed4a
Date: Sat, 18 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737173753
