Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C52205E02
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767305634; cv=none; b=hpSt20MX05BLLE1jXjTyZmBXLyGwlGyeeXJY1sIA0Taw9L3RLBXPAyU58nMCxpPo4hC4rp5yo68oM1pTmaCAR8BzX2inzWrHHHrA0D5qRWBqIOGBan5IqT76r+atwjAo56qNsqL2ihduhQ4wWwAm32PwhdljvcKPjOR7HpvyKxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767305634; c=relaxed/simple;
	bh=xKVZSKK96R50KIe7bMX8QYzuCytrAhgt+sD2AzXO5f0=;
	h=To:Subject:From:Message-Id:Date; b=RpM0C5hF/gHZgby/9DsIvR82hXd2Oq36PXktGPIP7CkGlvYQ9S9xAVGgSAVuAlYoR29i62Xxa/Q7TBOmH7RjR3lLrLAWCGWcm5AGix2lmXnJmaqqrTdCbV0K0AIt18Sl2LpRsUT8mxADdBaIfU2ZEkMNxqaAMcKatGewN7H3C3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRi+KYGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRi+KYGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB05C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767305633;
	bh=xKVZSKK96R50KIe7bMX8QYzuCytrAhgt+sD2AzXO5f0=;
	h=To:Subject:From:Date:From;
	b=DRi+KYGFpYPXCR9F9M5TSBWbmb9mzCpn/PynwuvQmd4u93n27Pe+SAOssvCNOyT+m
	 RM1k58AUXkqPwHYeEndUAIJDhm7Ga1fHzYjcmzYDDVYa7lV87pDgmDm72InrtLU90T
	 v5ortxOVyVkS/yzNWAwg0Nk9SsEX7IBCSpnA5baZaZ5ZMNYP5d6GxfmQxlk6qKIFtn
	 eqg3i7V54Ghk78KSAlg7xnWnlYYQC09OmRFlXLkaccoC/t8sEjKHjRSb0RWEJ+CF+N
	 FOYcgwHztF0lTp/ch1zNExrtIEqddsn6B6mh+HXyeZykjeKKd4VO4CtGl3Pd4ueWGG
	 RcZ7MHt9ztYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9FEEEC1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730563357.31412.5610424576181630734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224dbe8447b2e48c81d689b4c204d5c9e4adaaff2f704d6890280c999703e42a
Date: Thu, 01 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767305633
