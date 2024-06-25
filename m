Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EC158A23
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719334403; cv=none; b=ss1oIZjyEffWCFB19a9lsOwER4q6ufCFMC4BywGhbNC1RaHFC7MS2Wwptn4pzZ3S25DxijpwNjmPcHP48vPE3sEYjGqXh9LLnOEDAt3stokbZfb3yJ+T8GT9obWkZsVhYqlht2RIlNspxMnzosxQrplyi+ABNMG9RntcMAWLaqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719334403; c=relaxed/simple;
	bh=Go8drqC0ch+Lm+VvtNL9PZr1LCsWD7R8KqO8WgN7oZQ=;
	h=To:Subject:From:Message-Id:Date; b=kQVmcVMAAyTaEXUqnotOHaNHRgsKddFoPvfwBIjhsdu0Anxb7DLB1w8dOd1U5tSn+tuPd84Px3COCDuvBkSl1oT0M9pOuIx/ZmIMa3Vm1Zb5rxVdJl33W9pY9yGh3S7zz6WQeyb5QIjuM+5jxwKEV7CukuqcUSeZpbIMibwDTdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eewn3/HS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eewn3/HS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6421C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719334402;
	bh=Go8drqC0ch+Lm+VvtNL9PZr1LCsWD7R8KqO8WgN7oZQ=;
	h=To:Subject:From:Date:From;
	b=Eewn3/HSME57XKbXzzYqfStQpdgR7KRLkZZeCsrQhsogJMm0gcx1vfmQIcuuO2u87
	 cMvRNqMptL8IUAleHfQlDrdgsPFvyCSu4WBJ6Yeyvj4Qeh/fizkFS9sny9AVVF6BWe
	 6KO4pYn3Ds+gJK0teRsE7XBJuzA8wKwzZ0sa6u1OQhFrb75hLwWQpoHT2ArvoCcZao
	 29D35LAUWiB+XPAIufuetI2nD1RSUikPaa4Uqaas0yQTO25ef3E8pmnT9vctaDpLRT
	 1lTBRSNXloVwN+6OkNqKxOprIyLTQB9WEkwCl0aidJYdpJb8yVTd5sCQgZQ/ByEAiW
	 efmeu3Y2XsSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4DEC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933440277.1392.8665970840962955385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06dea6023893d9b0a0606ff3ecc8c4ab17dc528ed2c3e27291de87a38f0f9d4
Date: Tue, 25 Jun 2024 16:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719334402
