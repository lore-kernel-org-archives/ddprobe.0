Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F0635E940
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781599594; cv=none; b=BOV47ilE+051bSaid48wtbe2XUIJwT+Fi/vW2KyjpSmCcWyspGewb3geMDVDtmIgHLyoDT5mbncs4jvw3Hca8Tiq2RRiDRo0EEbkzzepuD/tZfWgcWtpdl22BuXFCKFOc+qM9SSogwlV9Q5d+JLCw2tz8dSuqzjqfJwOZ/i9UJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781599594; c=relaxed/simple;
	bh=7rV757cxDrK2s3KGiaj/Rh6sZ67ary8Yv/GbDHMNjhA=;
	h=To:Subject:From:Message-Id:Date; b=fT1yyruqeu/+OXzfvrXnwdzQGgJz6I4rdqlLZmckBeLKLEYZZKf9h72jIsaudjIavVxn15MtLRQXem6nuDstbOGP2NKu5NLQs0j76fXj8DKgQI5rvOiUcjzk8Wp0q8zdyMOddXunibcDZSoaNY3c3mrRXdtxhl4s/iBxXZl+Pew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0NPlnqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0NPlnqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25859C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781599594;
	bh=7rV757cxDrK2s3KGiaj/Rh6sZ67ary8Yv/GbDHMNjhA=;
	h=To:Subject:From:Date:From;
	b=K0NPlnqWE03/Z5wHlYwPPxk4G3Bzw2TjzX/3EEyOvx9ec+snWafsTEC9bPwH0W/q9
	 BNpBFc6E3gQhHm+BCxFgDy5gkXwuqahX5XnKZT9QVpvhHknNjfXT3HbW92kNpam0TO
	 JyoQz+j0WPbLL164j7+ldXL/jPr4HYV23ZpQuEdGPnxWEOopNsVi7tD9w+R8Lmt5X6
	 EGNPxeSo+y9LGqBEPsIHOs2od//jClB8x6flgt7jNmCy0UBDNJIFG6KUI8KFB+eV2K
	 x4ooFmPirvmtdByAsZoAUuNHiGKZD7DFacr4lsuemGCChvo00p5qDtaIFcMupYnG+Q
	 vRd1MVQRxCt0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E04DCCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159959387.3115.17685879262694340225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ced75cae53fb1e13002600ab3b77eeacaf6cd024875adfdd8cacd79f39f74a
Date: Tue, 16 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781599593
