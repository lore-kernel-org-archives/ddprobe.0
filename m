Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503DD2F5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737450954; cv=none; b=Pg4v2lOguQSzfmzfeIj9k8CLajLZbRqcF9upaATcEsthjoIFJZq7SXqciStQu+wCrheajZ/xzduTVZSCwbcaFQ2ARQBxx/9JqGkZ2p/8rilUsnd5S/Dr7hgAWojb1+Kz/10uCy1bCOpZYfAfVcTPRmUo3JPmRkRFzk8a9WsNIrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737450954; c=relaxed/simple;
	bh=14CGD39cg8Ij2A8pe7BC/ZWylBBckkp3d7AjITJbDWY=;
	h=To:Subject:From:Message-Id:Date; b=Hp24V+QTy9QkVskbcz4bIBnCobXzxRWfHnp8FWCHZT9gbU4Jy4JORYLLEtt/AtEdAeQtawXkKsxj3bLguwQaHPJ9NqgXn9DCzdjJNEcmop6W0V+IFs0Aq5BtkyyURVskhWlUhalAm77oN7GK7bHh8zTe+AIOoD6XINoVpYRs8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxxqZnP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxxqZnP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF134C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737450953;
	bh=14CGD39cg8Ij2A8pe7BC/ZWylBBckkp3d7AjITJbDWY=;
	h=To:Subject:From:Date:From;
	b=BxxqZnP/h3JPojRHOOmpw5OX2ZWJ5lzWhevU5p0HZ6YXj4s4GW0a10fju/LmmhGG6
	 M2NDyQDkgfwmET+oLv0Giw7je4ttB9LfhH8q2r0x9jVOJhBAEl0fEPeUzLhNTu51uY
	 LLFkhwjpFzNmAfbs1mFDFmQGfcKlTlOLH7yXgdPLUsNCXnkXHiJdwue/GDlfJQkKkk
	 k/kgtzrblrYQDD4UE75edK/4MMp9W27nrx/wEumoA4NGL5oclPjSLbWdNaxKkqXuRW
	 SiFc088ryLXO2OsX2qx8ile3ee3RINwwfVTUFdNnVTiCoU9PmeA5cJ6d5zyKvdFKn3
	 GiFLgrIrCzVRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A28CC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745095362.12490.979289926942480970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09afd601272441bc42572ae2257fc3cfc164863f194a91992349a55c18cfb4a
Date: Tue, 21 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737450953
