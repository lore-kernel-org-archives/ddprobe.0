Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC06C8E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771494294; cv=none; b=ecUMquohwpvROp2LEKGzij7QYtvYbjCUi99EQfvHdPS7I6MmdBxGKD26ii9azYXSsXp9tv14qyAtoT+yf79biOX43pENAwwecDUMAlP5ejUJ0LwI/Uyz5JhWiwUGGYyygqXHXvlYQtMv9xMUgWeDqiw57KmXFEudTgVYidRqGYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771494294; c=relaxed/simple;
	bh=28IfVAHGG4IJEp1Vikdf1KbbHQTq+ERpkx/3eabOCms=;
	h=To:Subject:From:Message-Id:Date; b=hzwOMx1HAIcboDsSiquKx9+rr+Ov4AbKFmmZZxth1WRyUq2PuDV3kitjokyIAT2Pj/srwxWytiavPzvV0i3H4DKzH9w+mco0ptqc95LYPU0mJa1eyXzh9rtfYXySTEUnsGKjKNqzB0xJnmqb+oSac9OGbmBWh2mNdnlnCQsr1lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4wsIOxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4wsIOxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4570C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771494293;
	bh=28IfVAHGG4IJEp1Vikdf1KbbHQTq+ERpkx/3eabOCms=;
	h=To:Subject:From:Date:From;
	b=c4wsIOxgNFf/DcG78ENF3YS8M3XA5LUNE8+1SDot/aa1Dh25Sa+Gmxqw2n1pPp5Fd
	 5kBs66uX0Y8UL0cp4QCOIrzUnO70Sv+3h0HAcpySgaIBh80wjK55M3YSLvUbXdt6xo
	 vX1qMRJ7nVK7Igbcwszd1WE+/HD0nbvLPvT5N62G5Tw4KlytRqfZZg4AqOFUbmx5J2
	 6WqD7Q5UUSK5vecC7F8NPD8K9Oo0Zqa4FVEmOVSEJHDA+z9yaLzlmfnDNbxW3RvfJp
	 L9XIZOVEgB5onBmfzy9nY4KrG1A9p/rxfsewKP0zfvH3+lLqrZjeUjb68uLuxd8Xw6
	 Xg6gD3HveQsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB1E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149429359.13294.7024564187980553705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d65f8b8df76f91f88b701e63e49cbe8b45092b5938e8d6cfdb94245bdfea628
Date: Thu, 19 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771494293
