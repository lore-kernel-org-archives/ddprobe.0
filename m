Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582EB214813
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789366834; cv=none; b=Jg/LUgwAMJaHnmrp92xGIeIH6viWBC8DTO7WfU9pmPmj+xnT7ZC38geP55JXNjn86z7lgYzVRfe2HQMkHDfIQv6GdkWEOxCtReuKfxUpHfgRpYjFUqrnQ5UXwKSWROiQhg/cmNpRH5ihpse/5MrF4ymBYYUAdrFg/59YgjviE+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789366834; c=relaxed/simple;
	bh=vXOAILWxKapA8x/ktwC0X0p5Ho/R7gh3XONfMgfVc5I=;
	h=To:Subject:From:Message-Id:Date; b=HOj8fdYdUmCtJh8pfyPjkZEM34lvt4CI4lr+FqZ6YSGiMfy418L5HDfS7ywbNnGy/m1/vsMRPRPQKkD+4Fd5tdZmfPblAz0idH0aH5+p6OhSXmYcq15XI9oi/ZtB4zzro8irfRLAcmkMUgjTMmtX62AOtT0KxCtUEtCa5ZuUoD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2Lx5LSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2Lx5LSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD41C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789366833;
	bh=vXOAILWxKapA8x/ktwC0X0p5Ho/R7gh3XONfMgfVc5I=;
	h=To:Subject:From:Date:From;
	b=e2Lx5LSEPSi7MExrnVOGgK9j9cQfrpcmiq/fqpr9ilfMhY/KQ/MfgcusXrglymTWU
	 JtOIyMvzgO/NDURt9gFUdCcggXG+1dGo4wzYHlAqfyzeJuVH3k54sLfvlD6U6U4y8D
	 AnOWXDF5VMJ0/kEimLsj1k2AGEPpejB+o0CknKiOh8GDPLuxyGouwWR67KCJ3o2T7w
	 IbqrB9D/rQ9Z/BftN4hYDTVyIaoOvCYgvOLR6pEogE+JGzN3mKF4D7NF/BdyZxQ5IY
	 SG+XY6yYB1nuO2fTXI7iQkNVPiQI3uhk16jZ8jXA7N6BVJdf56X7Vk5KokjTRy1K1/
	 gzY3Lbq8IH+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF6C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936683368.23076.5269897539497433235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed21585d653fa390e14a7053797e5cec53663ef100ce3b5f6417df6b9bfb3e5e
Date: Mon, 14 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789366833
