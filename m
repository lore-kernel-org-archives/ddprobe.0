Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBD83A875B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787955634; cv=none; b=PZZE2uFpTuseJyHfM78yTP7t4jAZzKcyPPyEeShce1SYFmeedgdh4n7I95qvj1GoaIZaY87fBAgfAR6tSoB4VO1Cx/B4AewqyBbSK3t3rqi01dxov6m854e7obPA5vpokHQvpoiAWP6UDfE1X/Q9VNwC2NshYkPxLxQJHtqzk38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787955634; c=relaxed/simple;
	bh=j9mLzr4EAd53BPu9Jk6lh3GsVUzmH8CP6B/4KodXsEY=;
	h=To:Subject:From:Message-Id:Date; b=CHlaKmLpNJC+/dpPdH9eC1/x/Q2499wCcme7VMheK08q8LDP9MlvV5oW+HyPqxLlsqYJl7aL4y6c4P1SWyB4t4YeGT1abYy447jANuPiYDsepZJVTAoczpispA9Bqftgp5MxWGLkbJaqg1DTbUElE/siQekBU4yvoVxXohyjrqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2Nwtw/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2Nwtw/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1C6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787955633;
	bh=j9mLzr4EAd53BPu9Jk6lh3GsVUzmH8CP6B/4KodXsEY=;
	h=To:Subject:From:Date:From;
	b=a2Nwtw/JgGjzp1LzazCU2VSc+cSYMGFLcGaGxuLHQvOmf5ONMFU3qb4qiNnGMKh/w
	 DPUCDvkaXk1+sgu+ftJxMbD1IjEdPqCSAlaMDI0iqZX+sKt6tZP/MkbD73Z6dzCRnQ
	 FUoNU5IOLyk0K+RzWX68wfdh+/bxQZW8+VHgisx6ziYBw2wdpyUJH31z4W+v1kdCsE
	 5Y8B1R90+slTNkwGL+sLqDK25JeNXX+eqUHT04JmUAjeqA0bfRSlyIERp9LOis3SUi
	 s49ZpvZ2/wKwRAEPC0Ee1XxwJi5l0eriJzG8lvsz0wQKDYk1+OrIARAxjOAC6XCdNt
	 Fo1iXkoyGxhiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D4C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795563368.5686.5044972169930720226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd77fec321a5dcf6816f82d4b1904da9bff8ffb7b5d6ab86f34c96cac6c177c2
Date: Fri, 28 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787955633
