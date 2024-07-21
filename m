Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4BE12F365
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721589354; cv=none; b=McrQ1T1oNMzw9Epgxr3Sn4tTcU9ywX3UxCYJkTWxW324I9Urnx/fzTjWI5Uc4MdaWvaLT9E/ZZe6IE1yBs7mfnzpBh/ZP7amTTMJTNdI8AEZlVPvkt+kfZ/VcsrW/CzEl7qz8ZK8kqqxMCQnLcRlN2ADfbX0Md5s+pqH4UpcOTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721589354; c=relaxed/simple;
	bh=LD68NcYbw9CVvtGAoeFu15I88QvI2sTIFunxPBYlQKM=;
	h=To:Subject:From:Message-Id:Date; b=du6LtLn7vovR/+LZ7Bxb/A70RzwudqVt+mc12mi1GKeJEpRR/Ao341mjb7n3brQNv+1tTrI1G9bLrwN6vHhF1+JnSLxwIOAspy8V2gNxHA1JhczKMWjj+xJnsLYt3rTk7jvKsDPgaUhIAETD87diMJFelA226AZasx1YptBgQCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TftXJ6Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TftXJ6Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721589353;
	bh=LD68NcYbw9CVvtGAoeFu15I88QvI2sTIFunxPBYlQKM=;
	h=To:Subject:From:Date:From;
	b=TftXJ6CrX2cSTJ97jqpbHLzKuCG88jBRdDU098Qf+U94PeLziBzMZuUhj2lEAiiIA
	 loAemMAWUUK+s5/3+HstqT0h0KVjJa3NI/ab+Va1JePus73E36UYOgq6bGH8qRNdlM
	 nPBU/WS38yZEXUG6Z0m1s/AtxtDQfcpn8ao68xreBiqRvxrmc+0uJsQgCx020Ls7af
	 hbJ7UUJaMMrfiJn4aDE8cuEKryY3XNCuepEzl89VxBoW5sE556Ihc4mgbAIQ7RN05K
	 Moh4KA6WcL+enT+yo/518Vy8pWMK+vs2y0VeglBJPzH2Kkti8QdngRHlqDhPjv7+/7
	 hMFuxZ/QZWNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BFC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158935358.24504.5996847067548216292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c93d399e8d49060c773e6c458fc7c038a0b547c3f5375c6c4253a535bb996f7
Date: Sun, 21 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721589353
