Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608191A5B89
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744567194; cv=none; b=eCRhBib7T+wPTrL97/CxbJ6u/5jeRapsRsX6Cpw20M1V1OmsKZBa2KIXDFcAara2SqW42ll0MYlRngSrxMRWmlxJygkf4+w48MpxAcp1I3Zb08i5QAsEfaQPdSYfu4mh9RNxGBvSse51SKm3oW5Aq7LF0nzQpZ+YvR5VPmo4gsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744567194; c=relaxed/simple;
	bh=fWJjct2dQ5PQ7xurV5hkTED941G2ji+rJZrMMAVvxEU=;
	h=To:Subject:From:Message-Id:Date; b=egNooLmxYzAAE9QVt5xJgFjGTlWEsqZlD0hgvDIrwe+baEOLsNd3/VVClxm1Zc7JIjKtoUz1BYwugyqtrEO+jbIfSMT1YPbyAazJ5kg086IJbVrvhzZ3W+Wr7Cxopqie8nY14wPXHGz6qQ8OS3szraokms3ecJ/dgzD3XnuxUIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aso9uipd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aso9uipd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCABC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744567193;
	bh=fWJjct2dQ5PQ7xurV5hkTED941G2ji+rJZrMMAVvxEU=;
	h=To:Subject:From:Date:From;
	b=aso9uipd0oTVD3rDetnUBj51Xoo2yNdr0HFbf2B67Zij3fETxiTzK6lWWvgBp+7vs
	 2RGlkibvz5zK019RXQw3Lxn5heit1eS2UndqVyA/GP+szogUuOh/En05hvBpaupvEZ
	 0BOGcS/IQbTbpyVXEoLWZmacZI8jEi0XYKBPA4oslTvcNPecCuReh1Qb6ukJu5UwBw
	 aHuc3lycx58c1QkvMFpmOGpLtA5Kf7FVRZP0o5DlzGupVV5N7YHP308BSnzngr+72v
	 IEJ7S3ujlEsto4+MEwD2c2NRFvUGh+AcO1H5ZOICTN0RjGaaGJCePiv26TYbWROtHQ
	 X8eT2hwYd93Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96448C369B1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456719360.14741.5988533494596383603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6128f31ddccca7489479f4bfc178320fe5b4f8128f31806007a4a19a38c33397
Date: Sun, 13 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744567193
