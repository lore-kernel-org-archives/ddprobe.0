Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AE51CAA92
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758412194; cv=none; b=VCuy5JUqpT3qsHcsInNcSlXMD2rZMH6wbxpPjKDmaFgs07RBkef8uPdaw7PHhz0UJaYCWizCiuZNDv92ysmBhOA3IKraIGBW+bv5fIHFn9h4khQJC/F28cW5iQ8PCRviZRIFgiMbaHIBXrKGhRUSiJCcOXhif8Bhl26Lg7h66OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758412194; c=relaxed/simple;
	bh=kvHZYmHPT9qNcmwfGSazIiGbSxRB3sar+s4zYUOrOoo=;
	h=To:Subject:From:Message-Id:Date; b=po4ubE3ILtkkQVTmZ9EG6q1J2zkSIbUa6XQJ0AU3ztp34o3tCtJT88Tbkt+ZQ4VMZvtjdb45UQnnlu4Aqb6x1XsY8BD1y5tcHsA5jDDImH2VuNz6KYSEyJ34hsGZuCdhOrg/cl5/YybRHUgfvr+LrzG2A78qY3JbPdxD/DRzgt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP2s9hEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP2s9hEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758412193;
	bh=kvHZYmHPT9qNcmwfGSazIiGbSxRB3sar+s4zYUOrOoo=;
	h=To:Subject:From:Date:From;
	b=JP2s9hEjBX8+Q1WhKOeg9rtLJBlxJFAn2Y3RWigWAa0IMDK0/Omw1wZ5z+lKia+VZ
	 KEMiL1cKj0yeuJsvHsBO0IAV4L3HCV0ByO4uNwBe+XHydjndcv3cWdv80/HXXUhZ28
	 jNRyUZhhPnyf47OOBk1p9v7vBk8wJijox8YNMfxKFJR4PlGaW9cNuNG2hz+pf6xmIA
	 VguYVha1lRg8OF7zkYrvwNipzH0PgohthmrOd0Abe1IYZPmVZ6dpsGwyCx5vSK6Sz0
	 yVfuLQpE62RKO/rE3gf2dDy3yl1wuwFUI76670sZRy6QO8zuOEjq0wo9Hq3hPT3HnF
	 PgitAMjluRe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D1CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841219357.12576.11874065438243522373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ec4f7a05cda16ea1695d8ecb88eb2518340d27664a3e367d0ab3ee105ce251
Date: Sat, 20 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758412193
