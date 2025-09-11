Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D071E50E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757562594; cv=none; b=J5YpUGFGZNKj1dfd+N2Uoii8LfPR5ZZAYihDAOFF11kjXbui81iZx7NjwvtCelSjMZzbLPNj47/y2B1AE7DeVZwD216619EYQaphoSN0+KwfcmuW3GwegEYt2xkYr2gvD7i2iP9oHCUKPvVaaw8VVJ0scEcAyeOYraFpm3Tx7zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757562594; c=relaxed/simple;
	bh=1uKQC6Ws9KF5toj1ZY/1T2sR67MrOrD1a5jwkScESP8=;
	h=To:Subject:From:Message-Id:Date; b=kT0q0i4n5PxDwt4RNaOBtpIaQjpu3E7ERbf1+rokPgYnljqEb5HWqD5vkpbUVYB7T2A2U8xI8H+OOKDCzvw1ky+geKXBLHkApIOoEknS2n8eaLJh8XOHLnMdoEieJWVK40OXAJ4kV8skeQLfC9Qp6D20LaLfmLmI0xgtWc8Shaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG0jKlhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG0jKlhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757562593;
	bh=1uKQC6Ws9KF5toj1ZY/1T2sR67MrOrD1a5jwkScESP8=;
	h=To:Subject:From:Date:From;
	b=tG0jKlhpWNBznaID5nft5Ww/mnnJPkrzgh5ji0FRWfP35ok6+QZlzLsZKfP40o+Mm
	 0trAChwmfoaAlJngkQgeTRZAxhUNGZ+mVZNvt9QjUiK5EwZ69H5lF9m2pbTs5IzzjL
	 O65o4RL/womjOKDok9c1JsPeu5gbJPIJZ7pmYsehUVcXfuXvUhK2d8x7OSYIO34yAw
	 0RfOCdaQtX31mlX4BlJIzwXUXd3CJEsqqRsPUSznmGPkY65iq5T/P/HeimLxDbMj71
	 xTmJoJa0iP9o7P1u54nhJuBLZaOQppMV0iVvCToe+a23bS3FbF+w7CxlG9vOcwGAXH
	 WWIMU7bhYQVlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A4CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756259358.30509.10864536512500700161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48209a27f7eecf6c8b2cd17ab3fa306972a03d95d3781337992cf62a1620dbb
Date: Thu, 11 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757562593
