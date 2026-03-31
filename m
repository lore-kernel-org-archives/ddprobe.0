Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0393644BC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774977894; cv=none; b=UnK0abQVRrFKaJKyaocuqNwpleRjcupPBH3dWUv3SZpw3aY51cpR4o9WHsKVqVS2IgIgYtt7GKnKC8QK4NWhHgUA5yyW4r5ILoMOU8IYkMB3xOC7rBxxTbop7vdwXVJftb1W8BsSUeSpUFKzQOdOjVtu+l8aGZ8vV3Gpiv+CLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774977894; c=relaxed/simple;
	bh=jW70iSMaWhjO47sch+MA9pXtz3NTgxtIclNUzPV0Mk4=;
	h=To:Subject:From:Message-Id:Date; b=QQHnKwLN0Ou41rqcgtuFHdbbqHhJu0Y7uRhUZ81SwXneyOru4sWmXzzUcVmG5uTfgW5ZoG6LEH2ymv9yPrIkJCWVUi3m2AA/jCntcwsiyLWYecKm28Ro022XZOshWotbCaH/68aQ3NH4IWowrDWiPj2Y06AGMd5xQcYOc79FK1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t74s4w3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t74s4w3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F3C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774977893;
	bh=jW70iSMaWhjO47sch+MA9pXtz3NTgxtIclNUzPV0Mk4=;
	h=To:Subject:From:Date:From;
	b=t74s4w3F5JbJVjdH6MIj7HnaV7IuNx7P7OSlgRfWxzkMdeuBjbP+nLjw68lHZTnWA
	 0tYlVeIzuFMr2u+wE7a1ta/2byzMKqzG6sxz6MtGaLE06rxD6Cw66Kca2sJLH7wsnv
	 gHj9FcqZgcys35vBxTlkRNt16pukuj2rtvaRh6b4m0Jg7+gfeF2jq9rrvKZdFIkkWv
	 zlLfvPJauN8D8ylvivylebxp4Hb3huNFslYSIEYDNEYaY9BTlgPNSxicrmvKvW7oKF
	 Bax08iP9RXtN3ieTh0EPwFlhjXDr8R1d7XzkYkuOXhHNymmvPkRMGFpz5umJm79Nd8
	 RQuU3WSTdJUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927AF10F92E6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497789359.26598.5107099730662724384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1f429067772ee9d8227c1d16c2c5f06413edcb265eb6351469e723813492ec
Date: Tue, 31 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774977893
