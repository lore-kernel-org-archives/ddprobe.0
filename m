Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3C25B663
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756365594; cv=none; b=rAdgl8RQAlaZ8aItDMpTtxLsghT9o5s0+uAYzvoO9C0LwqOZhuiHo2d/rS+NnhfhpJJ3PEx4DnKQRkY38ttQGOyR1nTMMa4b03s6KIF++I2ksG2i6ulw2qppAu794d+pmr1359gb8Yc+U5ovlQUjnl2pRNAE0if8zj69Z+mOxNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756365594; c=relaxed/simple;
	bh=rR5tIdlAB0YDXBULL+KHY1wNU1lKI9Yl8qc6XydgKOA=;
	h=To:Subject:From:Message-Id:Date; b=OzIX/qDfhFuhqLpQVnh7DmYYSPbErzGterCFsXH2YTpCanI78e5LKgesc8+C6tN+/iMVkPrnhhOEq1AebcZlOSrZ7RkpYvLO0U6OPR3yGBxIf3SYPLmK6rQYFUChrtQKg1Hgf0TOJS3aE79GxkCOqylCM1+2NmKeoeWQJru7Jtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOnFXrZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOnFXrZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C836C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756365593;
	bh=rR5tIdlAB0YDXBULL+KHY1wNU1lKI9Yl8qc6XydgKOA=;
	h=To:Subject:From:Date:From;
	b=bOnFXrZnHYQw/3HHV+40412YHXVeZcJgsgYiXdCaFbjr0NHmdoFnkQEQ1KNVluMnQ
	 d+ro+lMJ3AeZNmPtCWd8Wkh01yVpLQB0n8kWNRDVplcFRCoSY1kI3BRJxX+ZvxpWb+
	 lIUMDc9cBBsgysn6uGGRrbTxf5oECjs6PruDHH15HXkU+VDLMQfLSEmtSAK3yk4dn9
	 ZdwNndYXxdZTJ3ku+mLUdCCtW4cSpCa8Pkxe/psipYBV2wYTmcSNwk2RVWf7mqAOc+
	 mNeCwDZAwYo9WeMUn7lul6DuOudpXAyr0HJZwPjsij9OgSd/lvd4kz2RCwj3A3qhb4
	 pLdRmoT34Azig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E00ECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636559357.21422.737189197169634544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945459ed132ae201cf22f787a6274213b4eff032774b50b28a63880d7081a6bc
Date: Thu, 28 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756365593
