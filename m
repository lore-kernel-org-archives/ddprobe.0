Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0982C60
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750015194; cv=none; b=ipoSKbj2j2QVUhap6bYML5CXQtmmra7w4dwma7qWqGjhINikdDMcv+nltGdZPiRYraQdjsMUhu2iikU4fboXBDKZg8mw34wMhP/tzDlqZkNvN1AoqBYCKoJJpxl4zfQQpKbk/Y8O9TnCTXsAc/rhWetO1yE+nLvvq5pEj7hq+8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750015194; c=relaxed/simple;
	bh=qQTFkZIQoulwQXctjbU+frfwYfUFBmZk/GJSN/Gu6iA=;
	h=To:Subject:From:Message-Id:Date; b=PP3KxwVcolDC+E5Jg4H/pBjlATO82RmtctFO1Yhqls+/hdVBDo/kUWcV1Mi9buVfVQaCFAS1HiHrT3a4HliUWqvyJa9qnu9VCd29BlvQKEtAi2mic8JoTVRlouaGvxrrRiY0HxEApEU94oyrNFk9bVqzp4ZjuiSnaPpGA4+rRg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/F+X66p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/F+X66p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB483C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750015193;
	bh=qQTFkZIQoulwQXctjbU+frfwYfUFBmZk/GJSN/Gu6iA=;
	h=To:Subject:From:Date:From;
	b=a/F+X66peCwvNtXf1iM/pXtBrO/AtOuUZs394801qAumG8O27TfX2NJ243uk1M2GN
	 yr5iCD5Xa5GTCNiEW6w3hl3WDZOQQgAS9TDFhR+zIH7DWtzk7yV57ngmrbgvfDhC0z
	 HGLBsTIb7r6OXcUdFhcxUNHVeKOcjQMK40MyBQReEYLC7jj1dsvtRDA5153MjlGbTD
	 cErFXG4rYSLA6Ji+YNaYKuTppti3v2mAw6gtjAiTxBdj0cdBPtQaL/8UQM41Nxhi0u
	 +t92SrA0x08kHwD1MXBmnz4MuCNQhwqiLm1Vi1WPXPivAB4X/j7cSvsuIOoG9+lskp
	 lJ9y8xV77RAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F7C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001519358.18026.15025233639594800402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c16c2d941eda7ac81377f560ff7071f99f62d3e178cbcbe136fcd0f9a47553
Date: Sun, 15 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750015193
