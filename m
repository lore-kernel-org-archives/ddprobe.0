Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10B2F0693
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755035394; cv=none; b=rBRTEkspZI0ZC09IPX/UCWgSjYVt4otzjyvqZoe8IWuuhpTmhqmsbdD/QcCF4Zip+LiwlOTQ6RIa6qPR9df6dWFZK6b+DTYtyiDuC+aJnPkv+v7HTSV6qYj2zmpaP5H5uqDAT7l5tGe/knK3Qfck2c/bia9EU6oxP4bBg6a9DVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755035394; c=relaxed/simple;
	bh=WXwrcasVvuk9c4AFusHltuW4mY5zxqwM6w2UZaGtBP4=;
	h=To:Subject:From:Message-Id:Date; b=C045IXhmGMpcA6XVOftryAGW7uMb46ARY2PwuWDYiS6PDKnutcQWvp/uZ+2hXpdzpJtoMKn2O8Szjbcp0yahcZzvt6IkTZXmdurlFLv4BlhPYu2DKidBW3cI+fQqt1VYJGslB3uGDD132GEzITt/LgpAy+dwqpEQ/Q3QEz9LWXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFka31mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFka31mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755035393;
	bh=WXwrcasVvuk9c4AFusHltuW4mY5zxqwM6w2UZaGtBP4=;
	h=To:Subject:From:Date:From;
	b=XFka31mcI4G5eMhHg7gQXGWnsjjjk0IyTvEt5BXfi3wuzOeIhkvEjtGl2xcBvoZAC
	 z9g5RNYKhnfz+a8oill5oVTLOvqxzrewIiCII2x2EvsrwDUUOI41xkJ+P3H5YHqCXh
	 +6JHozUymxLDY0ZDpog4xNFRZhNzVrSq3+KJb6d5AB0v/REqMaiPSNVALcDT+36stV
	 lX8CbWRujZyiL/YhOdjtmGOdxSO5yl4KzfyO69Nb0sQVM1vuUWD+68yRZNKWL4XUFY
	 UQYozCKFyq3bgt8Ux7SaWVNdNaH795UctuMXAORwzIoM5M736CUCaVzI6LujXZRpzi
	 9wT6KKgrQ6IKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA30CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503539357.10888.10755305240981486542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821ed30767135b4b27461a8fb72074b5bb64ab22f0eec6a6b63d416285b4f2a1
Date: Tue, 12 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755035393
