Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419242248A3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777438654; cv=none; b=qveutruZUZ16uyKc5uAXsue8vocxLmpeAR5lk2dFoKsoZINRY+YPAVAnEqpK+vVjeQ3lL7rOb/VQhst3WkE2Kl2Tdl+9RA/93dBRoobqrEst9hImTb/NpV3XnPaCcRqitgt+pKUGRogtsSsUUX+NtHgMa84dLCxx4MSz+EczRro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777438654; c=relaxed/simple;
	bh=utdsRi/dprsPJBLbQuqnkPkvHAKP90y9bACEzW69HZQ=;
	h=To:Subject:From:Message-Id:Date; b=dZw/+tyemdoDYN6pLbbvzxYVbafhyShJi1297F7E4a8FtCJtjApJE9iMBNteFIeNseTHUfB2QfAXJY81UfED6gdmFBuurWLFTaTuNOudDD65cySsiuKc0kHgrrN14N+JXLPdTcz+eAcEA4Q7G+xZkPTAbTz1ILQRLqrJAZ3DSgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njy+eWEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njy+eWEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB164C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777438653;
	bh=utdsRi/dprsPJBLbQuqnkPkvHAKP90y9bACEzW69HZQ=;
	h=To:Subject:From:Date:From;
	b=njy+eWEHUOJu9pCrpAo4og1N4NkUNtBFCzv2yOO5IY2ZYGDd0tGHecXSMhyhnrAI0
	 xwwlCq0TXd8v2CgJXYLJ1OT7N9PDbFflQ1yvDNeYXI9bhPFzq6rjWEilUGkBWSrWUJ
	 Z3ltZdWXyA5/hZz6dnC1xpV1YmZPLjuMgLyCOMqT/PCotVrWVWLTyl7pbdf6YQ5FyH
	 eVA3eb3FwIBGWP5fExT0OJMfosuqclAO+KhSeXRThnkPU4lQx9L+B7J7wVYRTerpMM
	 xQtwkz6y+ipI4AYEUWXp8zT61/vKw9LiQbJWKgVa0nU/c8r69j4Keb9W34vIZPSbQY
	 LMLO0ZiuqQ3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB808FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743865369.14608.7876722714890088146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc6352de4e2c0efe7391f331d7df8212a4f21ca20226cc9f9e39a1e35e35e3b
Date: Wed, 29 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777438653
