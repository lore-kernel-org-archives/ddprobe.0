Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C542620DE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761654594; cv=none; b=oXtwublaGAAvwdAEMveVSzFk3w/xLgo/gQlR+zschhw5r6lTewMF8Bew15/JKqN12VFuONN2hPgS2a01EaJNacghESzSLO5w26PqTVnV0tQvo1Z4NoGyKcxbnWfkunvvV/CmhleUbRSc8MIVF3m7V8uAf1jiw/RJOmMvZW1x1T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761654594; c=relaxed/simple;
	bh=LZBmqQgrHnZhCNhqC0BQpan4reDgl3RFVzRW83JqOjY=;
	h=To:Subject:From:Message-Id:Date; b=NbXvxhJniHNP8OgMkKj08lFW6EXlixftO4tmqValdJD1wIirECkHsDPOdi1DJ6r7wGkWG5ygicmGb/pnnOUPBfDRC/rkFvfLWDf/ziAO90J0M45zoDIxJifEBVpLbuqIjVhWy6sbUgpuFWeJeyayTLOLJ5fKTh/U5IXhdGRf1DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRs3zFwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRs3zFwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761654593;
	bh=LZBmqQgrHnZhCNhqC0BQpan4reDgl3RFVzRW83JqOjY=;
	h=To:Subject:From:Date:From;
	b=rRs3zFwVjDmzHh1XIpXzM/g3vi25InP03kPbBBn3LLCfauTe5bl05Tc8Ii00ChnNx
	 +khsApBqwysQeyprFdy60hOxa2qy9nI5Vy1nxFxpsr+jmBsXu5DQ7qPe49fHp4AnZu
	 X8kErcdpDvrt67K0g2CP1tNlLAKKXOUwf8vWkw+rLT7aUBjeBHTUxfO45nfkGj1gi4
	 qKtfItNSO2bYdZq4aAFaaVARMNK7zxezd9MxBTcDkeP/fQj9VJ4ONZRjdJu49/lxvl
	 oCVi9iOqzhjbzgRHFbQ3Q2gcmvdpUIgE6pbqFyAPkalH1q0+pqVRdBBUp5CCF1cBVI
	 MgyXFHBliH1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91849CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165459358.9325.13329398602450110283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867bc04ce74a82cf3eeb12af15046f9afb8d78db9bfb23f6ca4b9aabbbbb1280
Date: Tue, 28 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761654593
