Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C172156677
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754221194; cv=none; b=O2+fdUabnE0Dgx3fJ4YzVs1TLMZ3oG+7HvaIfCkHwI5wrvTkeWBqEoakZxKEnOc2FNWkON0f5GwQmsLS61Y4jqWRre0vt9SqiLCdkIVvGY/+v0O6cApuaMSlC0fyFt0+BDv90PHy6FOEUg2mZRntj7oimiWf4R2y3NQYwO+xFTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754221194; c=relaxed/simple;
	bh=9SLw3XHuoOOAzM28KFdXvT8FzPAoZKWIwZpO7qx/pFs=;
	h=To:Subject:From:Message-Id:Date; b=eQiPQ72+9/r3xz8Os5cECrqgOmeDQbLxqxaT3ebAI0K8f3wT6aJpBBSx91GL3wc9N0+F53nL9gpcR5LTuEhrGXoh4lmRJE8R2/JBF39ScNNerrAaEuhysifXzyAxG/sSKMPeLg5tNY7Iuj0+W00YToLbU0FLZQVZkWhj0Pvt47g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMAH4C2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMAH4C2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DCCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754221193;
	bh=9SLw3XHuoOOAzM28KFdXvT8FzPAoZKWIwZpO7qx/pFs=;
	h=To:Subject:From:Date:From;
	b=PMAH4C2k9hvqvvdH1b9m5wb+xcHGgKD0dCKIqUvncC19kPKf0Ncld5XUn5vNvs9IT
	 g/a2UXe5xUP1+MGRnlHow/+YlIuLOi31TfiB8TeiFOmC+bGtv1wqZrRXPwDJRCXugg
	 hDkLClaDOVqsbcav6wYCIzbrh9TaP+Mc2TdWjD5mQhNMu/m8WhMWLW3XKv0yyrgk5O
	 t2/AingXDxOxPZ0k11yigQ0rJB7c+hwbo/7/R3lhBKOlJzUl1SNctFlc9hd/XtTBHI
	 9H8BuwNvCiR7e9lG6kDtGNtbXFlCwLfeBoaieGEFRpKu42sfe7QdfMq0C4f2rus5bN
	 +jkBAKtpit/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A49C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422119357.21598.18054094411614310855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9035dc64b7eb2b170d195caeee865ad08cb010da75865d9ea67362d6c5c97b7b
Date: Sun, 03 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754221193
