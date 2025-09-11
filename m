Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F928E3F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757550594; cv=none; b=EbJQprybunn7Abd+AGdrgb14Mpas3jlgkXHlMogM7cUjOuGGaQRm443HiTs89L1caO+RzKreHNXqXcbp2ZyavttNwo/G3svFka51U2kilVWpwy2j8X9hv29DM7R6WgAaXRVxd77mYJHEjTZuZiCGWiwZ9us/VgvxUY1axrHnFRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757550594; c=relaxed/simple;
	bh=V4M4t+ILZUEZ41Mbuy5qVea+09JEbJlJML+tRJ707Qg=;
	h=To:Subject:From:Message-Id:Date; b=aEjs3zTZ8CVyquR3f9UdLhKTbRV8z3ufoOwrxm2C30qCE6TZqHytI5uf6+vd2I56qqfdqMZfdNvyTJEadJdpDNPtQ4YbjDdcMYFeo0CDxKxGaJeLIVJJHRh+loVBwlU0vQQaBVgwgJF11bsIgVmS9+VZ3g1klQN9ye5oMsd6N2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDhfqHkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDhfqHkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0799C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757550593;
	bh=V4M4t+ILZUEZ41Mbuy5qVea+09JEbJlJML+tRJ707Qg=;
	h=To:Subject:From:Date:From;
	b=oDhfqHknKuJ1jXfM3W+St11g11LgqkOyLhI/L5bDhEJEteSK7dQ1oWzLFTjMFpIxD
	 0mgi7/Balc3ycrUq5etgEudaJ4lWrZ7vTRiw5OZqh/Yfu8rhASDRUZHDawb/H6SyYN
	 CsMltUUFSFP8KJ84vcfL026p1VN+VHSfFLCFOPkX4sl1Iu5y/DWPR47dvttn1uuG4D
	 LQe6I4itdyAAOUFQXPR4sC36CXB/V0ku0sB6uMbgFXDrkntFrUnoWLWQZC4nZD76mN
	 9nFynmbsDdEPcYLAWscya1V7JO931pRC6zT3qhonC+TvsGMxbXN24qCEFDvoDYVZAz
	 ZTNJxkwZXYgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3FCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755059357.1700.6553791263471760625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1363ba84a82fa35b817d14f5fc8efc3396b554bc2640a276bf42d96da8c94479
Date: Thu, 11 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757550593
