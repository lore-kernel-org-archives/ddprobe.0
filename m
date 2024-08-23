Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C41E1CD3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724424354; cv=none; b=Hyq2ZWieKxyUhOSMhSqsyiuP7pwdQFgWFSH4FpgMKTXqnXxU5Tj+KEHGPzG0L1+s59BmoLgsyx4YWFY1LZL7+yE+L/2DzzqmBNaiNWPLm46Nn+wgPRJOHV48nWerhz34ktWR8TveHxC9jKYmVDInuJAVBc6nu9Xtl5kL2hD13zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724424354; c=relaxed/simple;
	bh=wCW2daj9lrD334rCUlStreArxqaePCFdZnPO3ZUyCz8=;
	h=To:Subject:From:Message-Id:Date; b=FGALOdzrd+IbVIYPfNhj096+zBmuDxWRZrNpkXZt3bujOHcEfj0b5BjY+vUm6j/FAaIBlfbh6ffE1QBMFurVdQtjLEVAmkGyQAnjtLR9l71G81rN58ZTeWSeZQZ6HAA6xPxsL0Mc/+wWdaQ97optixmQgZMTlRjDTC0add1nob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7952btQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7952btQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7DFC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724424353;
	bh=wCW2daj9lrD334rCUlStreArxqaePCFdZnPO3ZUyCz8=;
	h=To:Subject:From:Date:From;
	b=D7952btQJvU4TzR4nsFQ7+t4ffzVsxQYmQncGrFtPT1VMg9x2QOJCBwK5eB5t0g2B
	 7BZv/yvTrAYnquiiteTVUkOc2v4WMEe9DZBCs/PZ3zMpo67HB7CBisW0IpQymjH2tM
	 mk5eTPW+fSzZy/fA1nmQ5CcCHmdUhces1y2Yz++Yh3y22rfxVHWuczmqvQfhNRV0S2
	 Yt1tE4bE6tilGI3yLBlMNnDP0S1usU1wxknTSJ0RRHLEsM92IdfAh9XnSjupMdXlYj
	 MP2HAy+YftNu4NnN0oFkGcc+I9+g1Jb1inZKMv/8bBiM+VIHRyP9rLALhavPUGDriv
	 5GNCtuuf2KtXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40A0C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442435365.13330.8521308352306943085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62969023161875552c9249f480deb818d727d22d182ec09e20b89fdd39087226
Date: Fri, 23 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724424353
