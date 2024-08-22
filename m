Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2150117E00F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724328954; cv=none; b=FjnPubMKcgVfXcYbbd1lExyT7hHvJIleBV5s9SBL2wTQv8ma6PMAYZGxa0TPeq7K/v26xg4Br28k7aQJdravXmjkPA/tmFe2tSFolDmWKlJJgeN3jGWB+721CUmijs0D1YTSMxWi9SzbYmSSDp6GGPpiW5U2kcuLwj5GmP3aU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724328954; c=relaxed/simple;
	bh=bhdiCVct7JXdi+g/8mDMbuqOeF+QcTr1nEGYIseRAwM=;
	h=To:Subject:From:Message-Id:Date; b=TuMny8hfEKnYg9lwYX9PRJV6BtBQ88eFVz0BHz1WS2+QUwnAmdMWIOPjNJJ3TIaoY2f1tBfhThE7scYAv5Ah5FQiQ/aKdLHTEjvasceA/Htnme+pyaT/ryw9CJ0Ajdj0MEyZT/V9bqqi371nl4rwFuRPp1tq/ErZypTy1gwVXSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+zIIgTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+zIIgTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD9CC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724328953;
	bh=bhdiCVct7JXdi+g/8mDMbuqOeF+QcTr1nEGYIseRAwM=;
	h=To:Subject:From:Date:From;
	b=i+zIIgTaepsoC50LzrT7SxD4pVkSSi7cDryhqtxnjS2QhK+MeUgDgmnh6GaSr1r46
	 SdnVIN5o4nqDs9+0ccIkvRraSxIJEJZyGguYgP5eNCK8ldzf/soqPYjtDf09jYdpIn
	 mwLnv7jJQXAI66ir6pZWmIhxNQAZ6TB//h1f5GTiB8nGpGf697JXuGfJpLoEFNGKXk
	 VW5+NN783TJZh1I41vS5ZmR3wqdNjP+zFAFRfqFRzl9A4gif7ohjzRmIfJ7cFEcKiV
	 lVchZf4b/ASyBuqjMU4UyTdN0kdSwuAyojsFFg7x2tWJmMOV17wmq7QYSlrgb7zPkF
	 trMLYzoJZV3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B1C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432895358.30833.17417179100867337824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d021414541e151c5654e151160c2174f3498454f1d117091df6649ec8c13d05
Date: Thu, 22 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724328953
