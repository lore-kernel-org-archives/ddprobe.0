Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149CD1A2C1E
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716702263; cv=none; b=aEM6P9iQKc3+j3bLMuFouAa1OyEkUmPQ/xa2pdPBufwe5klzmD8jp0IxKEC1TMP7fvzMjv9lhFkyHs0oIM3vKjCyXvWHFtR9VIUBqafi87bSIW4sTG9P1Wsb/8Zw87Eg7KDdfDKYHxfCjQjywpl7QAck+X+IKJkMJIWTW2V1a+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716702263; c=relaxed/simple;
	bh=rOtBtXUPTQk1KnotXAMfxl6fkv6zutzJygu8fpbMl3k=;
	h=To:Subject:From:Message-Id:Date; b=UdaZyV3ynu2cmz1WoYK5AyjxtcmOg70PIfDNyaNwGH+GgDLhq11P+npCDGWtolGxevIuxxBUjsOqZOUl/tgwGicl7UNIJCmRRJUBfBeumaCt5j2qbMBxweaY9pn5T+fkAp7pIqAUq4T7MQHNUJbkTELO2BbGMpT4HKCCvavxJhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFg3ef12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFg3ef12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD6DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716702262;
	bh=rOtBtXUPTQk1KnotXAMfxl6fkv6zutzJygu8fpbMl3k=;
	h=To:Subject:From:Date:From;
	b=JFg3ef12RUiWls6PDH6FqBzf8lAoUXwSsHXU9o0tV2JSyR4Z0AqIeZmxVS+dQ0T6c
	 D/sWTuwBTJOyOrqyY5fEogfKAbUIh6quQWknXiDJPMi1MaDQFWdM4MpQsj8jtrfKKI
	 VFVUJlgspy9hIepZP4iu6VlRyjxfWOVuIk0lcHkeU3cNjJYp04RUf7WJtHg+EuDvH+
	 afkhNxVBJtzhTE1yqyQi2cjII9bkkBCxWGczpzAyp27hk0cYzchVJVjIod30EQXkhh
	 lCQyryiiAumiplRGvxEonCMqQjzwOut/XHtwPWYH1BMLdBvO/MW5BlnRVgQOZ5D7q7
	 eVr7JwmhYt3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9930C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670226278.18222.11928852268082678473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf5a2ff79b5d062a0d97def14086da30c9d341cc9134da5a4a107d4c9110255
Date: Sun, 26 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716702262
