Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DB5258EC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774110294; cv=none; b=RvpwPChGvKzIghN4esJNALbm5izyThqqqdyjm8u2SsMTviXS8mI2azcXeXiiZnqqFeNt0gX77x6K/b6qPCD5fTIXIuTWxKaS45XZXPESPPy4TxUXpNLVGuGaBf1hoeGi6nOrth6h6RsVBWnqGD0pKjMpk3fiIkEYUnarHSEHhCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774110294; c=relaxed/simple;
	bh=4g/KQVGGy+L1PsQlPOUcRKoWL2AO8IzCX2nkdr0MRh0=;
	h=To:Subject:From:Message-Id:Date; b=AGObP+inCiB1Q16zj8ZpYfeQ4zILbAlHVl+0UkfyPe+N+TzRZmpIZNPNdsc260HY+E2TgRxZKyS6Br/oSPz3edTn2ft/VHW2KDgJE6sgAbIzHgsfwOq3ByS9wLFLV29cJIctIe34d7rIjR2fqeJYY3nCpKvAeNuLo3nzeirY1p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyImTfot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyImTfot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1185C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774110293;
	bh=4g/KQVGGy+L1PsQlPOUcRKoWL2AO8IzCX2nkdr0MRh0=;
	h=To:Subject:From:Date:From;
	b=ZyImTfotpyYEpIA+wE4FN6O/pGw/0LNx0lnAmCB7LiUORzJf8t+qMy8nFHLXBUbjh
	 Tlg1guuEKhycu0UZ32MEl+IXcabBWOc+v0yqWkwe+RrUq3iz9cbTLtdYfAvRaN+McL
	 /5qEUXK9k6x3yYEsfiBjG7hcCnv0Jexf9nu8BgegL6VX3/mT0lBBvh1o7DQ2X9WXxJ
	 pJhg/s78LKY0pfmMfYdRdCxMVMMlVu4+a1TPEQg36ek+yi1v+7F60VKiK2jcsP5PZt
	 kvpUUAKI5yr8z/jdyjNVowgSj3xunlcr9XIpy1yzs0hw/AeC7nFfsQwJX0pr0NSbf1
	 VdCsOOKU9RMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA41094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411029357.24595.17036533349446993454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bee7a38512c148d07c0da0dbbefb1bc67171e45f98fa28639ac0c622dcc6353
Date: Sat, 21 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774110293
