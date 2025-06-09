Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235571E521B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749508194; cv=none; b=grKrSQxUksflTQ42m7/Cp+vNtbBd8UX9Z5ehXzJyLTWBZ0VgVnDO7Oxz1MQpprPlD+WRvZAJlPtp8M99buiC1raOU4bpAr4pSylXAPPXF7BieqtHMcOkH3cbocoPriXhAcri9QKODKofSpvBG6SUv5J0fajshmK2/7NtzedqYG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749508194; c=relaxed/simple;
	bh=f71AbbZRWx78MaZwRxHU8OnDwfmkNkVT8ISv9Z72F38=;
	h=To:Subject:From:Message-Id:Date; b=vEzLAKX82YL5EdgDxpbv4wqaUsLGyHZpEA3olsN9gOqFvW7GFndH6pjlYNJWA1EYhaG3+GCN/QKhXTrtwc3tXbOlGU5bABV8R7r/QK36JZCLGLX1W6fxakW0NFSRBaV9MRURS9vw0DDE57hqKXUiDwzE2NENq7rSnSrbHE/wSgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeKoMY65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeKoMY65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6841C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749508193;
	bh=f71AbbZRWx78MaZwRxHU8OnDwfmkNkVT8ISv9Z72F38=;
	h=To:Subject:From:Date:From;
	b=WeKoMY65vbgHmjX37QtS5ObbfTgK0B+AubcVoFdKO8nsOWWWnMqzc+DacjpZg4/TI
	 bqRVY0cg5oYSL7Wcq0GCHBbCxOojsxhNeBRqlEW/yMjDqUvPaoPhuquZM+LdBVpdeR
	 iOLRpy3v0bSlNKOfMxUM6Ql44inpGV+FDxQmkpL622NJqlIURfHwsetEWMHwl161VO
	 TFLeczTlUaEGnpvdDnIX0UVSQVWRzfeCinJxY3Pnp+/0+K3TDa9Yw38q+UBdhCmWGY
	 KCW+EKpA01mQl59xP7eVprgcGdJp6nqdj24UeHMWWra229jt9zhvwocrPnFHz/VFwz
	 t4rmcSdQwRqJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91452C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950819357.28184.17771936373709917714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736feb5afee5ac3afa68f04caed16e0d5913579f621b48ab8fd42c481c6f73c4
Date: Mon, 09 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749508193
