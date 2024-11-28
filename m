Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBA6192D77
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732803954; cv=none; b=n2BEo+agAehQWMmll9qBQFL19tdvT4O5Ha+2Vy3jbxG/qVUj+Em5Dt7VzJRTKRfLVpDjrRSMdH1mTd74MJv0r7nvvxU/T01yr+NirJdiSrsdXIuH50q5+hpQvJF5IWrGtT410truTMY7UOZFaJp5WxjFy5qebrQnnWDBvMTCw7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732803954; c=relaxed/simple;
	bh=QasmeBdhJkkiKiebp1ulCeQU1GpxwBj4diXPZq6DnaU=;
	h=To:Subject:From:Message-Id:Date; b=a7tfsEBMgMAiQHDd9VKwYLyjv/SzlOMva3S/Ua0c7LkutEFEWRiPR0LR2e5p/BYCcmnkZq7NG6vJwxKjQqBzBQJL5dVFbRUXcNGSCeLs7IaBuGTdN4wGFWKlGlirvZA+5MwWG1hN5CtczUdoUCB2rexrJGpYpvvvnAkv2ywiV5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdpXBKTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdpXBKTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81A2C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732803953;
	bh=QasmeBdhJkkiKiebp1ulCeQU1GpxwBj4diXPZq6DnaU=;
	h=To:Subject:From:Date:From;
	b=DdpXBKTWW5Go1W/cVgDbEbtpUEJy86cSLb3iulKgpLZJuwalj6UGLAhq0H335w4ph
	 3hte+ILHaWElaFxsAT9GpUVYZGS+pT5GPCYvl3REH9Kf7psXw1YefWcxXoVVx5crlT
	 R2Ys7O28Vovho5qjtk5D6mx50Celck+OZq7nwyAP4YMoClGNzOdic7uZCOEyQbqD9J
	 5xIiM/4wDlBn7Pv3HPeP8c9ScGdCoETU9ZJ59eYMSDG3tEtgXdjlYyFLT6YZaPsPvw
	 bfeK/Q3kAMW7GtuTAQdZvo28+1bV/L7aJJEfczJbdb/i2dIoDzOK9UyrwS0pKFYoz3
	 7Ul49MZDfHcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D136D69112
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280395363.27184.10621742295804862386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16627e472f530f08b2be8671a7371d03a7aca556cc414b10fd650f67b3457238
Date: Thu, 28 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732803953
