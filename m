Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467573ED5A4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782471454; cv=none; b=XUAmY3Lzhp5l9TcX16Ks1zoQpGoHDf56gUaYB6gXKvc5j4AR2flGFstR+CbjYPjOv2J5In6PNUHhoapTkJHNu/jp6nlpE5F5KTWzndcNrfBaodF1dLfnRd/+ip6a4HybPRAnhvEp+81cdHWUPgYkT0huTBgYHf+PqdD8JpS9qEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782471454; c=relaxed/simple;
	bh=YquHzXegcFzGgmvHT/s7DLZiArZDicxG+Jsk0/AnOMw=;
	h=To:Subject:From:Message-Id:Date; b=ghEGlnczxucrnB3v+g9lhB9uuDHQVtwaJD75VGz1czd+EqF2tNaGPvKmZKfDttEACI8ryTG07GyADFCFotx8bzKFp0qiDfhB2jeC8lW7bP1XTUT3sU7Shs08cj2fsNJyPSNGfsR75fiq7mBUHkAelu52ozj81nMuN2FqyeSpkWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhTm+WFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhTm+WFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F85C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782471453;
	bh=YquHzXegcFzGgmvHT/s7DLZiArZDicxG+Jsk0/AnOMw=;
	h=To:Subject:From:Date:From;
	b=KhTm+WFQKBILIGjmo5gpcwDLUo+rJyNXoNjY9rHReMTi3UpkdimJij8tqtDurluQt
	 QIPznjlzC2AGJC89eCDizjzUfkaP5VG6RfoJi9P2RkxdiVGY6hIA1Hq6iBhDXQxWIb
	 B87hh7+maI+od/YSDeBgE3rump6PfGUi711tpXRUYgr2iw5t6cWoLYbVvnbGkzwJBy
	 uVQaZKXjrmOLoMhx6q8/y6bRISMWaU+t8ZMwq5QtUZdBLlKXEfzkeHysEH5E6LKcxN
	 mJsT5slmlflBYbK5Ubj4MIj2d04PTPd9yjPio2NWaz+15R9MH6AkSAQyzHxgoDVvdv
	 urMRI+6+lz10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B0BCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247145374.8539.17371126998812434919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba82f474163aed919b111e8d14d052c88ef5e6bda281a60851915cb3f375ae7
Date: Fri, 26 Jun 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782471453
