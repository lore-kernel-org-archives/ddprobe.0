Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4458C1F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759439395; cv=none; b=EohAVd/aYYHwFYqOE7sSZIFhP0FzJLMjgvDaToVfsNNPTfQ4hY2Fumhlvc+qYUptWpQO89ssCIxj8V0dG1V1nBPBdLr6pqbTOyWW2lfR+HH84O8JVLeqbmB5XZZJ0MZsHv0kCTOKEjfjtroUBICUOBdGwmw92w4PDhzkaGSr8GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759439395; c=relaxed/simple;
	bh=oqjrudakVrrubKTSR+NwzykvSwZD13Q1YF1F6L/SN40=;
	h=To:Subject:From:Message-Id:Date; b=GV6f+hFlS2VaYuIXMCjXwEOukNng0wyutNX/yNgtx0O99PuxFbsI2Mc0r6evYvKHOOcL4K5/IZSz83iLxZHw0RvmYabL+BhHIV6yt96HAeYlN1F4nctpnNhZ7+UnAjJKNQB0tDSK64n8VMwpSPLCo1Vsv2hKtdBQKaGu1CFskjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkrDlxzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkrDlxzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2372C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759439393;
	bh=oqjrudakVrrubKTSR+NwzykvSwZD13Q1YF1F6L/SN40=;
	h=To:Subject:From:Date:From;
	b=qkrDlxzHvfa55FecAidPb3o3R6J59g5PEkoP2Siagikzhr7OwP2RWSggNGtfTSCIz
	 X7PLUBxtPssXzcVoyEwLWYmHfjdPW0Xh2nawNNqUn+Yz51AQJmfZSmG81wiQsxEJVi
	 XY1LKpsRNJ2hdvKhuzS2AXsHZhl1P/LDs9bCrFrsOIse1VQ2N8LzmWXYfoGJeQb+sm
	 5JutGNSlTrn/R6+STSpIMcYyQ0NBfKyOw+JdBwWNKb0b80VkGeS7qbxNZKssbNC0Ct
	 zT0d5u+KiA4H1t7vaEIjPKDPn8YFjQwMCfhVUV5ckBtDfRcaIjJDhjJbh8G6t6dpC1
	 k+JyFtQIH7eaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC82CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943939357.1481.6538568968304424786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d8d564fa1656ebdeba507f40e053a2ef41f3e2d8e9466513addd7ca5e04568
Date: Thu, 02 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759439393
