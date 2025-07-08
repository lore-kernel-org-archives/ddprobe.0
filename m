Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEFE625
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751942394; cv=none; b=naEf7f2w+ScIiUw+AG+rG/kqDHn4dl56kbYWGFkZoJtjFvXDSo7pdHyU+adXeZJhTcD8imH2T37wnyNEIoFQImME02a+aO8PBKnzzKMvJfzJAltKKt6kk/QGlthw4rGkWvOoe9HNNLanycQd1N+Bc7YsL0HbQLHlE5F2OLS2ZfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751942394; c=relaxed/simple;
	bh=HyA4cJ/jkHoDYjFXUUwbRz5A3ifPuR9VTTILbQfr26g=;
	h=To:Subject:From:Message-Id:Date; b=bdnExttoGQ8LVWvFM7YDT/wHcmBs1zkQMQcWG2wl5kv3iMtdFHNzAmREaI7r60K5SR/A+ori7E7rzbrDFGLKsdkkxvI9gj6uZKr0+pP6mXePrfJPVjwU6t6sLwmdRBmj5gBt9A8XY20gOGIcLSoNH14/AaBavcC3ywo3+bKa9rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsXhlmU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsXhlmU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4206C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751942393;
	bh=HyA4cJ/jkHoDYjFXUUwbRz5A3ifPuR9VTTILbQfr26g=;
	h=To:Subject:From:Date:From;
	b=RsXhlmU0t75g2XFYQPrHiQgEvKlJ8FTiXVOva3tC5E+7eoJLB4KVzINhikxUwi1QA
	 0ANG6d0dHwYKVvk5aHdWQi6EEzA/p1W+EVup2zBk0m8xccUFS++igTBt0lV7d+QhXV
	 yEqgrHPvhHDls+TIqAmaW3g4Uo4OQxt3IY+FfOSQErHjW/bSJxh4x+375eq18YYAmw
	 Tuxbv6rIZoQINLeKlwuBNshge3RModPZwj3oOXKiLGVxh/iD8FhhXy1/dc1GtKYifU
	 kY+/NrwwnoTVmKW3y88v4jEN0IDTXlcCE+srowJfuSjCGny+szgpCOUJ3HY1sdn5JJ
	 SMa7nsxQfXkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD4C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194239357.18480.1783234161861473594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672deaa5f4f381a5a77c784f93d43d62bdbee312f4d655f8199a36fafd3ec43a
Date: Tue, 08 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751942393
