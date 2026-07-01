Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3520345000
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782947314; cv=none; b=MnJfvsQtxHNFr3hIkRb9299LwBc7VAte9Fq2FvaeWbm/1lIUrXtZZpaFzlCiV+0P3KGa/NJpUmm9tfuPLTLk4AUXpuXubOiFEJwVDVKxg2QY+neWnID4sUX6U8PIpyuvbhAcYWna+lnabnp9a3oJQIWKlLnXZz7LPZzMZpO6XPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782947314; c=relaxed/simple;
	bh=8n234oiJW8kfs8jrWujUdNcR7t11U6tWyZHTal10Uok=;
	h=To:Subject:From:Message-Id:Date; b=Lytntum7WSWKX4xPSLOYNVQYMOP9MKZkAWN8V1CIC+B/Liwq1b8QNBXFwZOcZSZrwycTTjG9Nye9JFKZC+WYCnHHkx2lW7YRSSdjbemazXC0ZJ9vkCQjVB0yy352DkhwmnYkO10hQFDZIp5DDJ7lNRStGWaB5r5gtW4Lp0oqzCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hooTa2Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hooTa2Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CF2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782947313;
	bh=8n234oiJW8kfs8jrWujUdNcR7t11U6tWyZHTal10Uok=;
	h=To:Subject:From:Date:From;
	b=hooTa2Jzf4a+VPhefshxTfBlxTTEPx3jL/aTJtS59QfA40Srp29egenE+w1IDreBi
	 sC2a7SY6p+OJMVWp+8M1/UE+lJJEiqsG+txR2luZ4Fmj1tmvnerHGFIxlgXbHMY8b/
	 oBf+3DO7yQoMt6KMMtfAyiT10mRTFwKDOlWWs3FYIQF4gwYdTCO69fZ+6AQERVdjA8
	 w/b3uybDQECqTexGt6JC+3H6z+ee4gETfBgzFe6s8w8psOTjhD0RAHeDnpTtG7bW40
	 8V+Sq/lz6cVyEA0Tg512H2eInRbITZJKI4QAodBX6cTRQXgUPayYyCiAoJ8me6sGcc
	 CWuQVsliE/vKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F2BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294731368.2308.17572751672874087359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8878ebd2cd6e52544b528119a484676730ee96c20b2632b9a1b85ee9fc190127
Date: Wed, 01 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782947313
