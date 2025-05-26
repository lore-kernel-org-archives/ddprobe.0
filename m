Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E3F9E8
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748232594; cv=none; b=BHnyuWupSkADbsvpgDh7RHxy+oxTT58izeyV4o7/IykG+BqGt+Fbcf6vejtNyZl+Pu2DvIbsR+qiBtkz5fSxKcgZjyqXZ+sZ7PIyQXoNLSWVH/NUh5WI76+AcuSsFdtWLRz3WRFw719+zKr+bi3kl6oIqpmLA5AB8mG/T+fNb4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748232594; c=relaxed/simple;
	bh=IXDHCtxFmdl/WJI3drWovLHWlbxHx+HTyd3Jkx0V7SE=;
	h=To:Subject:From:Message-Id:Date; b=WIKxEwWHC9ZjtZQoYbum+51k0XRZ1stu0lOh9gfObprgG1rCrU7NdwyVazkBy6sioazJXt+23nw2fcsZpV1Hh060Py5RwHg8OkhtvmzKm23xKjmzLwCFFbADcVTw26oQL+8KRFkMin5Aybg3/l7gqu4H7WGbp2S+2YqoFVvgkSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOGJOBLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOGJOBLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCF9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748232593;
	bh=IXDHCtxFmdl/WJI3drWovLHWlbxHx+HTyd3Jkx0V7SE=;
	h=To:Subject:From:Date:From;
	b=QOGJOBLMvdlJ3q5XTLYixnQzPH279mTnhcvXNhZu3SDQMVeaOLBBidDbO94SeMJZC
	 72ydIJlzvC9TaSi7O9QeQWV62PCJUkGLkT5VWBu2aB8I/VRdxVABbmeT2mcAU86z4V
	 5axIJmfur5DJBsIK1iANs2KY0So0BAKnPqSClwjgw7BfbwOUal2bgubatFuEXpt+AD
	 A9pqevaUftTBVSaNR6hgny4y4osQCtsR7yDRpAvFh5TfiNOf4hYEeAEvd9bfLFC6ny
	 CkXb6K3AqQPbJ6bwgWBN0qpzjuiIjuyayUcZI9xmHWiI53er/PTWzew5ch8AKQTsHn
	 I837InoYu02ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DEC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823259358.6103.9421155490559816444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a526ad35991356dffd6faaa28b02e410c7e2611b1c35b41770452629b62c42b
Date: Mon, 26 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748232593
