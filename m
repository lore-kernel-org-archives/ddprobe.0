Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2237F22B8B6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771111494; cv=none; b=LEmrB2NMBMEZNRpYcUvlL72r6F57UdiiNiWXSNccjOVF/cVxOYtc923Z07jMOHrcxvwrnh5iwZBST7yKVWuErbbH3expa+YZkvuhn1366T0Rvq73BeHB0Azxbdj82hZp895qh0G3273Qzg2tS+ZhBZ+KAVrgcrMLFcK2zrl91Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771111494; c=relaxed/simple;
	bh=gujVNUABixqlpnM0z8X6TUm+gzGmaFL46mfuM1d6pnA=;
	h=To:Subject:From:Message-Id:Date; b=CvvTH/s8JH6YsYZALSs1v8342JmMp//0d4aSY0TfyQAi+1WLQo4Khi3ZPn7HAzwJxA6yO9GWyxm346ZeVoPW9Vxvz+9arveC3jxuwLunsj28x5v3GUGvUIz49kkCK1zV+tQRoqyeBCEOaMCxdI2YW5fGCwA0RVW7YOj/xXhKziM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIu2/EFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIu2/EFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB45AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771111493;
	bh=gujVNUABixqlpnM0z8X6TUm+gzGmaFL46mfuM1d6pnA=;
	h=To:Subject:From:Date:From;
	b=vIu2/EFAqhskOrXhChyH3RuAI92G48w+Ae3QY7/9MJQw13oKmic1RhDCUvdIp9RUV
	 yyHhGp+yVamINPdUj0NWj4+YZJnQLtPxuPBRtqKojMFgZ1XUi4+fHAr0GXpHiccYdO
	 iXx6jOM9X6rxI8GZlzOXo0OXUvUmwZW36cbzRatDt6w3ECvAUrxADuzWGN9EIKaaqM
	 8OoUfk5r7Ul8HoHikeHy1v+82KQHCqKLgvvPkHWP8OAPW4unNcBMguZnN5FoEQUI4D
	 qElJznJJ29w4dajj8GGbKTwTNuhw6KtCqgvdt3owNcebLCfOWBUvZh1nFOVDmbOp4R
	 hOxZhRCVf4toQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B05EF5857
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111149361.19070.7060313307680574070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab8ad7b1a4e27f0fd9cc4cf0b8bee4776e2b12809cedc25e97a007b4ef41ff3
Date: Sat, 14 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771111493
