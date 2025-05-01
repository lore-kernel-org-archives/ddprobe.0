Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ECB1CD0C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746066594; cv=none; b=WChTQj3QUl0kTiP9bh3IeE0vem2kvp3mM8g34t1JOis+aJBDPftvI57o2S7Fe8xNhlIi99dZQAO5F/ajslD061U9iMXzTAEXxc4w5KVvGiFGqZIAgX2+PNKjW7zvOcTllWteuMu/pC/xg16/IkF/zh376GnWvovpiANXk9ytEfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746066594; c=relaxed/simple;
	bh=e/Z4T0VPkzOw5FPKarqC0N0SQ/nHayWLVSvlrnwX3a8=;
	h=To:Subject:From:Message-Id:Date; b=hSzXugXNPw1cqqgB/wnM4Ets4KuesowWy/zK22lNgMVNJeedY+M0ULHaBmuSC8YPe3JTFv8kY+QMrX6tde+N5HoJLTm30XG7KwgdBxBDWvw4Y5jnazLQyWlNmkFrHVxSnHYRyr7oMNcvXOmjvX8NOUlFGt+6QQlLFTXSVD/UYPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qc3bbHqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qc3bbHqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7BCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746066593;
	bh=e/Z4T0VPkzOw5FPKarqC0N0SQ/nHayWLVSvlrnwX3a8=;
	h=To:Subject:From:Date:From;
	b=qc3bbHqrVgEmODu2OEvb94xnJWcxjCNcR5hKr0bg4YUsNPHKkXdJDRFhoHNm4GwN8
	 7V9HwuJxNr78gH9R9VomEKF6r7Bit1p56qW3lh7HtGDN5C8rwehEk4i4B3CpiwxRhD
	 Daj0llYOhRo0bmhqA2FCM39nGFPBSSfJ/BnlfElyLWumh1F9bM5lRR7DyUQEOfAbBB
	 d4+nSfsbz2lIpSbPcP1TSPQZaqyLeb/o5jIJPaumzk9tXjjbq9Gn94ylMVOI+SsnP2
	 1DtIXtdGf9+iNyCK00aNIIUOZ3Ex7FD+3YGsLCPU6NB7yUCk2jWjrV/8NZXoWoh1uS
	 nk3DZ4ktKGryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB96C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606659357.11480.2604413624672895281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a54d74ac74521603d39bf4521e5b25f252b7188a8e2694fd4e0e6058e276b8
Date: Thu, 01 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746066593
