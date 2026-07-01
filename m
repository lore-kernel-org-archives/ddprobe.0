Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0504D3B95E7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782895114; cv=none; b=osJ0fhwVg7m/UIF/xXIyWZb0mMmyOSbxDa8hAOvV57e/iQCMfYG/FKBYDzLcAGvxSnO5TjG60C+im4xfDfqN9PUYRwB4Yj9Nvrj/kNfd0EeLB6zsJAqZo4XOjX0IrkLKgX0+p/gxnWo39qCQWr2pQ884ZJe5gU5fbgxuAdoC6TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782895114; c=relaxed/simple;
	bh=wegngPuKTOC+igBqeQztSiI2QZYkQRsf85kEzh9mupM=;
	h=To:Subject:From:Message-Id:Date; b=VnsrMbWJ6ctPn903uxUMsU3QYFBRqOdWG8qHYcnhHopqFA5rcZTs5grJZNDOPupa8VQlUdzOdPC/apXiC4PLzhNMNz8/itVnHTaoldt3nep26U+P/jZpSb5NWWHt+PO1DmqCRIs6vPb6AwuDuSMuFdB2T622up9i0ye2TvLOkTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGY907G9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGY907G9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD9FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782895113;
	bh=wegngPuKTOC+igBqeQztSiI2QZYkQRsf85kEzh9mupM=;
	h=To:Subject:From:Date:From;
	b=NGY907G9cyh2uUOUGVFu+dhm6XTt1x6Ejc3yPJD8v+1sBiWAeKOE7kKOWE2ETEAMy
	 VH60JImWvMtvYkAVhCNmA3RlQoubELqoRz+RK4rl8FVHet8ZXhB7lYu2qswh1Vxkaf
	 c4+RiWUUP775mJWxTW/Xr9rYCbJIFvIlSKxoOky76zPUalTwuy7vjdGNpTlZUNmVS/
	 qKxBbMw1rD0nl13P2akd3sAzg2Y+Ifk5O6lnZsmJsw0jwGzJO6F7EEbL7P9zm3zFjp
	 wDTAZwFuswy+vWfhLyXxUWj7YE5yHZToQji3ff2YqKzyrOihB+hhXE5c1hUWr/y7Gw
	 rqrqQnZaBMaPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9224C43602
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289511368.12151.17737893548359597779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cabc38e35728394c1f7fec367a4156c64dba3f1b873f903703f25c56aa38bc
Date: Wed, 01 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782895113
