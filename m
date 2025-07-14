Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C8722083
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752523194; cv=none; b=jMsif0/1pDCSgi4/8r419f3b6gz2q+JH2J+9sp2lPz8b4zwMD5zPOw5Eyu4Aa80CnCqN5T0l2vhrNuDbV6OWlepwsIJqQHVwZkRv9Xnlsrc+m1nglDq/wD++jAK5+B3Xz7d8DR6a2YZkGtnhNQL1HeZeQ2BddDFksydqzsbwjtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752523194; c=relaxed/simple;
	bh=nrwcJojZZL1arNh+wamRZVcfmKMn86z3phEWZXZujGQ=;
	h=To:Subject:From:Message-Id:Date; b=SE+6VfF2eCPJA2m0/xN3550dwLxXGpp0j6aFmfIAjGPE5xyNs6m3U6T0Egglf8/Rt+MNwlVidSqa479qjLdaAd6LBXfKyn2sZl8hhrHBsq+sBwLx86qeRv/IQjRm61uuL5QbO4jCdrGzJQFI/AwHKIq9Cy032HSKjwwtqlcTH3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qy4hRbS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qy4hRbS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752523193;
	bh=nrwcJojZZL1arNh+wamRZVcfmKMn86z3phEWZXZujGQ=;
	h=To:Subject:From:Date:From;
	b=Qy4hRbS1Dox7pcM652irAlr6DC77E9phliTJ2+QjMaN/yLZIy7css2eKaW4B6GXz9
	 NIcTn5C44x0fxA3mhqmUzulHDkhTl2jWVkdYPZEMO7mTgGnVvqpvYmnrYMHpvOIQ99
	 Vo8xPGvZFd9VhpEwHfnSEgNTbMdBZD5k7RJrsw2cxSexmTQUrjM5quDfJEgJEdOt2C
	 35StqS/hCE2GliwMb3yIjMiRmrFi8hWLWYNTfMYXgNDE3kKc/+y9zCFUli+MjZLTdu
	 UJcdgX+mMW9Ds72GtidQL10oa3QftRAKD0zvYWwWMlzTot96ke4N/G7gnSX4l2IBwP
	 IEQ4ffP9YyKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB0C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252319360.19028.13277948791305113395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a3221f2755559edbfcd68f2e6d98b0115efa990a64ac84aceb5c81c54dfa4d
Date: Mon, 14 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752523193
