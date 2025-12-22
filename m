Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F183009C8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766403833; cv=none; b=RYPvb9yk6hCnic36bqwKgIxRcBV0laLF8TCt5+ULP8dQRcyEvIVTs6GKfBqq1AM8Lb/EMrPXPlDXLt13rKryRfCMmDJIwSS+2CXjS11fWx4gLwaH0IjifAVZbIPcfXMxzYJjBiRdIyClznktVlvwQboPGCSD847S9xlswBRkuOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766403833; c=relaxed/simple;
	bh=Y3YhGwrj1JbuLSsGwZQvclK64ArjjJLlmXA139QvCOE=;
	h=To:Subject:From:Message-Id:Date; b=VhuuMKRPLAfRQevHkFGCAjOpaHXn851Sfcu93FK22vBgrulbaRPfDSQwLiNpRALEO+0r7/u/07JvzHrEU5MFSWZORN/mavhsQovzCAm9BQAYE4kOpDqN3EelllaOU1iP6I/JtBbVdt22wSyb+Wo8kAfcbrMC3bYsJrFqQPdqSP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfN0i7Il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfN0i7Il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5913C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766403833;
	bh=Y3YhGwrj1JbuLSsGwZQvclK64ArjjJLlmXA139QvCOE=;
	h=To:Subject:From:Date:From;
	b=jfN0i7Il8PWib/9rbW9XvjrP4XuoYmqgxWO2Db+mtII2aCBV935GGcf0EoGx2+QbH
	 I70KtovW3iUzaC4Cmf5opoXlz0Pe5Synm08RwA4mPsSsgcpdCaQWVinxcp7ScBqoCV
	 WOAlVuh67e3WeVBDa75U68tZYg03Zx1eK2jlHqBwsVH6b7VA8dpjSrKGUal7VTD0wT
	 NdXWxvz9a4gDrh0b/L9BY5WuLMyVL1VITJi5oKNWXRHxZvuvgOgsef0SBM9YrNn8g1
	 wFrn89grR/RYECqbCovHLb+L0DhS0W5ZFiqxHsR5kStE5CWqx3qOiE3MOhDk6vtuCe
	 iFB/BtJJVD+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD9E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640383357.29125.10775715010151928746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4895518504af33a314c36a06338012d3254f055356637a14b9371b082fd3b987
Date: Mon, 22 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766403833
