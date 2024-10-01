Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BB61925B8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727814954; cv=none; b=AEvFEZ2iDs58CO4YyhDxev3qwXc0tQr1f7vpjR5yGBOtwkkVUMnIay06SnOo5q0G5D4+gAtDhNgdoqST1NsqGa4i7oZABxa4KMnYcOPx3ZGSOLEaAiugDZrnSJUSvfVvB63gqsUuIMPys5cft2gdI6euINXNSbl0qP0rZabxMrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727814954; c=relaxed/simple;
	bh=vZWjJSPpSVsgrHoRGfCR5XqMDwWZyAMdq7/MQ/fwv1s=;
	h=To:Subject:From:Message-Id:Date; b=P/IS3593rbH0xJumGZY442HV4i//ehhDTvJulUPDbdzJgTQnGz5yrS2Jn1Eso8MjiTv8VhEMiXGARERe+NIf22skE4V1D0Ue+y+A80kc3ZG1na4Y+oMDk1d4CR/xM0PbBjr+vSzgJ+kz6BQAEcyLZFgLSoungu7haHwkecd/Ojw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIsknFNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIsknFNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A6C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727814953;
	bh=vZWjJSPpSVsgrHoRGfCR5XqMDwWZyAMdq7/MQ/fwv1s=;
	h=To:Subject:From:Date:From;
	b=NIsknFNtJO1y1x7DVC30ugidQBdnGNRV7Xjh0dzSK0C3YeRorVYjqELdniSCWExTj
	 LgCVs1sLrbhXmxUo2OdA5wc8TGN3eeFFHf4V/uYIBj5N5Cv/tpbdWnzPCFw8T1otCX
	 6TmNzqyKeT9TsX/KG6egNn9waCH8yyzNFg1GeFrWlnBWz2k0ziSWYpzC0JZnKCJQee
	 D6KzhgC/wnLcD3m7o/Zw04+r4KKItueLrgipE5LDiNH3aBqVZg5znc/5CWs8pv9iOz
	 XThpmejriZXHNpafkxRvfxKiy00LSX++gR6MeNBlorV4xHjWUT9NqouI1rhIbSMF0V
	 l/TWeaPzTLqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873BCE7D1A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781495358.25050.11370238180908120817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68755e3011812a588a497ec264c0245eb0b93e1765f2fca3b2e95e2784c0386d
Date: Tue, 01 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727814953
