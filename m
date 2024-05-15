Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7745C8EF
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715784143; cv=none; b=h+UP+w/pn1EtvGAY8t99UKWscWPMON8lV5VNkTV4ul36DxVQ5XjWcZBs12zm0Lgv+OkLWwnR0OvZqQvEcGquIf63kULSrrjaItTB++1/eceSn9NBcwo6wjpvOQc0ZciHNJx9uKMH79sGF3/LYNFhymrLGcqv9oRlyZEQnv994hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715784143; c=relaxed/simple;
	bh=sbmP3XJDQ9xPXYr1tS1AydROYeP6TolvpSzQcK8LVgs=;
	h=To:Subject:From:Message-Id:Date; b=n0iqYK28WGEv8K99YyYqcPl3CDe29GK90bGZzHpdYjx6yW1oQCGmef88NvQdUQe1ObzupVwOV6AKeSQZmg1dMCFKLBzk4xbtqoYYzU6VDU0mUr1VO1wtfVXg2DvSsBu/xGj0J5JzJkVF7InkCqQD8KTloOHsx3JBYyUbU/9FrCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAKiK4hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAKiK4hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DE3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715784142;
	bh=sbmP3XJDQ9xPXYr1tS1AydROYeP6TolvpSzQcK8LVgs=;
	h=To:Subject:From:Date:From;
	b=DAKiK4hSevtpVVmcSd88YwMhlOFzRfMFAp5tMkWehh7zvyZ6y0t845yEMWlTir4cv
	 fXjoHvsh+AZJn3Lyo402K9c4G9pppaBPhyfCBHp+c/6qvoyeZ2b6h5U8mgBO21qCAh
	 e0UICOVYERcMuRT2A+RWqm4h/CbtQ37asVYZk0Cb2Oo82hhg626+JWffuq/hKmgZ81
	 oifjgjrPCHHGDfrvD35O/+60Hie00+Twkla2oJzUNDEv2IWtPdb3lYuoj6fSO3mwZ2
	 sJVfdcIZ61YQshP1PeviGlC5no4npRECNCXuL4FIBZji+/jtVWy55pqvIKaPC0BLIi
	 5qQphkuf4W4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1637C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578414278.17169.12439272335732766670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d5f267716d935e8386b7d394627a8c0aaf799496cd31fb517ba04ce933a713
Date: Wed, 15 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715784142
