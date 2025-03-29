Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA4B4A35
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743221394; cv=none; b=kySCBF3hfOR7E/yl1jTglx6fhNkWNtFgOlol/iQGNDiDxDa6CItIOQHnYWfS6hVqyHmvCw98yDoNnpx2OVkyi2yIdp6OU++tBhpwUHAR8dlMFwxkH1onLJ5NvGz8sKZ+UNU/KsK2zaqKYwZrg578wsN8GPXjZCSLADqXNevhWss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743221394; c=relaxed/simple;
	bh=jZA56v9zego+AyveBxR0h7y/R/mGYje52c9o1TZBPVQ=;
	h=To:Subject:From:Message-Id:Date; b=cIpHtlO/fulLCKdJ5RzILVFSFSjgmV2fy0iy4j8Ci/92Bn3+Sm1y0qK1QJtycXrxmwPrtn2SacFnceTJxs5V4QaNFXeevd4n0ER0iUT6y7Xk+1DKKrMPa6TsCLVo0BSfgOhWV7hDa4lYH+2ZB/tyk0PSI6rRbDA3sfQ96r/VLmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su78LgwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su78LgwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3821C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743221393;
	bh=jZA56v9zego+AyveBxR0h7y/R/mGYje52c9o1TZBPVQ=;
	h=To:Subject:From:Date:From;
	b=su78LgwDw1meEnEdzahb7Utw1XZ5ycWvz2SiOQpAPnDJMW17MhtrH2QYgVyjzRZP5
	 81l7Y7hwGldKHbDvMvR2maI+XTkyAtTqWOriV7qSckonUg/t8gLNyu/S3ugMIie3Mz
	 n+REv6JuR4+fNMSOkAf4MAsPXQr8fLGiWYOJxih9QIT7GAgfvOFlczRbdkcuYtMkAZ
	 AN7Qi/9OY4sp0X3La3KEh8M4hna7q6oeN/nI4d1NoFePWOza1+GdCqdlYIZ+Nal1uy
	 Im5eAhEVnsmfs71NC9KjFzs+OvdytSFkWG5KVnnREKsTCU3Oox8CImL+KXthgJlbhF
	 PirY5aj4T7drQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AAAC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322139361.9593.5728809261038583816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261d31a8e5a1931ce29dc715edf866a253303ac77063d9f0720bb1d638ffe2fe
Date: Sat, 29 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743221393
