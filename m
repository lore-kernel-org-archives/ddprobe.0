Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C56A2E2EEE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773185694; cv=none; b=R3PxFq6z50c6d8LUHzS82SnpUBAoSuKtCBiuImSoJOUCERr4EDQAeubeUMgHVS32g7QzeJkxsfHjEZ93zjfwacVn9b3Fl82QdH5l6uNUn3SOJ4Pnbs34Q8BDKB80fy2yXGIO51Wcp8fd//GLCz9xM6eTRLleoDcqIF3xNvHc3ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773185694; c=relaxed/simple;
	bh=OgkVjfW0ljfOfNMozYs+D9fMl8GG37OCDXjQTy7U8rc=;
	h=To:Subject:From:Message-Id:Date; b=KSlBDsjcYGCARTv/49QPeKroK3u9FhBqeKGNB6QMCIRCShI2Ge7ne/+He59uOr49bW0bVKuohppDhdbXfXGwpg4JKZqRxkRIQjYHgm7h4nDO2iPwJws6B/u+D4gAhnKU08zal+Z7XLI1TvdkrCTUD5JKnZdHcYhsBVfaJgoCy9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN0IBbQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN0IBbQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD276C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773185693;
	bh=OgkVjfW0ljfOfNMozYs+D9fMl8GG37OCDXjQTy7U8rc=;
	h=To:Subject:From:Date:From;
	b=pN0IBbQP7jHIMGZ9moBQPskistp/TXA/axP1jbluDYEbfqQMbyfkkRWQNjMmoljWV
	 4MX94PW6nKqsq1adY2Z1N8CyWuLgj2CHEI/eI9+gkXPvQx9XwW8jUUAEpxtbWubeLk
	 vjItcIx4o3gw+K0q87rj1TsFUKte3mmcO5lQ9YsGQhUE4iYvyLvwi7Z34hmYxHQOci
	 BK2Luk4l7uIMrOoJjPfC73DkDjYYJjzZvVIp7V+usDA7bhZDz+Lafpq/6Ik/e/yZXO
	 omgdLSNgQxtQuAKp9jGhp2v9cnKTvlWO3jLmKTWJZSxmLdxcHUjduGv8ojHViRAkva
	 HuNturxy3UHPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B04FD88C5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318569359.9963.15473038229575409116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d22548c5b236b80c96c000d6fe1366683d3b824d2f7fb15b8e5ba65126b6a1
Date: Tue, 10 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773185693
