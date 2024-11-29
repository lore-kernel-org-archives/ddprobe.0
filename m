Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462C4157A72
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732913754; cv=none; b=UQYV6Hay4eFII/jpaq/Rb4RaAdQsBh2wQxSgmBwTiND4cCDzAno0YRXa0tGtnKl3Wb0PQC939GdLxZLReyjmGITmAB8cxifIi5Vw0mpEX+8opWsYquEGwKN8hguRa8MJEQhCGOi8GwvvfkEDy/6w8zWPRnt6Obr/gnqwyVaqiUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732913754; c=relaxed/simple;
	bh=OwswE2mdND5JNGHFxfyZ4jTMiwppsNIdxPkkZCk93ms=;
	h=To:Subject:From:Message-Id:Date; b=R3Uacqh4DQPJdLI66Gkxp/yJDjoDOqJS0uYe2yEKHkH6/DkeTRcqJzlpQywBxuUPg55j6sFV9K6PUs7RiQ5ozzb6XMaUB5LKdM2QpzDikd+CELAowytt9NxdjhruTDH1hec7WZWlGS8aguHNzi4/GRh2mLPoAMxg3+fFCGYI++Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UG/pRvMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UG/pRvMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5F3C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732913753;
	bh=OwswE2mdND5JNGHFxfyZ4jTMiwppsNIdxPkkZCk93ms=;
	h=To:Subject:From:Date:From;
	b=UG/pRvMdf+Rx/jMQfuAEBw5QPUk+kD+So1XOa49vhvRHpaRSIt+6kYRMwr3SmrXm1
	 vH3vJBgf9JwXfR+xohtpMzfmWUUcNd+dKj0qHc6k/eOXbeFTXbU8916/emoNfgx73n
	 Xase4PyY3RIR3X29HRfl2J8psc41wbEjF0cK+2JPKhP2p1OdDot/mSr5aoAe35C4fJ
	 fH9DV0FeBuWdY+kYCBnv/Y7qSXYaipLX8uxp1e81lNNn2Llh5LrlwFJUcBQ8D+aW+Z
	 HhMS/xf2oiUDmwslB0uL7sFUamuLuVMNgJ6ThdZp+bpCdcdBkIVQNpF/XjOTL1RrkE
	 nPIGzycZPuSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99043D72A14
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291375360.16234.10436767055970554412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40e9114cf3a39a4c6c3d124857c061493f07e432625c8cb5669719e9201ae43
Date: Fri, 29 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732913753
