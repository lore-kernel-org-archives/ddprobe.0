Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F9EEAD0
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734750354; cv=none; b=hHyJC2MwPZBbWnra9n7didp7vju4JRh4ULyjS6OcoKUmbW+qIdTAyP+4dv+3PevvEUFFOoOjEFRxDVOjzsTna1Aa4pCCjDKtbUR1g5gq2k8HBQ/Fm6l4fRFMWaFznM1HyXfYfIbVTC9SKI1qb6H8Ob2HmFpN3OvhzI/5D/ZyMIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734750354; c=relaxed/simple;
	bh=fnxA8dJRpi4m8hg7/uArT9C7R9dPw3gk8fYky1/awWI=;
	h=To:Subject:From:Message-Id:Date; b=YMJwBIeu+k3OC7tlqHh0sa+4DpdKWA6Ye+V8hgViGtDXu6NpQgjl5i7jFKKkqsXTDsuK51EIzOdMfng9pKCmhbdDtTqPjD7x3DgO7uFVRLvh/slfwF+PE2RM34VGlUh+EFDMiGzcXqUSGOIheQ3zXGMM2TyEtV0BjsBSeqmXJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl/QdRLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl/QdRLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E87C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734750353;
	bh=fnxA8dJRpi4m8hg7/uArT9C7R9dPw3gk8fYky1/awWI=;
	h=To:Subject:From:Date:From;
	b=Gl/QdRLIEiCm4o5ERI8mHRj8wy4/BSmmqlGVC/7PxhBKObmGv39+S/eOIVKmNlatY
	 iuvAZZCaXRdlxXKxOm1Ki3SZQf40GsxzZwMNsmZ6hCQGx6rI2zwYBCObtOgvA1diC4
	 ixpEtcBeGZOSFOecgfNP/IxA66SmfVlmVcnqk0FZXTq/Edkz5cup4grdd238mH2Upk
	 A/ZuPepraTqe5OF14/wGETVif18J62nJbJbTL5yV1QBE00DEFRGZdz2a8F35aDo9MR
	 PQJ+dl4CHOnVZ1qoB8eBQk5B0/eVklzV4Ke5EflSV7O8hzeOp5ZcYPRaKw/upr/GG6
	 Ro3xk24hmJZrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91679E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475035358.30553.3471632005736740742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a35f6548d9dfa8158a7a5c3447d60f7fd019ba46b9d69f0611310f06798980
Date: Sat, 21 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734750353
