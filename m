Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28434139587
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734106554; cv=none; b=npJ2+ma38zEg1VMyrp+bnB6wgSohsCF+f6iX6Nkrozyrnh5SbDch+UoN6u+AQwtxMFpci024nQIi+Hl/5Ht9ARKOBw3Z66AE8QgqPCnHwtoTUmIN+ip/2eM//w0B0u2AL8sPcAgqiFFQ3AfDt+z5h6unvT7owTrAWnk8GMzOmZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734106554; c=relaxed/simple;
	bh=Lq4SL2ZufqmUwQ/Aqt1pc2FF+nv+TeeGgnfMNGnwsq4=;
	h=To:Subject:From:Message-Id:Date; b=BKdT51HVuciNm/bkIOroy58qOMD/U1aGWPRJAU7DE++njbwUKOkLIV3zF7TI3kOP/bstewYDIP67V7h35jTg+O7shJB/piSYrt4YOwt+AwRY8fAOTTUyf/BFBmUmgT/EraO4jFj7jquBluOz0+e2q6Ml706Q8mRJafCuhGSOpHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idylMWNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idylMWNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B54C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734106553;
	bh=Lq4SL2ZufqmUwQ/Aqt1pc2FF+nv+TeeGgnfMNGnwsq4=;
	h=To:Subject:From:Date:From;
	b=idylMWNvf00FB3RLzwIkJZhgvwiWlQYT8tKam6mfoz5Nkhf3L2RL+E9UPiER3Xii3
	 5yIZVGyN5x6xK+EC6yAZ9f4eTggpHM9jHki+CgFwU+ZhR4ruS6HD3yBj+em4sZg6Mi
	 o1OoK/9xvguAnKbhTcCW/HlmHOX8Mpb/YRd58oHfonhCl3LiKmb1CZ+RTurGwAs3s5
	 uO3OmV5JYr/ebPouEQ8q7QvJ/9FYxYzHBhQNuhRc9PiNuA0JNIjnmqFDEBzyjjlcxn
	 g7szweSXPkt1D46LLMzoX19Ki+s75CaKyhSBOPwMV6bVDjh7yqrmF94q5o8KJV+LWj
	 b1ic4FH+tdtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A7E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410655360.9701.7226596376178068963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa7b43267eb127f39767d622edc64113163de48faa32d9d880e40aaf0750e5f
Date: Fri, 13 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734106553
