Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CB140DFAF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775349934; cv=none; b=D7yzJMJOLVXRYDfYCponW/G7rG8+8cAPJU2j4C2cHV7KicGFP7kCLK1pGMMK0YU2oygabRHd8DyWx2w15Nk21AznsDHzgmm1/lp4agOEC2smeLkbPrA9fdJ8/uNUcs6Ehs7ojp6ESYa3x1qUAe4MElkdaxwYDDUE2u0xdRUazJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775349934; c=relaxed/simple;
	bh=yvl5ni6vCMhzkNq3Ji7rb7fi3A1yzWimy7Gwrfkh9Y8=;
	h=To:Subject:From:Message-Id:Date; b=GJhwkrbMTXwbfyg8YO2hy8Wp27AtchoF312J5zADD7yT6IYV2Jptr/Cw+3dnE4lI+J8HORhivekF8AH5VOpiUymPTNgdDaN6DloWKg21HlUIvzcI68bV7p6py8Gkj8XIUxQz/oxwQexyMnyYhTGmbqHJTsF1fs1qzjssZ9C9aZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkJyUzvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkJyUzvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE630C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775349933;
	bh=yvl5ni6vCMhzkNq3Ji7rb7fi3A1yzWimy7Gwrfkh9Y8=;
	h=To:Subject:From:Date:From;
	b=MkJyUzvkv5chomQ+KyuBKgi1ZiG/KQUBOhtIxewbZSOv4de0JXYWtpAKfAqcvx6xE
	 i4e11EJwWbOM2kkHLI7ySqmPsQ5LoL8siioHCHBWu0k1bMEjw20NFMJn2CQeq67afn
	 bbcTllUkI90iG2UC5dEWm49FPWJ4TDuWxhLiuGmGSf2zdlvW4satBlXzAT9HxMgi+4
	 HR0VBEU1ePmzJw5TVr5LJ+sDv4HmLYetDSOW8dlUQ/I6qJtpdJQO++Da/nYySHgECe
	 OeczQ7pcm75dksqVKGkYCeXBL1gGBUJmAtkpApXsE1RvHREMdShM6yUYWeo5YGHZrK
	 yA438SNUzy42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3DAE63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534993369.15360.10938188428970814838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18eb2407a4c517348f178c7cc848805ad5eccd11112dcd998bc1bc84d576776
Date: Sun, 05 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775349933
