Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C70618859B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787995834; cv=none; b=ElMYdswotIVZkTyMVQ4pKylJxDaeJzsczBUX27Xx3kjShbGL+WBVvYQUfGJ0ftUoDi+LlAJi1EEt3OklVKx9sidyohbnsVNA7Hs5w2svstVDYvUaz4kcSQ6NbxI3o8pTJl2IbHk0xjmOv41k7d+W43WDCvVHqsynG40sVHN6uK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787995834; c=relaxed/simple;
	bh=00GzLMq1C5m6WU6zyLRrD16f5MkVjpSkabWTZOw9/9U=;
	h=To:Subject:From:Message-Id:Date; b=JAjeoVaCXvsXwyql23BMiL1e9qICe+zJkwcPFzZhelS8Rxt3x1UGPS0gkNYcEOJxYtuzKud7lrMhT/FHC3xqi8vhXltakor5mVlA3f+BmOWlx0xF9+wQtbDD3TCr1uGRKc9KCfysmMfx7P0L7wA8PUCkEI9mgu17fG+bAkcZe84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1sATJ+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1sATJ+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D337DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787995833;
	bh=00GzLMq1C5m6WU6zyLRrD16f5MkVjpSkabWTZOw9/9U=;
	h=To:Subject:From:Date:From;
	b=h1sATJ+Ev3YP3b97Zw2F3ME1ztc9+9KdLlFBIePSZ/OlSE6jGfzb/0tyawOxyzkI3
	 YBUZz5C/Pe2tmI++BAZcFNVI0uHoSq7N8F15KNXClvg96JSCqtWAY/D68n/VeF0qRM
	 xtFyOqxB+OPgDfIRnO/z1rnvmy40y136uqqIOytCNxyOlMG+Ue7OmzYWv41PUzWUI/
	 q+0iRAxKD5K/gDe5914HYWeVOb4Bc17TzdhOZus9xKHsejLG+MV/LSGVheCTzNxKSF
	 OF5AJ2WJHA0QbgOICeMtptHHKL0qGVKWIBFFURxBKpKO8DF43T58GchfbYPzcR5Lg3
	 p8ef+mfll3Gfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE196C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799583368.8222.17812592618713330969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33517075110d1d04f7889009264653cdc36f0590916a46cd291020d128d9a109
Date: Sat, 29 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787995833
