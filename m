Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402091D432D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782611914; cv=none; b=S50bPktbG3kd6qnJjf75h61cq9nmXvvyoHxnJJknfAiXmfN4HnWCct5ECaSDuLmtTH+TSgKVVt/Mimd4RFdrCc4d6Xz3WIfPTyoRIx+jQZGr1YbmUATCNLpmmKyLs/aBHMWTqPn/47LAnE+2dce2crrcpOOcVp6LXPdNunVaXfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782611914; c=relaxed/simple;
	bh=ij8koa0eqgvhd5ALJrtomSpSQrlN/bFk8mCSaoQtm1Y=;
	h=To:Subject:From:Message-Id:Date; b=uClsN2A+zL4PSQ8TpQSf5fxTpOZNdXiJoXF+wDkC31Ndzmr5iHP3icI6cJKQOC1JsgvNwDGXeAQliTRcpAM74pGzxkwofR20kdoBkgLoAyIgYkKJyMsdp2wxSlS40EFxBj5i+1AHpOcANle7tnwdyxG3KtdGPfGPl4+CklKXjqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngg7TYik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngg7TYik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC02AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782611913;
	bh=ij8koa0eqgvhd5ALJrtomSpSQrlN/bFk8mCSaoQtm1Y=;
	h=To:Subject:From:Date:From;
	b=ngg7TYikjYikkOZZga7No0GJff3xOjZ/XsQqV6rIWE1vx6VIVRW/tkrRiwxh9Obkf
	 W7Arg0IvreXug/psG9KBih43BucWQS0Qx4eh9koZoU29hQCrc+JCusqShQHzEOvmG2
	 i9SceTOL+Xit37M1ZGKcRr2DkmjMcM8ESyzf06Xqcs8QMgILfkrZdCh5p8JLn9oMQC
	 6QBD9SwzmpVIfeyWlBS2nOzcClR85WVuTyysBWxhL9Lzm/hOmfIst3MAffAUGWcVLx
	 Q+sjQp2J3LZR3YVpTTw7znfMfcsp2NtR5x7RFQNe8ES6GmCoArA/ruZNzRph2/6xVE
	 YlCV/qeeNDdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FDC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261191369.16878.13280785745993549306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c2b9520b70ef8881a0a5601e9d6544ff85bed8bc32758b9a4155cabbd2f3bc
Date: Sun, 28 Jun 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782611913
