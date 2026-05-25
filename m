Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E346175A86
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779667354; cv=none; b=RNbHa7UrW+pnMN4uh7yuRxVIf1V4s6XvqB8Z+weO+kMODef41U4v3Ejld8vm3rlN5lGohMm1bMuCwbn2JJrNjtZYeuIrstZ+0ysVBCKcmtkPCupecmWodBFu9AwtUvJgGjlPtsGzLlWvY5OQ4J63T4d2KVdRuaWVCW0pq6KCuPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779667354; c=relaxed/simple;
	bh=pU7Z8DDHKGF63nRc0rjRIYnLqbvqWpDzq7j3aeAwSG8=;
	h=To:Subject:From:Message-Id:Date; b=Cz2deNZtuXy+JJGRLhLkTM5HQXn9B/3rzSQoK8u5sY7GLPx8UhCbDidk3OU2qUq7BS8OL9SDM0Fx98vKS0pCkl1tvJ6tKtw0CuYGB22TOdIynFV5XBB7qk190UBsfknRXd2CM7t7qBVt3uJp9FD421dGdVmI+4i3dSQFEOFA4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2nNfGC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2nNfGC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC469C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779667353;
	bh=pU7Z8DDHKGF63nRc0rjRIYnLqbvqWpDzq7j3aeAwSG8=;
	h=To:Subject:From:Date:From;
	b=l2nNfGC7jBvQQFdGZBhtkx5iA3pk+Vq1nOiSeqK8C8TbdKrCtMpX8Vhg85M1A5vPV
	 uA5R+B961HQ6dVFL4AWFZHd5GMegu1qul+SCr2fCL0+JOnBYtgFcsHgpGpGiuY9HfN
	 r4kv6RjW87nUL9EzTEmAcfaE+Iu0xVLGfC30KsVPpOLLEKFj4N/BsVRUwvsxj5obhn
	 KMEIyFrZQ62riw3dVh/rGWnJzgGitHkm1XNjjqOGXDo0kMIlOsyuvRdl/+yT6GdFP2
	 I3B6W1aIHKtHJybH6onJY92GCnBSr2u4+6pcwOHqOc3lue9I4Mq8tZPb7nJP0b6vp5
	 LU9EABBx00PIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF112CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966735368.20104.13313542152581938499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8832dd93d645806676e873adb921d47e087cd85f59db630908c51bd15c28689d
Date: Mon, 25 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779667353
