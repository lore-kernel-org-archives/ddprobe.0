Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B66D2494FE
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756362594; cv=none; b=KOfgq2//hdtRr/eA0YfV3dlYvq2A7r0djnPGEThAJJI/IqvmQzklfh7y5+8vBCsG8UJYDgLxeNszJICwBLZt0rKPUvVK9tObx7rqlJLXGpz6kfCeqS1TmHq9NNwAwKSa6zE7ypWq6gYuf7ikorAEs7voTAZC1rgbxAE8wa511dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756362594; c=relaxed/simple;
	bh=YPnvAf0IU6a9ayg39Lm76wrk4PpxIn8IaHObvnPxOTg=;
	h=To:Subject:From:Message-Id:Date; b=YmJe1eZrnXEQvXE/PRQuaTF+XkxBxsuXs7A2bR/P4KxLpGq4WU3Saw4V4aTpjKipnbiYMeTijj1pY5+saXssf51IiYyxB1fpy7nqcL0aiA+aSdxdujIuzj7OR9hl2AtWp6zoXiNODxHAt4NRdvBNpsRhTx2/Mt/l9LzfYj5pyww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhX+EblX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhX+EblX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756362593;
	bh=YPnvAf0IU6a9ayg39Lm76wrk4PpxIn8IaHObvnPxOTg=;
	h=To:Subject:From:Date:From;
	b=UhX+EblX5h+datkLwMAS9li8F19HfzbZlE0EE+ne0ZUwlwE2FOO4Y4huqCItNG1ej
	 mrrmspzKexPYQc2xHqVZqTmD/hMgtjIGT5U+G0ijOzDjhl96wGGWaagQ99uYlLnXdu
	 dpkr4KC5SUeOQwwfT/W3+jvD3Bwm024TtKxtC1dBi/Y2KUffQp7eQ0k5eRKPBQmptA
	 YWgF8yvkKmFh6Sgtu4Had8KyMLdh8wj+GrPbL9FIhpWpGIp0H7Lol6eFSMQX+dLFHT
	 toR3fLdRJojXDjYvG8liDTOxI13k21WWpOoZlsooVld76jKjbAdVhVEWhNGwUw4Rug
	 WET2Ag9O2N0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C9CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636259357.12917.17580944007709313086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71f3545a28bdf4592618c91f96298b17d490b26fedd881f9188778f43560a55
Date: Thu, 28 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756362593
