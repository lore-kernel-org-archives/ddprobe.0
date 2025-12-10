Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373581397
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765368174; cv=none; b=eE6UVNqk5ShP9nxFw3DHdZ3CS+Gz9J0+LRGck9GWJzVr5+XIamFlQM88b00ekgqZFwuTaiE9Fp/fxJU1xM2bkNDBFfB764ZCFnRr72CdEUWj79u03x4gz1ioleLvF88E96w1YXbPevL7hiVKALI7O0nA6CAAnnEjhWFtYhz4iRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765368174; c=relaxed/simple;
	bh=ATZjPpTwA89+fbOwIMPGRInemp3oWlckUDzAAbLqQiE=;
	h=To:Subject:From:Message-Id:Date; b=XLUqbTV1Or+AJpuN4WbHVr6v35qztkUT5QL8CChag4gjYQ6F6PJx5fiGt+xX8LC3SnuGSvhFBylmMBazQP7SRuMUFC4brPHZSKCjnmiVAL1bd1AnX8ZR3izqcQtrJyXz5FXfpWybP7ccih7pRRCfQnzSLS/rS0TBHgXV/T4UGEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlF4E2q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlF4E2q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765368173;
	bh=ATZjPpTwA89+fbOwIMPGRInemp3oWlckUDzAAbLqQiE=;
	h=To:Subject:From:Date:From;
	b=ZlF4E2q6R6VKdbYS5Tc5aSmfB61FazgkMjZwIaZE5+HMac+OwGWq2qZmxYkr8ph/O
	 b33MemG7x9yN1lH/uC7Hf1zyGKlY2X5hHAufwZ9av9JwT+79NWPAIW+qNMHmGnH1Mq
	 YOFXkB7TukYs9F8hTttvuIsyI+bRdTcZUc/gEhvRoq/pgkxzw7pnu5YH4wHCPp0vm6
	 KcGmi5qhEv4pZZgFNjZdW8phSMRUbl+sfq04t2OHnGC2urYp9GGWfb6v1OZpa/A143
	 +eJpFDG6qSmXafmItXg24gnw2GHcM0Nazvrh3hXekhcYYuAVmvw06EXfRsjs4DZesH
	 lRymvkizQ0abA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A6D3C52C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536817360.9317.14303038684556936311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e4222a52d3763e7c05c32e95807bdce7e5ce304570e2ddb7ce0f381bc809c4
Date: Wed, 10 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765368173
