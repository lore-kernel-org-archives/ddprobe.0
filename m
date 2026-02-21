Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2090710F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771716294; cv=none; b=IIcfl2HKLatIW9x/oygkdwP3/7oiNofkkI743xcCk5AHsGqa6j2q9NLZqZyFGa4ya+PW+xOEaqPuLYR9gMIQtni9EnCfd/bxOUmvyqXwhMn64ADyNei1nI9gNM5v01ZRx240eXO99utpKnX7R5u2DrC94T7qEzp3dKHUqAkl3gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771716294; c=relaxed/simple;
	bh=N8kIErQgpio9fUvKXTQ7sNwhZ175vwHP4Zk034vaQa4=;
	h=To:Subject:From:Message-Id:Date; b=UdToiqFh6EH2k4sX1D1wgcBfLJEgi5BjtmJvNX8o94TdBdqmkxaT+46/rlInqHG3ks1puWglfNisbhRXfozqwesA8C6pvgwy6tcDs9YMosKyPiRglHMKfHSOzwETdjIphjbNIk6+987xSIY7fSsXvDRS0ebUdi2uXtdreeJjeC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEKECQ5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEKECQ5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C93C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771716293;
	bh=N8kIErQgpio9fUvKXTQ7sNwhZ175vwHP4Zk034vaQa4=;
	h=To:Subject:From:Date:From;
	b=fEKECQ5pSdLr0Vb0/nmZNVD/LuqeIFsCpHaztyXLJtxDgzBKx7HZDru3lG+tfuk+H
	 gKQ6NjSM74HK3v4D5oq+o5QuL9vaC2MNfMINYgD2Q+S8lop3GSbkgD66oYcyyjjsWR
	 U7/IGAeHh7dtclLVZmqemiTzn65SR8CK4Qcc3kLGtZmlubODPG7t/3dQ9WWmyhQEWB
	 aX5DqBKnGKmXTL3j5ODF2tA0DHb4rcW90i7tfXECuTCO5OHdGEa7nP40NBOpsivtWo
	 J+5F2N4pX7jaTl8u8MuiRsl7/v4a9+Kr9h4xFmOhQCCggprnluzMLaEIzCgUvqYvtb
	 1amfYMnffQMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C79EC61DF0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171629359.6885.12978914622161699560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bea0d8528052f1dde3bfa6442284f9cc7cc2f7b9b04085bcefdb93207bdc3ac
Date: Sat, 21 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771716293
