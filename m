Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD29287257
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774257294; cv=none; b=ZPyTkjvAiRlrTe0hg64HHYCzebBXnS+6zElgxAoHxJXB0ztlVHFLq3Io0Du1nFkx16MuxHVQ6dHUi8fWtV8JAilb+akDcwGnGyXfdjc4Hl5PB3z9vATMzhgCKHqG6zuUNFU85wr/TZxdoBOqefS0ZJhuOC6HqTLvi+rD66r8K4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774257294; c=relaxed/simple;
	bh=q+y9NUtQ8e4UsknMFt5DHEIrVXjO3yrs37un92USfys=;
	h=To:Subject:From:Message-Id:Date; b=UbndJ2ZpAsuqoWKRd7IbsmpDWiSH4XrR59DJWsbO2xqDlST+Q5VWR0C0T44szsYoB/akY0ZiFjiXCku27bPZKQVvh1KEm/ANXU0C1npz1YZUMfyH2dzIXuJYF2zryLsx6UkwW3MXW7yI97mus9xJV7rmapLV87P6uhlKutSeVMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A46XgniK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A46XgniK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4674C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774257293;
	bh=q+y9NUtQ8e4UsknMFt5DHEIrVXjO3yrs37un92USfys=;
	h=To:Subject:From:Date:From;
	b=A46XgniK7e2+YNgCcq/h3kcdARVKRx9HOCwJFrycG6gt5ec6HewInpm+zEsOOROdo
	 DkW864xqWWQP7m0/DllriaPwMKPzV4o0mTuTJg32GWhewuXSvb/G2v7hbXjD7RAeSI
	 mTPl7KEwbtLcUIJCJ2yaBNEni/eUeTn9EveEdug8wS3o0X1pXzLWEyBjV4PBqNSh0g
	 LYB9xS/canHmW0QRQgf68Z9YXiWuXpydsO7CO38HU/ccvy5BryKh25UL1wCzwJWnuC
	 95whLVTggDS4AS5xoB7FIC9jez6c8N6udBpm3nc8TqosN4vI+8XfgbPi0eMpP/j7tE
	 5tfiZaZBV5Hhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0FEC01A6
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425729359.6651.4313853416564369092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0793b5d3df25038890d04e8d966fd74c69b9c403496b3cdc2aeb8bed1065f1
Date: Mon, 23 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774257293
