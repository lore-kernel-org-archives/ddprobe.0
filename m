Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC082866
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783851514; cv=none; b=nB3DhfMdnxX7ciUCCAZaRx52ZTbUCKgGjT9Z42/fRMOfenjmVCa2+wh+8KsVdEYe8O1cv7ahfhNkwJITnVi8OTnuawPsavK54RqmiYd67nl/STs2BBBmygGye5prkXvUDaCRgH7e3GJwCjwKjZaKRizapmRi8zcLYRFd2ig4oBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783851514; c=relaxed/simple;
	bh=BRYnD/4aVb+3uoCWnawT9PAGhTwMUC65iZWEK0jhpOg=;
	h=To:Subject:From:Message-Id:Date; b=TMPVLpdfOVnuf2k0MD5RsiVxiH+o3XqZ1EERuiVu9eCHaHOHxxpohAkrehG1v3c3CzzQAMeoZiaEFH080KqvGO78EfpBKD5WU4O/Fun5iBRVaw9aFIdnFUzuMrbkX0w/+UmqI9B8y6B5T146HnYziWkl9Zdo2fBwW3XBcFAM2Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zui3786w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zui3786w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB089C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783851513;
	bh=BRYnD/4aVb+3uoCWnawT9PAGhTwMUC65iZWEK0jhpOg=;
	h=To:Subject:From:Date:From;
	b=Zui3786wGjmeuh9SBZQBjO4zzafxj9qysY4uIWvu/ptBb3udeFqP/10bEM1U/En2H
	 wtYGm1BRmM+qJJU6W+Cp3esti6mC9ICHt+06Huc+hTWcnFhZqbbrGI1A9QTYhUZfab
	 NQqYJ6q0UCFfDQPiJGYjPbVNn4VBOthkCwVp+u5SpN64JeQDJKLy4QN+5T12w/Tg27
	 0Wf0D8j6ANHbgbEC3RAs/WqdhrwZ8GKV5AQEfJQ1tP4fiFmZ8a2l/96zFMpmz6MwmF
	 OuJ3fcuRcimcI9J3cz7N9eQ4POycKK9GLfBz447hgarQQgQeNbBmpQm8IUn6F1g6Y4
	 yx2CqOq6ufg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8360C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385151368.16352.11897427282264679067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acbc4b12a620c5a15a860906fd7477b9bc9b11bdd8ea77ef449e222a25c5fb6
Date: Sun, 12 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783851513
