Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B4A1F2BAB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748252394; cv=none; b=jZdgr/c5dMXtARbrIh9fGpFBQsN7BMxggoHetN9CVpvP2ogiHyuX2rsIGsSzACC4VryyX1d2jlvUbZkPHeq9NsBouDZM5FkIIdpQc02r4JyrfRkHyoQ1rBDoOSX2/SJnnPS2h8Sd9Ry5xFe0V3q2FQaoE12c8m5MSl8a/For35M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748252394; c=relaxed/simple;
	bh=/ncf0FPQr+aUdsd0abmc3PFuOOK1eUmMvM6CjlVmj7A=;
	h=To:Subject:From:Message-Id:Date; b=NKaB+AbNVyzq8tNdqV2RTESg6nONKuruOCNbLKuj1uPUC0P9K8sKjZ8YZeUmjcLLw/rVHLjdz76GL6jnM6/9J8xvOXSftckSYWByZlmCtHK71fIdrNYR76/ta5Mb/UMKkiexzWq0eAyI3MdfBNOuupBbE2P4H6CZauamNxgMjis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOkay6fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOkay6fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748252393;
	bh=/ncf0FPQr+aUdsd0abmc3PFuOOK1eUmMvM6CjlVmj7A=;
	h=To:Subject:From:Date:From;
	b=eOkay6fjRhGmhgsd4AO9/XDRmkP3SNXTA29mvqbyNpWV/2Ul4BsjAAUItZDysmgwV
	 m9yoBUHJQwwD4Rq8dyMOBSPfqzt7y45FiFBoK3danm9dMv4+8RL4zeVqjoMAEyzwJ2
	 Rz6AEYR+emlA2mq45iWQK2LA0iJan/4BlUex18lyKVyjFXT/MWiL4H9EHhVe5aKh9M
	 zgnoS8ZUCdjIerb4hI+wSVlz6GlZv7wig9CKPIzUF48xswRrUt1So1gvUGIYmT4nim
	 7ZqHWLIPJrHEKzBP28bxgTXlU16RWYJ12b3GImXk7EIvPVZYLzKjd0hp8BOFsc+/TH
	 4tk926J2KzZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E0C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825239357.4578.15829893472804056731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bde8d2d9c9184c98f04cf364be41753243fcc657cb9b7985000b73c494dfd0f
Date: Mon, 26 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748252393
