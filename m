Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9547F440A33
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789548034; cv=none; b=A4djl43HAwt7C8qh+dnUVp3hSyttT2NXW5MN/1aV+C51NHksgy/fYN6VE+OcNLDjQbRVOwhTBq8GkDx8I23efMKi/7LUVJO7W8MKluF3J/Yt86oIhHmOobVgwKct3/bPIysTeWWsL5KZYwpNueaQW8sh3G0aSlopFH4xNuDSyYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789548034; c=relaxed/simple;
	bh=Pa1xrfg4DIg3Fxsq//ipLqFXwuVy+PcGG8MT1N7dR8Q=;
	h=To:Subject:From:Message-Id:Date; b=pVf9wfkadey4suvy3pfqRAYgjY3oJ3hyr7yItExUPG+2pNzhq0ubuAD/r96WFJDVnSJfZ94Zp4Pki5dAk0BZvfZJH4QP6SEpjr1J6Z6Ihq8nCxN9gvjAjjkKhZ7XboZLmsYP+biaZr7AN5NMTzbBzk3fMcA5d7i1gZVKsr+7VpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbVwacBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbVwacBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0BAC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789548033;
	bh=Pa1xrfg4DIg3Fxsq//ipLqFXwuVy+PcGG8MT1N7dR8Q=;
	h=To:Subject:From:Date:From;
	b=KbVwacBonvPaIeXgptXB9NK9yMEiqvOmLJ+DDpjBM712VDOnj4rwO0wODggpIbQo6
	 Pnx5au7Aa4ZAKoMmA3asWkq46jvEDVOHef2jXG0oYn5muXl9qd30ZdmH0T8M5SJwZg
	 OjbAjZkH17qOvIYGHBHgFE2ibQ/vixiieB4JD/t3oSXWTup8EMPSkUllnhGybJHl5T
	 vdJbcCYzZKQt8pPw2/rz5WX+8MRZPQ68gp6CCqiQbSo32xo3RjV23hCe8szIeQuWQ6
	 9hF9ZyLLfRrytdzZNpzfl1vlDVv+5ZV8TtbbeVnyqbGZHRAodueD0Bm9/nMxBx8T6d
	 iuhNh45rWiA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB004C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954803369.15746.5900084686367561839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68900115b8f55822f87c5df451db6d6dc7175104fe84fc932d1aa96066cad5d
Date: Wed, 16 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789548033
