Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD552F5A1B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761926994; cv=none; b=IocCvppxEWr2A5fMV1UtlVtCAWp8Y9T7OY+XBjwvfDSsYH2ked6eXtns3IGpd9xSM1Rv0diZgQ6DU8vBZ8h2GBHZDHA1QzBw3xu/LRnrqXGtO+QY3MH3o5qwuKl76j7LZcpmJ7R1dOW+B+Eonoi9AKJTLNk5XmYZ9qelSGcnm5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761926994; c=relaxed/simple;
	bh=IRT4Arq+vFZkbXuVJYhRvhG86ujxZiHyD3teugieWMU=;
	h=To:Subject:From:Message-Id:Date; b=PrkFtLZ65zoe11ezjAWDfY4hhmqKT8cMaErpB5IicyLjU9/JcEIAE/prMg64JxhHZzDAx7syR0+HpSjxWaOYJ2a8b2hk7xNO/SSy3dvKCrUFVN+9LpcN+fbMIQoOJZQPH/V3UC/Ee6ZD0YVVuVg2haKoMx4Nt3oKNs51U7H3kAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lX5FHvQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lX5FHvQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D79C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761926993;
	bh=IRT4Arq+vFZkbXuVJYhRvhG86ujxZiHyD3teugieWMU=;
	h=To:Subject:From:Date:From;
	b=lX5FHvQYu9OZkPsePjV2pjW779MnjT4UCH4RimX0gpBiDZ63yvoln2SN0lJn413Q9
	 9M+BLS9EFFjRF65yq8ua7cC4Tr18O3EIOWfspprCQD22crh7v7J5tZ+jsnwLM+q4tp
	 MTZ8dO0JJFTilKYNHs45Uqtqckr0p7quW9UxzYIpssiM6bnw4PrRLrBMBT7koocbo2
	 8FN5AULZzQGVFrAXSWbj7EfK4ox89wa3RqfHtbWmH3/1EBWQ6QfyPnx8FOnPNcuajr
	 A2OkuxXLPUqO8MZzMLgdDa0L43+A3l8GzT5haBh0v+TNKpfhkhSwp7NMUc4eCTJa9R
	 6dtb6L8zk41Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE5CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192699358.14713.11756428051960847609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f2b09865900a30073121565e33e9fb10c40af6027f5d51ede15532ee85c7fb
Date: Fri, 31 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761926993
