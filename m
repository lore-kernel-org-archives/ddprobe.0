Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395CA2DCBFC
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748783394; cv=none; b=hilsLcjdNmdQ13BxPLZ8DE6VSNKpZrxneSdPoKrrLZHO5h1PhsXGbtg5XJd9B1CP/0zC5hzf9KvQXHtNBvwBwIB3soWBiMgm9AGKdXnme4qfaPSEgPI2QTZ10cX2nk2zN/sHuJVA1B/fDOXbZNZlR2vBpt87i5I069jxIBs622k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748783394; c=relaxed/simple;
	bh=7+JbK3s8jCuFEfMnzG4vUXje7ToEeO8f36uE14aEvBY=;
	h=To:Subject:From:Message-Id:Date; b=k+4PRZ/Qtr021tvUkbb6mnPO/3C5Gl8EdIoYDk509oLeeZHIpCfLo0VjFNX4Fom3fnGHtPcCfDVPEirVhT40AFMFcknrpaZB03/w9FTQMS3rovhnnaW/N+GuU2i4EePMm9Jj5QG4cQG80JApf71n3q5pOmvdRcDxtPvbPC+P7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNjk0l6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNjk0l6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748783393;
	bh=7+JbK3s8jCuFEfMnzG4vUXje7ToEeO8f36uE14aEvBY=;
	h=To:Subject:From:Date:From;
	b=aNjk0l6ZENZmAPCw/21wRIzEhC1wNErXJf0066UVHGhLs+yj+H8hrDPfHksdpjPBY
	 ltOrHpZj0vEsoccYSKOD1hacVJI9AqIafCZ4G95Ma5+Ko4gRqtvdg1c6amOTVuDk1M
	 KDeIGuCgU7XTXi9ymRRkJghrffvCe6tSIbMGU8Y4yBuilbA0BPgsPWs10rZU6+YemD
	 JHoX5cQG/BAcEGsWlCXSdHe2kr9VTvbBb42asRqemNfm7ZzxJgI0efDfR3Ce8MztkQ
	 dYi0xVS6mew3aRDHA9ZZvkVpnOkswtRsZcJ99kjbeSR4UvDd/9s1lwlJvoYI2PvEmh
	 DoDpNCJiWDdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92574C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878339357.24305.4706815474763894803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccccc66d247aa6dd5607d1c9760f3a7abc41d0e585b6b2b04d9a17ac32834f3
Date: Sun, 01 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748783393
