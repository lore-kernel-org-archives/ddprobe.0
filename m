Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4537E111
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733046954; cv=none; b=Fo8yEh0J39KjEfDuat8xJMGdH3vPYMb7uFeIVVNb7FAJhNqURLunes9PJKWpNaj9SSud+DHLXoz6rjugLVwxn3rQaiecyKBkymOJ/ShSCWoStGxPKfMa3IYBZhoPRs9wsE3S4cvVOvIivlYGvAh5BVvhnoG50//UpAmqvJG6WpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733046954; c=relaxed/simple;
	bh=0osUZG+jD6qwwf8bf8j4KNM9hBFO5jvhTlCt8plflg0=;
	h=To:Subject:From:Message-Id:Date; b=EFaL0MwF6yRTX5Zxz9kl/jKTLoAX9s8rNgsxzj3gEkIbrNidmId+1Wzyg/ydMqSOFO1gJ1s8EcfeCNU6Y/AWG/ps77vnWlyUR6l+5RMTsxQPLSiIu5siQIOJ9AdlojKbnjBX/lYQEJyjsth6jJZsCKnvQcW+8awu9yZnYj4WsAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9nTbMrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9nTbMrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CABC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733046953;
	bh=0osUZG+jD6qwwf8bf8j4KNM9hBFO5jvhTlCt8plflg0=;
	h=To:Subject:From:Date:From;
	b=T9nTbMrBDFMujpNA0bAhLvfTGzTuDZ2rMDE5Fk+pJUszsCPI64qencnQxkm8nsjjL
	 I+nGcpSMer1yNHT3LyKt2wEry94rtvIUnFtn7g0ycLxfLRUetaT7hVeKtHDfsV5YbA
	 w+4PhLY70TExW1/gVxBPyKYMsETnTwoXMhKDTmdiAUx1biEG81FXLshI0gVVP2Wx9a
	 lo5kq/Habzw2ewQLwgmLPqzjr9QSEax1nMAW+TOojPp9i5wuCWJo4hfgzjp9IfJY3X
	 iBM8tsaP/+Ds/3kXB3+gq6Ac5zdAPKlzhIDtinD07OrAgEddPV2yH38XKjEULt+/Pp
	 HBlIFzXzoGYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0CFE66897
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304695359.25238.7888077721601373971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c381f843f2a276ab6be745f646cf0b0e62b07a072f132ae3baf83503a11e57e6
Date: Sun, 01 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733046953
