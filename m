Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6B88634F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755977394; cv=none; b=fS0SrABfGi7f9Bql0p/zjG9MWKzpqNeNkmNoRQe8DkXJ1FebWGyoNhSeAkAIi6dgxZQzT5LVBiK50p21Rm9vWmeAd1NnGC31gC1iLcf1Ru+Kez1a90ohGRacyc8EbtO9p4XqqMwWuyEs1+tYhRht2ECvUt72pdxd1lNrrC9nlh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755977394; c=relaxed/simple;
	bh=qInTc1ejOUBt8mPK8377ml5sZy2fgGJgK1OhABHZ1Ak=;
	h=To:Subject:From:Message-Id:Date; b=nJ6ONL/2+NHKI7HXxyRvcBZSfzzxrrLKj/uDhwHq1fB23I7oWUaXfEBVk2Ma4L2k+pUTsiMDkYnkt3a3HeZZCSnPQvP9a8y9wcQJBYJ4ltrfiQ/p2qAd4rOZx8nRGAZ9Dakafb4XFXd7676tY70clyGA4gbS6BCWRjLK5ZPlKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB1MmAXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB1MmAXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755977393;
	bh=qInTc1ejOUBt8mPK8377ml5sZy2fgGJgK1OhABHZ1Ak=;
	h=To:Subject:From:Date:From;
	b=FB1MmAXGczCgu9Y6xuIvC1wOJtGQ/wZ5xy9B+5Yz3FNVOWI1EL1mPnXOvXs8iHTRc
	 Ou+o22gs77bxvYw6DdPzK5TSJNwFz4nJcTCrcvdpST3Xu6Te5WbwhIcASxNkJmAaLR
	 aC2DrzQzI9srzwDfEIHeUHK6qr8OWm6Z6h0Er92S0XpV3aHmWG5OugHDcOvRWI9b1A
	 i6mz69+z42nkoOb6J2j6XCc0IHQCTtUVdi5Ey5GngkPQOoDUolFDNRO5jaQLNjZDL9
	 9XvkOS9tf79QwSJpTs8oaZE5Fb90xhFp+F+FMcvB284jsWReuOh+hxU50acn3o/+XP
	 OumuP4flT9rew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597739357.9396.13949736916981616775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583235b6b1ed0fa2cd12b9452bb41c88bf32dd077fa4b77d89e6c7b40c4a5e32
Date: Sat, 23 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755977393
