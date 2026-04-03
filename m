Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C4D2D5A19
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775184334; cv=none; b=OqlSu+QEvjxdXY/3Cpf9cGIO5eNNky4nyto6kC/n2g4ZA0h07buTBpIyJTirKD9O6Q4xIM/VaT06xkHYajJha7G6bynEeeWMGxoDn6WII14jKh1gGAQDdgtqqIQKH3LngRQzZzMbMoBBRoQB+ebHAjIIcDJl0W5Jx2Pt0Tqr6xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775184334; c=relaxed/simple;
	bh=Gh9h6o4rDs1G16ecbQcxOp5cy1xRZfug+7L3K/ng6JU=;
	h=To:Subject:From:Message-Id:Date; b=fCesJd278WD2jao2kjQLXAoGe/01TZDEYydHsJ/R7I5aBicrXfBlII6gFHcsBRqZQ6BpvltoZe0JAM7T0xEhgq40HtqiXV3dj7Hl+fpBrCXuX3wCdOdbnQ8NLctnGS8pgiWdHpzsY4YJIKe937zUl57kOLprjW1+VNbkmChJwtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehVC+NiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehVC+NiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFE6C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775184333;
	bh=Gh9h6o4rDs1G16ecbQcxOp5cy1xRZfug+7L3K/ng6JU=;
	h=To:Subject:From:Date:From;
	b=ehVC+NiPD0+STkFU9hE+w+yWt15G1gO/DN987whdP0gFw2hq/QUwGWv2hoq/Yddwl
	 pKrdfx71DZN3Pqqm+TPpgiam5jxk4lPDmCBrD1ACKpsw7UumniLmNIzE9KIjLlmWIe
	 51vJ5PDnKmKMGYeZr8rLSEQodWFOXKlg45yCKjR3goWUP+u6Wtz6t8NjZVOMuBuyfk
	 4SDdn6J8fKEjZBFqEt5ylAB8urhjBgJZh3TE8wCEUjve8cqrjbZ5LIahfebv64+Rgy
	 +ClmVZIj22fc2bUAKzuDBZv3+J1KGwvKi8yZnzxjtokSzWluiLsZqvoVr5Cp3SpYEp
	 BLsKXb/Sb4leA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97FD7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518433368.8504.18268973779320044590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c663e45162256f4f421a6de5ff2b5e649a36e5ce2af0d96734687ef5ab3afb8f
Date: Fri, 03 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775184333
