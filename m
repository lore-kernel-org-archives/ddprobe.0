Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD5033508E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777060654; cv=none; b=ckb5IbMQUkvvBzXLJnWOgIpucQ3GcGyOkY/np3Efu2bWH/Sy80WrvXVWQDogNzdPKyyhl4LGFf8fiRrdfUHi2TN027rTOgq+NQ0NPv5Syva/vLJaA+rxGFIQZF9HDyWI0Nu4KCaIY0CXI5eGML6lLUsfkLrS2icZfrpHscw74pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777060654; c=relaxed/simple;
	bh=lbdIoDxIvAGxAauVX4DD097qd8+CgpsOZ5jMlsABRh8=;
	h=To:Subject:From:Message-Id:Date; b=jD2b6o4JtDiqdSPRJJE6I9a2AN5Ds8qmi4TgrZPrbe7Xu1EkstXpZ5qM4EbY84gjcE+ZPnVxa8UjihQ8fn5wHDstVFKXPbw1amNQqOVlzZSlCII3csXEivhk7KOS0WBeLKpbjCHACwrQfqCIuw3hgZMR0ZJqC9K/0Lm3pDYBzj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwsJzh6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwsJzh6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0ADC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777060653;
	bh=lbdIoDxIvAGxAauVX4DD097qd8+CgpsOZ5jMlsABRh8=;
	h=To:Subject:From:Date:From;
	b=SwsJzh6GDRKO1cQWK8EJfULD01sXKt+W6glDeWIO1JK5W8a/WVa/wk7PLjQ/fpDDe
	 tkV2/ub3u60zol6k6PYOFZp2rLU4sZpJU1VKl9TrxRNLK80M6Re5Efbs4/m50+wZwi
	 5cegUzVZIDbIMnhoiGasspu7OmwEUUcC25+WJ0DbM7VHydwvXhtTZsxjmFX9IW0yr5
	 Od71x3/Xi3PldXa1ntS4+LbeUQeBPbMLYtIBUTGQDjyLoIFc6aSF7Zz/TaHDR6DoIa
	 WkdHT9BC0JMhgdoKeCyz4IFxJf7m9JbKMeyVH9hunA64F/FtZbh0XfdCqAZsHYHB7T
	 4bDgzxQThgSEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3BFED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706065368.28702.10781110982644736505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce18453383f426a56f245ba19fc02bfcb74c2933f4beb2bfcd1a20e2fc7eda20
Date: Fri, 24 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777060653
