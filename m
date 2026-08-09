Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E9913D51E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786239634; cv=none; b=uhmZUNoLkoryWytSDnBjtSGzktx8ff6t/QYhG08htWUVxaX/hAvl8FgrZI1ePKtIb2wAcsxVBnQQr72NOGiuBKYxoDASZiuKFCdvgLAfCvjVpG7Z+OhjeLA7yf3KEiAlBSaf7ND/g58gUFOTUK3sUxn/xJK32luH8+uwT1kG7ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786239634; c=relaxed/simple;
	bh=iyEgcFTlV7tMuqGwmEvuVuxkg0wESW5XFpWaXh0tv8M=;
	h=To:Subject:From:Message-Id:Date; b=PeUWLSE50jq0aKBQL2c0tJG7D4ZRDIIJTqC12ENOiKXsEq1zSWBxDE2D5MPFAqcyGuaCOnrA+suvRG2lNPSIArRxX6dOzzq6GarZQViOakvMb4irL5GU/FCUJWvVi0lsDdI3TPM/3Wv9L6QWRgakAlnduI1GzkQC4t5YQjt+lRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+FPNcvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+FPNcvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D98C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786239633;
	bh=iyEgcFTlV7tMuqGwmEvuVuxkg0wESW5XFpWaXh0tv8M=;
	h=To:Subject:From:Date:From;
	b=J+FPNcvQPBTR6+bpRqWF0dBVYsqkCmgqOqs9Ura5N0aBh9sLLQE7bid9QUUZKv4WH
	 /TKYGksKVxYwOEI6l4JQAr3rcYwsFwuEIWmEXf3fMyWhNDsbC4HVJIHGpbAmdlEOQ0
	 T6TN7ByzLx46GD6+TteGXe1VIujDgZ3da5BlbJGSuZVXCGMvFlOeNaQsPargoVeGD6
	 zimxNzmnIBWG1R2G6dfhZorw4MZKHLRW3XjYiribCy7jXJcRmQyP8wVdCPFPF8tcs6
	 lRwrB72pWTv4Qvqpn+wCThvaDQWPiKVRIlMrqXJLG4CEqUarGv6hyoSu29eSYo/pMM
	 SAK6+TsteRi6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF842C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623963368.7049.4093377440611150757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ca3eed77cb96bc13306cf33fdf3e18ba75f29bd61afc62d1b8eb61bbcf1bf8
Date: Sun, 09 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786239633
