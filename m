Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44843136A
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741808934; cv=none; b=IWdf6Uwwe0YQksaOo+dx5jNzGFKl+atLYvVSUXm3PiWyGk1fIjFZcPcaBUh+wntxEcRypw5x/FR7nT15XWkD/6nSfrpsIhOMznlDA4aUXR4z3eciLQ7Bjrs6VzE0jwkAv/8N60tUIMdvpBYG2TXmIKF4Na0Bt6ot5xtzguvuthE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741808934; c=relaxed/simple;
	bh=SBxVraUXa3REdCbD8W+8ReIG+Le1bHtRVWvAR4E9GUs=;
	h=To:Subject:From:Message-Id:Date; b=B7zMg5FtkmRTPFSAjE0E7G1lITNMpVMit+yZOqJ/tfPg4iU8QsXJa+amIjwA1IfvK9nB+NgHA7bkQS1L6rVO0LCoDdech2gTVTgcgXdDMs3STqQZuY+DUTPKdTIpL/6/azqShKNHaltVwZ3oMugbOnQJsOj6PTcx4x1/UzZIdGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3e4Wz2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3e4Wz2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C25C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741808933;
	bh=SBxVraUXa3REdCbD8W+8ReIG+Le1bHtRVWvAR4E9GUs=;
	h=To:Subject:From:Date:From;
	b=s3e4Wz2okGB/6t1h12Nq6hYPbzg+W06u635Qvy24mAHTv2UZf720CWOyVPQgVEATG
	 cl9IjcKsPhj0O3FipM/+Pkgfpt2LM4uHVM8um0Agp+y0Yvj+wW42wKCMWOiFjP9pYC
	 WThv2m+ZUypAXIAxc8Z4zu95xqiZuNmv2bGa4pu/TkNApy/vXOjQzK1aUVK2itd5L9
	 2WU3R5PivVAJJOr62o1Bo5q7Q77Y9Q8ynZsg1t30LeaEVs3VmLsz3tyR540aXliWlo
	 U9EKQTeoJKfQYyrQv55NnPKSTFTiEJPsS8hCWM2441VTo057gi5zD94a+2wRxlem7n
	 xlgNagWRAqwrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C770C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180893362.25868.2137208719593618526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c6ae231494f81a4a21d6c7a9088b945d9ccd58986bebda1963078df7f1d076
Date: Wed, 12 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741808933
