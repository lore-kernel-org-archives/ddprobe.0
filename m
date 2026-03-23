Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21216B672
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774245894; cv=none; b=bwrg+k+emU8AxUTFQ/nZMkw7l/cbI80ml7MeoHvRRrWiJtMZ9mJ9/FeAM7iky1yEApplKxiTwS8oEL82lWTiWAMAdwyGLHADHGAFFifftaaPYh5ChsX/GFCcCumFn1Bw7cW6crMrHNZLZ0+i6VZf+rdpA3+L6+JbzixVSO85tFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774245894; c=relaxed/simple;
	bh=XxPv3jOgmqOml55Tz25RZUpLCuX2CU8gBvLyjcemj2Y=;
	h=To:Subject:From:Message-Id:Date; b=u7jV7bel8Kb5u3Nz2Ajm1zGNnaYvVjKpWQqmpEfiEgZRLWJToOGhcTLtdKQzsnYJgJXjrWcXQXHdRUzamqwAgZmKfl3SjLjtq9fvEpdz6/5Id7Eg1ZRPp1qn2j2RhTyexsdz9pimYFEYV9EoMfwoW52h40Dj8zFiK3tWtJbKKfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEDfmEcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEDfmEcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4725C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774245893;
	bh=XxPv3jOgmqOml55Tz25RZUpLCuX2CU8gBvLyjcemj2Y=;
	h=To:Subject:From:Date:From;
	b=ZEDfmEcQUW2gjwqslToeLXhaB26mOPQxzZx3m8BPc3yr9fdZw49aPpH36/2rfkPo2
	 6dvFq8k3TC8YA1TBo9nwXNAGYcxgRvQFGcSjwG/+x++2SASBESRuBIvZCM3kePtlnv
	 2TLLPwkqwuzApwHtkVpGHn516ymexWYeLKij2/XcvHVOs54cSTdk+dagSNVs9KuLAA
	 AhDgjJyVtaMg1BYOg8BiLwDvET3rEv5eSggZSHUpqpa5sFtPSUSoKUfawx2O03hHAh
	 4m09/UPnUy5/JR/TYAqRA3aCrLJT0tfDrsKMRcvbaAn2y7VyD2Xzd4yNu6OWbQv6OL
	 688nsNaqGRRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A4D58CDF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424589359.1382.11564503036560005648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3078efbe42e45be81146a3d61235f8124b36ec8b62e3cf52232e8a5460d3e1b
Date: Mon, 23 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774245893
