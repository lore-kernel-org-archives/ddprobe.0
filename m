Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331014964F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780014154; cv=none; b=ExQWZ8j3aZX2M1XIURLCBA+Irer70KvQXpEdxVCwHJFBhOkfZwPK8/cuqlZFyn6oDBK3Ok/Smx/qK2cAdTM+pNUVEx5hHmyul806/D76v/vQC0ODi/jv8Cz20nJgOzHpnksO94exZY8R2m+jv3ZKhxbhG+BYkR0s1AP40+8PuUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780014154; c=relaxed/simple;
	bh=Vl2v8MJe1i04WBBSEP0xp1ffvGVwrWSMKf10rztYfik=;
	h=To:Subject:From:Message-Id:Date; b=h3bouteOBzgl36LwLoV51j0rTT89sMllv4q9qt6Wb5vlE/1MxT164tS8i9euF11DGd0WpixZxm/uIVajabG1j4bgiPEpouXNOvbHOhU5MKMl3uazY2ghax6vnjO1K0I+YrcFpntKIhzZUTfl8TjrdAu27SI86n7Lgj3nJdX1KSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8KxrA5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8KxrA5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B6CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780014153;
	bh=Vl2v8MJe1i04WBBSEP0xp1ffvGVwrWSMKf10rztYfik=;
	h=To:Subject:From:Date:From;
	b=p8KxrA5Ggsm3gvProZqLQ6Rpb0rbI3ZDlmlKMlH2gV1VTtKXFJ79Whv9tW8a2yAKs
	 UwkPn220NIM85cvIIWPuluE4AscFYIzLtfot06YXuZMGYtgIdmyczr9bwlCmQGlfis
	 W5tYt3kkFFf2Ib7ufzQuKgbLelPtI2RUD+EoHYH6sfR7hapc5QH1XNiChRu99YF9+V
	 V9IYuTaI+Htk5DzGaN6gZx2Wm/Ph4O9Kbd7u2yt2Bzp7QZGP2q1B7fNl+3F6PXQyz2
	 HPY9fWFuTFp5W+qqrkJuG/WnwIMYYe4cIfpRaZ5yHFLB+mUi65xt4KCEIBmUnuNWsH
	 DVRx3ltRcXfkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7FCD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001415368.25291.11045718842136104385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d553fb5dd2330c498e3dad3491f6ec86e5617bfdf91404c3f98cf073f9c1f2dc
Date: Fri, 29 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780014153
