Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3E8170A1B
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739604534; cv=none; b=kwRbbmRFaBBcQk4v4c4YbgbCv4EiQbncXxn5KVb9kR7DHFkmV7FWnV8886Obu7KEhogqqSs8rzsQSKfcQ94op7KLdyUmcm6OyPPbBQWxUmq9r5epoSTMyZSp5DQby8k4t2vG1N0fxqNeC4fTDXCIji43J0AOFqOERvRUK+1p++Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739604534; c=relaxed/simple;
	bh=A60cqAEkAr6fQAGJbIYQbHi1gSkr1yu7eTkOBO5ovSI=;
	h=To:Subject:From:Message-Id:Date; b=ceOpoWyOpmC2j0MZkdJsPNjvvHJUkOTXGMNprlRKqDb3FGzUonRMnmu1r6JEwE+QMb6FXxNiN5YWX7xZR15xVPQ8k1gh7U10kfNNCyWKvXTnjB+T1FZHE7X30zudNMcXJDjO1/jHX2FR91YeP3XAWrcb+2E5mpDgxcNwXkxZlZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqk8f7xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqk8f7xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27FBC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739604533;
	bh=A60cqAEkAr6fQAGJbIYQbHi1gSkr1yu7eTkOBO5ovSI=;
	h=To:Subject:From:Date:From;
	b=dqk8f7xf0GktN8gEalBLT1nGWnQVH2OUEKPhAsk9CnnZZuItSd6uFBKBeM+lpZVSI
	 g/Gh7Y1AEanSNe/6vYJrbznq0YImD6XEIRvpMgSUEu8k5+iXpA6iyuBOXrA9/rMM4W
	 wzWXNRHuMyK1hRK6Rnxgt6iEZk4vXYyL+OAYJzYFYvCQNHuZEc6HFChoMS7lXOafvd
	 Sm0nQvRCJhdtS19G9c94xn7GZ9NJnClJI3UW0H0SMo5GtBGuuzkhN0K9lfykUj73Oj
	 JEzipxjLdFMs8AhfqynjTJ5LIZZ+dgtL02TGLnGZTZDstHjYis5QKrsshnOoidYXEM
	 AQhMntcxU3WUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E1FC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960453358.15802.16792458323369695604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b77950054963a42ddd45e317390bb176c1c5e4739c950684b9ec1b0bf73ed2
Date: Sat, 15 Feb 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739604533
