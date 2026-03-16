Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3609335AC1A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773694494; cv=none; b=Daq0Nxk0OnV4hy6U+GykFSLXyjSrzpaqslgDLa5PkyWZamkF9DbSuk017RcoSW8UMkru5xOKjFJDjFDieMlROskW0NHpHcv7DuyV8jdT02kvDPvMAG4z2BKkwVqqSRoPNmWs2ZgIHrlMdKQV6eAK7W50iJ4KTKwSOxTpHLAQszg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773694494; c=relaxed/simple;
	bh=V5w8ngmXoZ/GZw9fa4GKqyVCef4QD+p6ilfgskGhW/o=;
	h=To:Subject:From:Message-Id:Date; b=jCogobkFVCi/gFDK9wji7NPkoubFixBfTDllI7vFXkY+eQnIWIbjOL4c2UVs0TPe0o1qhW5xgHTlGwb1ba7deFpcJaGPUZiMutwX+ZoZCdnUjWttCDbBWt9rqS4JsuEOvzIIY09vZXAxOSeNzjjOhrA10rP3nsg8v97z2+5CjcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhQDr6qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhQDr6qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF7C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773694493;
	bh=V5w8ngmXoZ/GZw9fa4GKqyVCef4QD+p6ilfgskGhW/o=;
	h=To:Subject:From:Date:From;
	b=mhQDr6qgERnMYSDPfDDeh0B1cSL5qhY/Y4mAQBveoIcKU4j/k2SBDISJfxJWH1XGt
	 Qd9BKKqxuJLi8nBzwtng317Mou8zHoD14+SgttN8aVB72XC1LhIkt9EVFY/5HwGTPO
	 +k9xnXNibyDyVnXpLnsJKxlnRTh7g8T8aPA9pmZkdxWpCWu5wFNwRkmY0YrBvlzK+k
	 ePS8RcfnjdsMRN8xqwjAimLVvmv1xonRi1BV56pzZfc2W86O29aTL1ZqUS+D2oKxRg
	 JJnDT5v67LaUxnuGC57CzglL/SpIO3L3GNuVaug31IztlfHZhMY4nviLN/wzKab0Uh
	 znVlc39zikFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDAF53D96
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369449357.28471.15931507085333206997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3014ee599174692ea13b4780b95d3c26762e0f61888531124115555978dde166
Date: Mon, 16 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773694493
