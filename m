Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504212C21D0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791942034; cv=none; b=eK8tFGeBrOztcP1iaxH9nU93qx7xOO01IJ8/byyWA5e11elBxyR3GJt1NzfzuwIEytCBkvLdwig/5ALVOjgQK6jZtQwE9EwPeN5jB7HYI1FgEznRDlrlrZJ/J/m0CBaWgR+SUJp/t+QdAx75owkc7bgZ2cxuMFpS9xiaw7ZtHIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791942034; c=relaxed/simple;
	bh=chP07EanVow9U5dg3Y/XuVxUrch1YnoUslZl3YFk4/c=;
	h=To:Subject:From:Message-Id:Date; b=d9To1KBqC+X3QWozZLJc6SKxPlrSGwAQm5TbhQXVdlRX01uHhLnboGBn7Wn7k17KA2O/Yt5zMB3e7McVcRoYjkrp8HZpFb1NFKMA/a78Ab6/ntxnM/SqdesmPyRmifyERJgpRbO0X/sfLo0lVSdN4jVhklFx89RNfd62YvPJM94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VieZn9gy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VieZn9gy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D046AC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791942033;
	bh=chP07EanVow9U5dg3Y/XuVxUrch1YnoUslZl3YFk4/c=;
	h=To:Subject:From:Date:From;
	b=VieZn9gytP4G/x6YAj3N3APX1OsXFDDVisrkrVX8Hma01/68WfhlE3K8+tRUX8gS4
	 EZV/nP5gZZgnVFJvQ4I3we2LTLBjUwR+2bdPWkuDc9hzDFunWs8a67XOu0jaY7TbGV
	 dBf6uKZzBPybR7e01SiBQph5KT8TITFCpdORWW8C3x8wTlfyY3vm71n/MTDAhaGs5f
	 /pBRaVlvRoAasKBC5FjLgla8JzrAYtKpWXYVPX7N3V5CS+Opp2wY2aD0mprs5A98O4
	 sJ4++s2G/xcavcKS1kssh2A1Ed95kyqe9X/DmsNNRACF3LNrUg1+QRE5JAYTtuSWYJ
	 20KmP5tW6Jvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9FBCC6B1F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194203369.8925.18025901577770738546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66535acec098a45ef9d0ef7bf6ef028810683d9d42d7a82cfd3d0bd1f7e8fa1d
Date: Wed, 14 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791942033
