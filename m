Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE028504D
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756369194; cv=none; b=uf/MmmoEX81AEEOD7JHpb/2FCXhKEORigHlwtj4tC1MwRgDgPotHe0S40zhnBzkjH1MrhdeZMSVCSOu7bLaile5kRWblzOF2NfsUBe/eZpHe1ukGhR9XMdskqD74hGz99CQzIWsUqvy2dRjiPzSictcf8xklg6CXzd8l37fx8Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756369194; c=relaxed/simple;
	bh=oFg3Ycl+xw+VpymFRcVNiRZS5ei7pQFb6ZCEQouetNs=;
	h=To:Subject:From:Message-Id:Date; b=bEhyScz3jH5fGem73/JYJYFvXtaICiPlvb27TPyYoXAxlbfNpedDnvSxrNmeqWEvJRQQv3KgyegyBtVyuh9ow2SX7E8b/FLNdcOOHgcX1T7GhU4FHFX8unHq0rkaf4a/c98uE8CaRwStQCXLIPmOZ9VItGkz9Kh6B/4x6/sWSEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjogm/Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjogm/Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756369193;
	bh=oFg3Ycl+xw+VpymFRcVNiRZS5ei7pQFb6ZCEQouetNs=;
	h=To:Subject:From:Date:From;
	b=Zjogm/QaN5HXBJyFFBknmxgACswTFKuhiOX7x8/Hfqv68IXT67C9HEL7DQ+maCBh1
	 q/KoBwBzvYW+z84VEYvqlrD3atEblmjrHlUDkdPKkk1jL7DfvZTrrvWKNFTWeCDLQ2
	 PPPWDhmYy0/NCPtTW5MU7E4vHMn53zeQg6NbejEqFdRvGI7dd7wip8w0lnZqcI5yK+
	 nvp9Ye3xVwG0+nVqAx/1tQu0O597MkgXSwszmYBLPjhvzxTd1IGLmvZ/QXoE8BThEN
	 ok+DtqWUunrh7u7ctBo2cnah9TnMJZUyGscWFTuNOMwTv4zKSGC2xQ5hjUr4UR7fho
	 3LetW63N08pQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7AC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636919359.13984.11896226700947332450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaaf245a2a8d47a791336db7800b19ea2325f0beccf6aab9fbe1451c09aff0a0
Date: Thu, 28 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756369193
