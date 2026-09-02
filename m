Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE32378D70
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788377434; cv=none; b=lZpBe2tRFiB18t5wQyC7CGQQ4PrzaE1b0mGH6pPYVAaTDZcfAmBiPCsM/IikK+tWkJtrAkCqszv+NnBVvmVOga39iRhozCZB+9ZS6hW1LY47nlf4uyLNLFwAO3LlY259skgqH6Eh3btJUHqws2jv0HDVgJMg2sQ9IfllAnPASSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788377434; c=relaxed/simple;
	bh=ywsRYm3+u5NFrZ8MXvl9GO9nHzPK1CgljhLRZC83Vjs=;
	h=To:Subject:From:Message-Id:Date; b=rRDXPEgfhSUCl3AWAaxK8T0i4+XEpmqV5rje5OPaXO2nb1jdUrlEIyO/BIen7DXPqkoqIiwiyUSYdkUEfDYhka7lzllHFePRTgugV8ULmPJn1pVehqEwFil396Hk6Nc4Vbla6pTOkNZq6jwNQDtGfnIFIod7Kj3qRvxm7cCwGSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy7Pft/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy7Pft/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD17C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788377433;
	bh=ywsRYm3+u5NFrZ8MXvl9GO9nHzPK1CgljhLRZC83Vjs=;
	h=To:Subject:From:Date:From;
	b=Xy7Pft/pPBFZJ+AVGzRaSwcWMgY9Y3BcsZuU+AGQlzX1z4gAUSC7uLhUBi6/mt395
	 h4V+sGlXO3KegFYSeEW4fCDxJuPcyOsT0Ws63K4yeKhAG8mU+K9MxVMYrUiKtR+iGm
	 XuiA8jOHBw08hTKAZ3JGPO810z072I6l2CnyN8n7FCnzCOqQXUhxPb7Q4NP9Pb4i+M
	 S3t22Qf+8sarKk1wSgML9IUV/i6Uxxdo4KtICSNi3O2NzxpszysZhjvlmHe5J5SmZe
	 fI/m89yJIuGBLIRXAImPUnH2i65LU5TH1Re72I9R8GLtSfCTSdxN1pNYiCm6Aad7jU
	 AyG0SXn/qjwFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA5BC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837743369.5554.9497334325204680448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f3a10b8d26e7f147554e067f45870af58f21fc576f83db2b5f426065536574
Date: Wed, 02 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788377433
