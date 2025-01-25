Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B68A94A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737818154; cv=none; b=iStnLrsZCcQ1e4+Ynt5xzcNB/uMZftAqiu0DDHitBUIdV8QebTe+aydmIZyzhqBf3aybAE2uVTrqTRSy5SNtcLPqpfsN8sqeX/TvBD8D+9FDMU9DExLcoRyAUieyXw+sZwMZViA9Ew95m6gmNbueBV61b35mpRHfvYbXGyszm3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737818154; c=relaxed/simple;
	bh=KwLk4Kwdn8+uznj/g66L2tdF3J1V0gdfTFfcxJKW8EE=;
	h=To:Subject:From:Message-Id:Date; b=abUGiBrEXZK3Mxl4mZwk/IfamYxeGDfhSy3w65QT9oLrlKOHjjvaYxh/ysJc/nQVeEtpR8KUu4XETqiDb/d2YgfgRK4BoL+qqZItS252zOThEjAnGC1OwY8d7agOKdUFSyIf9LLo6sZjoXaTVWO0kJd9O2F+ZkrWCaSlTil6Fqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSgsT3Ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSgsT3Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C5C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737818153;
	bh=KwLk4Kwdn8+uznj/g66L2tdF3J1V0gdfTFfcxJKW8EE=;
	h=To:Subject:From:Date:From;
	b=DSgsT3KuZU8emb88OfUa4WqjZVhVz0DfhQF6F5cD3wnvCU0Af2AHnAFG/X6o4bW4M
	 U5JBtAwlQYJYPmTd/1MxPgnuQQF2ldaCp48MbAEfiX1TPAO3r+YUjz1mXjkk5jxMl2
	 MHzzTYGfloJGyMtJQFMHIwJnoVElfJ92fzozZ/wAQUL+a00YKagWjgD5ubeTGL99Ii
	 l7X7cUSHJAJuxOXeB8RLbwDGY+orN1JyB0f0fA8Yw3hq4eNIimxfGSCb5xWD7g7TnX
	 +yV8mCwFoel29HpWCjd6wzBXu4nkB1R4Sw/DmBKgdrKoJCheZFak1GbMTpJP711hjY
	 aoAWBfUsGrQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E3C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781815359.5542.2453708727521557959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed225c517bf0e595f35cdbc2cc88b23d6e72e5b3a8e0c7db39fd0dda14947cb3
Date: Sat, 25 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737818153
