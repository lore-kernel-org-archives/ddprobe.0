Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FD64C9D
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757044196; cv=none; b=FPK9wkuKJVIng7uTDs6yJjtLjEZpmA496qhlTNdBjiSzNh7QDAvvm0B15Uaw6V973lPmDzsWVm2LvirIiPw7ZYCo65v3xCTvpw9aXt31MQd+nlm/wJWebhrKJvA0uvO+SdUwg3k/MbIJY5OBaZ66P/TJ/8kS63JB23F9BZoT4Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757044196; c=relaxed/simple;
	bh=796Sz+ud5n0KLOIBKYQp+HQqjMxJP3QxRAILoilILtM=;
	h=To:Subject:From:Message-Id:Date; b=jkaBrCNHgBZv46CllejpH2ZjC8QSFd+HChxHQEmbM6DEUSBBe0JEEUXfvs1Xr3xuJ/V+G6euIVvdCvyv1iC+qWOWian1a9mFLUM07a+cAAGSuUS18QoF3Sh/dXcEB1L0zkq2fTF1w50zzBsgJyBbiFKQUBaJXAnS33rOTm/xM2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5aCgC4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5aCgC4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757044193;
	bh=796Sz+ud5n0KLOIBKYQp+HQqjMxJP3QxRAILoilILtM=;
	h=To:Subject:From:Date:From;
	b=t5aCgC4sYqNiWToYuHwLiOWCWNyoBvaCmfROwIaQvRFAwYhvp0KMsFhu45BwUGWYN
	 AFH/06AK9Tp8qMVFya66KnKqY9Rcr3RRzlboqJaeyoOVrSRU5qxvr4qXv/WJZGPU/6
	 /3wi8mvi6FJ40Ba0f3f/chc6DgEKZcJ8IBrALNIm8rREZliEWaPKgBiOiWackt8j28
	 E6qC8ZNAZ4oJtoULyh9+tupRBbuawMw1twqJBo42U2I9goY4SZ/ZZ9M9+nxvcVTpb/
	 bMztD2X+iann48n0hFmERw1qNmYJSEZy31fe1pddaVQkjFgU4FuT9kSOxQHvS1y9Ed
	 WdFipNWpK55QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E874CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704419357.5615.10265924498953354951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f05413cfecf5db425893e524d456010d9b7a2be428055a1ec84793a8a407621
Date: Fri, 05 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757044193
