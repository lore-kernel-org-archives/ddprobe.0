Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070CF17573
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712488697; cv=none; b=DofJ0zOEI3GssqSTTrWCJJi8qDuC34xC07mFhhRccQq2uKuc/sDaYvAcAGvcjx7ULJ2or06xjOhAdErxAHGZubkS0byuKwETZTT7JvmvIAveZiCiMECr1KU9y5adDY13HRHBh3uQojcAHPI2BIdtODjiNiih1NZO6gYnzdMVFOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712488697; c=relaxed/simple;
	bh=ZqZbtaoPIFNBi4ut9dW2+/7xUaYLJpg6wwjhmUAVaJo=;
	h=To:Subject:From:Message-Id:Date; b=QmbE4zFmGUBNW8FmXxaNDFleljic5HSygY49KdDvBAq7RAccU800PyfssX/0vO90PI7w57FpW+338+AzQzjUD9ZyLM4H9xlSmAiKVNboOnkdny1jt30ppEtYaRdh+z+LvUMmEo75SSSYm3aW9zfsr9aZ9J8nUz3alCibjnlgcNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr4Sqi1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr4Sqi1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C11C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712488696;
	bh=ZqZbtaoPIFNBi4ut9dW2+/7xUaYLJpg6wwjhmUAVaJo=;
	h=To:Subject:From:Date:From;
	b=Wr4Sqi1dbCaTQAIT2l4EcjgXZIgvW6Nk19Z2YfcI1GljUg3qBTXJ4saXDhaPNtrPt
	 BlGpWr5Nmp9DwhMfqCmyFv9VIvgM7k0TO8KI+QouUexFcDy4QH5mZdE2GNKpnTot0Y
	 x7w2rObETHiDTYepXWao59pbmGWm+a6tRXLOxcE0cmSO71ciHhy9QUwv/QducYd/3p
	 qNBEweAW5ecXteCFjrnB5SCCXumCwEv5ZY67aO/81Gkd7/UQLZNrirjeYb5Cl/vIZE
	 6r0d00sKI80NKEGNH2PKT8Hb3sl8wx6Z9yZ/jd/1hFYpiQ3QZYCTEq3WbjAhO46P6L
	 EHGXZscbRgtmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBA8CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171248869637.22153.6639922878824649977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711eb0282d4cfa3b36595a7d5c4a1df7b866aaed82f01337b8e5bf8354761e25
Date: Sun, 07 Apr 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712488696
