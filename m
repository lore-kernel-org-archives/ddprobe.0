Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBE218C3B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719464663; cv=none; b=usioEN6rTJt4BgtwsnJyOuUqFxagTWpih3iEzzb6Q+g0pDAvL1/TeUvdRLHacqeBIkpkRWJzBqCX++Z/b/eKXhUAdmPb10KVQl9V5Sao4vHtUrnJc1Ho17NL0zmr98GSpehq0z2Bx3YdncsmJkKIdv1TeuffbizQ44Oq3NtP1Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719464663; c=relaxed/simple;
	bh=QAc6vhmWU06vFCdw9tdWAH6toRsptmyYDLWbo/yI/Gk=;
	h=To:Subject:From:Message-Id:Date; b=Sr+E6kb8r45kjMZ/kt1wCsVL/ENSz/ONKt0WX9Dx9zoRPnQoi6j5z9+HfX5SFMAlbWmjSGrsmticz+FoOIo4TN/pOV8v1JVOT0/b3nyECUTU3v4RgznAMOLeb6ba5JbMOJDmUePEz+I3S7oODQecPie4mueq9ZB6CSEsmOtJL1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwxnMsCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwxnMsCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AF8C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719464662;
	bh=QAc6vhmWU06vFCdw9tdWAH6toRsptmyYDLWbo/yI/Gk=;
	h=To:Subject:From:Date:From;
	b=cwxnMsCRM/mMfXFSuOce8FA9vSGgAGzFeWOBAK0xlzwSExUa1jSgDxQzecbG2haqa
	 tshb6x3k1A5cbOM/aBlYIpcsc0Kt/dgYRJURU4T9QVYvSWbVpsvUm8f8hos0RiahvC
	 TvVyMruz0QFHwQYMBZ2+oi3Qp+Ov5Te3yEXXpl7tkFn4IjKizdzj1iKM/KkjLLkd8X
	 DcEJF7bf7yDEPJrbfyG4bY2mFfl9aLxpFtUTcwZbOhhsXIgkMUnphnSDmftRPzfDrn
	 bvSoLYIX+OT7hLeayeVMer84NHMAvKWds9adRNWzlVoZESPejC7NKppyUB+wCAvD3I
	 YHXCUnDh7/xBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8471C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946466278.26423.14071218117489776126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1859f1034d4c0499cd4cef7b10267ccfb6cfe4ea2040321c8b1d1e765e43d07e
Date: Thu, 27 Jun 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719464662
