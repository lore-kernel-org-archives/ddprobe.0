Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D5C13B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752410994; cv=none; b=FY4LDJ+NjdUqXr3rOajU2RXGiTwOuPoJWPyPFVrT8ff8sB5hzlNFexZSnSLQqIQB+imgaN/yRCe7mL3VFStdorJOaa7QArMU6J9ZmOxcYmfjs4Fbf4m2koGWZqoxn0ApVNI1AcA3xa0Z0qUGq0pKAOtvnGSLCMDDSQ7HijzUiRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752410994; c=relaxed/simple;
	bh=pnFGq0SaSAtN/u23FLdUYO96YnFNHaqX7YIaL18NYpA=;
	h=To:Subject:From:Message-Id:Date; b=JcTjHZzmYgt/XJYuudCP3avX2Lua6e+Yv4YwNXxtIrVbZ9efzN6+sCIeMscqwk7Em0YklXaLtdoQXtE982AARvEB/DU32lRIeoZI/am7D0leEp4f9vdTVGVpk/wXK3C/rcUWKkn5sL9mIXCfAIL4gEpYAetPeaMdbq4Cp0uZXRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBFvw0SK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBFvw0SK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752410993;
	bh=pnFGq0SaSAtN/u23FLdUYO96YnFNHaqX7YIaL18NYpA=;
	h=To:Subject:From:Date:From;
	b=UBFvw0SK2WA0owdVX3PP6e4iSZGTON6OjKo+CGl+DUNyFwzS64xsb64eSuOO1uZ83
	 MPdLscFnKHTr44dZc0XrcLQyl+gbW3Odm2Oli91zW5QvCIs89Qobynyse5I5Jz/pTS
	 ujfhmfRmAthMKlxbaf10Y0d/UAnIgAzRuyPLXfpdlzJcF3GhndernqBhP4oRHNGtYg
	 nKFp+b/hPKmJtkHxixAQ1y/I7tPKoEIZYpeWJlpXSN8O9Gf6Ntcrazv6PouY7GL8+z
	 fyD9e12r0uvWuFHSRyL6cwflQvpWYEXC0AifhZqGQ2BYZKL/9EIj8yB6QZfLTrRI16
	 1P8AH9wT+i9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240CC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241099357.9726.12631600692761388896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df5cf5ce8956470383aabdf14c7e8baa4ab70d5b1f740cf00e5869328983856
Date: Sun, 13 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752410993
