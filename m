Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331631DFFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785794434; cv=none; b=I7fzRV8l2pLb4YaKxwnDLhPlYjIzwm99HJi7tuwHgDVdWZ/H8v3mJvwhUWI5/0jTcRW6gqSiwMYv3s9LR8psS844uFuhq6pTvXUqZkgZiHciYeKYwYgD6IZWUOp9cp5/5h7jX/DaKkxmrHgpvlTNhf+FzxNsh0M1giuMMoKeS1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785794434; c=relaxed/simple;
	bh=K+RML7L0K1nq+hEMUrsWvubNuky0/Ei63kKT+3p+E/M=;
	h=To:Subject:From:Message-Id:Date; b=f0x81oLsmXxuS0VPIdUjzEyvh2Z5Y1LZM5/AHq+CGgII7g/fku21liFfDsU+gFaxoATqcaamIOlMbYsTQDjXMpeuji5QFOqZxj9a8eJswcQ935rwF+kNeY/oJNRuoocdzshdGUmYSPjrFHn6bFwV2nr2HWpQvnOP7pVDvflSOI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slKBKyf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slKBKyf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA52C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785794433;
	bh=K+RML7L0K1nq+hEMUrsWvubNuky0/Ei63kKT+3p+E/M=;
	h=To:Subject:From:Date:From;
	b=slKBKyf5XsmtjshT040zHTdYi2OI/P9DU1ao6w7ZQRpdjGb1ZXRpgva5rHdxiw21V
	 SBTmrXG2UYeTmFsIUBbf2mj92DQwVIw0wUX75CkqtYgQjKBK25BJDMsPefiXOwflr1
	 QelXYaM6F66ETUfyaRQ7SKyVH/STNWuOjOJRPjz3aa7oK81JWQNuJg++EojecUl+pa
	 UAj9D3/+Zkl9hkcT9U/Rg9HpAqlN/OP6CMiZ1NV68JyZuvdlpMDoqo5FAh4jCpwrpb
	 uw9hV2PZbvE7MvdL15XftP+uJTvG6fG2hoG23hvMJBUeMXPx/MflSTlp49AtK+llKX
	 6sIl2eeJb1/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF78C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579443369.31061.8994034778004002783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a80f282357ce559908ff9d8a3f7473f70209b453a3b86c08169e6590b6b988
Date: Mon, 03 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785794433
