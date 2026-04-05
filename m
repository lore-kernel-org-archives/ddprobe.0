Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE5D625
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775361934; cv=none; b=iX6YBYC7bdb+Un8RZVYNK5bGFT8bXwF/BHkqrXkLpf7cy11ew5PCOg1D68AG7E1aXl0Beti8lQiJdUL2phMRQuM9Rq0l8qxVO61UVPTk5I+NBFTmjL1m9YhBEV8/rb4ZepjVUD9U58v29pq4FfFEVozdOKYugPEjw3t2Xpr67mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775361934; c=relaxed/simple;
	bh=t4Q5CmM1VGq7yRpwRB+sRaxvtQbtLKjQPSITdiFhfrQ=;
	h=To:Subject:From:Message-Id:Date; b=RYpFOBssqFD05jxqqbqWw1F4rM/QMaKUv+Lo56ZukayQ/FrqlNTBoF63dlRwyeFkhnNXcK9s0IrmtUxN2pdo+IY9BrAb6/09K0QExhsBVWMvVuaTgxiTLB0vTjxYdHrx71v2y43MihlRv+mkSPYg3comKGijTpL6JSA94HGxZoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTBbUCBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTBbUCBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27B4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775361933;
	bh=t4Q5CmM1VGq7yRpwRB+sRaxvtQbtLKjQPSITdiFhfrQ=;
	h=To:Subject:From:Date:From;
	b=NTBbUCBEvksfq2YthxMf9gWWxJvGVKustySEgXZag9dq71JeRet9oMe137muol2Z9
	 dUNW9QNcZ2KChzgGZRJB2gmU8TgfKkO/AvGENsTzRUX3Ykwfrg3mY0cMmXHKIULrXM
	 tnKz7rqBCtYKJOf8z5oo3PmqjF4Kp9IVRvXPg7K4KLSQW329s5nBeaduO7tjQzu2r/
	 fimfFIGOMbLwridU69x4bspeD9n2lnC7x7QkEaKRd0yeC+gzD5hzu6pQHOY5YPZ2vD
	 v5JrsL1TQLl2XYzFR0EdR/3w64rJzyGGO1U898Dw8LsKCwSX3nVLoErTYydPOuAK0K
	 rlcMbLkKmiapg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A16E64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536193368.11624.8082751654083031348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92a62a74b436ee6c9a761afbae513c7dd8be37d520eac9d801c9e6f56337e88
Date: Sun, 05 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775361933
