Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FB1DF59
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770177834; cv=none; b=W6WvoKbjFNGeY0Q0syy6ChK6IfjQaCo86y44E4x9Nk+2ttdTUA0NhG/pqOSi8OG4sAWb/XVHaAewSLQg0cp46wKTvBPwFWRHX9fhowdLDrmIPBnxcTl9TzlZ7N4bnPvTroKCz4KGwIlThPWJMkeYKaLbw/KCeyiaRx1M9gTzI7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770177834; c=relaxed/simple;
	bh=HNncMdHPHakBhfNFRwfbnIlkmiGN5MAWyNDlN6UPzDU=;
	h=To:Subject:From:Message-Id:Date; b=IaWu+/xbjM50UqWQYKeq7LWqXAvyMa5fslLK9p8Gb6iZ3Z2Y9dLuoqMAkKIj9h+oU4HuX9kPOocB3mfl9kqSJsiEFuTYbB6GKhP1/9Azewpwp1YW3EP4cLRVH4wtWPWf6ZniV7ia9dHwh0lNVROkLG/hOOq60RSoOpe3zN71m48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okSHoDt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okSHoDt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B357CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770177833;
	bh=HNncMdHPHakBhfNFRwfbnIlkmiGN5MAWyNDlN6UPzDU=;
	h=To:Subject:From:Date:From;
	b=okSHoDt4okkFijZSff9+8WXKcrVladlA9QkmvMQP0aDjyQBVr+oQ8BI3g+moaYJGr
	 MORPFeFBK9XQG+NaIFqslJFB1cpaWHskRRo3PeA51D6hH/B0mtQ7TNq8BdMbYdfpJD
	 OXAw1LXTOtrILyFIMUl5Khx3qtgluwh1FEVC7kKioGeHP+maqOYxDTcsatVIgQBONa
	 nAMO7NDmA1+1qq54sQRe8leZQU0RMMmAbjALaouhGbl2hFmJLjeapWPsAk8hSCuuQ1
	 trS+/s4YEzWOywe/GdkpHaIU4PGU7KIn7f4ItAU2f/lczhcX+ZfF7rT/BwbC9bi2He
	 wfCF0pys6Ce2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E01DE8B391
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017783361.24324.15477524330598396199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d28accb1a8c910dbbb9fbeaf43c751acbf60f2e058d3e35f9a8f85a9a77d101
Date: Wed, 04 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770177833
