Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504195B1F8
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716539603; cv=none; b=SSSWYTflZaXMJDt55CKNd4zuHwWX2ZdyQM2mIPfvLzStOYmEtKhFuWsIYnhU1Hqm+8EOhn4rO2PPpim8+vOsZnn6ccenIKJWIH4uU9SEO+yioBGS8C5cTN+6ll6bh9eUevDWjdqYSymnx3V8FpDYrSO0LpZsLfUioLaKilzgQpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716539603; c=relaxed/simple;
	bh=fOZQ7iJsMa3Hn7yCYV8TPe3T5ug2O8wKuQgOmbYJBFw=;
	h=To:Subject:From:Message-Id:Date; b=qKuhCEmNwMgYiFYTsdjIOXPnyltq94wZbjvOYhU4ZQvV/pm+pn28Q1EbmF/65OJezWCKt90bcFtgEL4PAIaaH+XOx03NiLYOGKzvL31dAN0eEs5cexbYNQu3GUn+4mB6iij+/kIC4eSpi9hcdiuabsyD+MJvHQMOMbJecnjHqx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS2jrHu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS2jrHu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E895FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716539602;
	bh=fOZQ7iJsMa3Hn7yCYV8TPe3T5ug2O8wKuQgOmbYJBFw=;
	h=To:Subject:From:Date:From;
	b=CS2jrHu/i0iOWANCkqwL4Hl2AqTlDmw7mYKtMsSAwsvtUoAifEdiCkrgCxkqgdks+
	 NGcl5g2Dvkx3UK+bJzmIWbnD5Vv/tpUQ7T75exUbDsG5JReTR7lQ3YT1yx8/NeyscB
	 de/Gt+ADdo2cd+4nB4Ya4zuuMjLYjLjA/eF+Nug2zJxh25w2QG/sMUg6h1zNAiNgoi
	 FoY2wkClVKHq4y7tgIk8JCKf+2SRJy3eQ1D4J2UFGqJPadawn1OE9CRomeZuxvP91P
	 goaYHu6l/TCuP0b4bFpl92qH2x+yV0OJnQoaUlEZ4384HoyTF/C5zk7Sm3Bd3awiK7
	 MmaTD9TaJ8zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEFB0C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653960283.15027.1793781978763050708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a039a5ef8d237b769cd3e52a77a60f490c276fceb1f6e64418be162201129c9c
Date: Fri, 24 May 2024 08:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716539602
