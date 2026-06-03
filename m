Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD6443901C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780481074; cv=none; b=n5wN74xvn+6cBcvmQHyaSVFzE4mHt/O4UyGoKoQQhVKpWByzi1FCAjzeV53hgA37LLKcdO+xfuPaxFiHzG902ctf5p/zpWyPrdMhQpbEfp5FllUc0YreC1Qxbn2zyWLHDhGKXr57dr4SPJvCef7+tMcQassKzNJWOr0b6zWdtcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780481074; c=relaxed/simple;
	bh=fsi88WoK7Ts6Wauz0qSxWmFTh+FwP2lEX5hPXzTNHOM=;
	h=To:Subject:From:Message-Id:Date; b=W4cSqSx050nQaHqGMwdXhe31FJfkeovAY9mUDv6NKCmjJSAdmYBz6sKqQF6RULNGkMxx/U9hFAPn3bWGQecTdVUbiqpbGPL89eT83fZ2GAxLN6FNePZZIbNYlYolpMM9esu6xxPuMDY9jEYNdvhVKwL2iB2p0pLK0cTn5a5Y6XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYlPxUDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYlPxUDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C5DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780481073;
	bh=fsi88WoK7Ts6Wauz0qSxWmFTh+FwP2lEX5hPXzTNHOM=;
	h=To:Subject:From:Date:From;
	b=oYlPxUDbImOyTfkJS45bPKtt5ZuaQ5dS87PzKKlIt5g6YkOnF+Fs6u+78iNKYsLAk
	 xtWMI4zIbkltfi29zMf/6lOHe9TfC0Y8oKuO3MTu4ZwCxgF1cdJbYEAo1uT3EjEBjd
	 IR1XNo5ArkuIdY4jlohpsbBsfFb77QIHU4PosDI3VfDFBUY5NlbSFfzA/PdP1MjdoP
	 57N+Y2mGoCoOUrAaasxhg99Y5pJ5Ccse8/atPc/hVT/ks3VnY6LksVpPr21GLKY3+i
	 G9pqonuG5jitnNSZfNcavHHudi7g0NafoP6lrq60CT+uUpbT/Rr+8htRBA0ZP9tNPU
	 Y2PRFhTmgWgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ACCCD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048107368.21341.12181261197805119357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c90f089184f00a68c8f26020e0d506868b7532f17837f54d7e7cf2fc1e88e22
Date: Wed, 03 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780481073
