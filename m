Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EA440DFBE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774145094; cv=none; b=RpLipmj0lmwHHSu80+fs8N67Jd/GmQisRGIEVnFrcGg2xH2FCgW9iZ7wq6b/RO8e8EpGGiwwyqKQriHADCbIzeIHoCRniNgrfO9okdyYXFMmqMbJ3OzGGvQ/rqCfsK8qdm+OwQjSykiPV17WxBbDC1uk4WzC6bBjUXqmtJwEu9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774145094; c=relaxed/simple;
	bh=ythkf6RdiqMpn6haUhKQibZLid3M4mMrmZj57WfGFyU=;
	h=To:Subject:From:Message-Id:Date; b=fgMCGB2XvCwjm8c4EnjdUXdEp1szM5vIpJriozpQVaGPb9sRB+0wGFHhSGkQj0axs/TV6AKj0mxkN7YdN7vQ3MSBexzpX9uldphZc7iWCCALiLwW2VVpomgvfi/v8b0S9G0Qm4Kl0Lx1OakgUSP3tivfSEfxvf5XQXDEAnbuLl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1NpWHji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1NpWHji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5561C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774145093;
	bh=ythkf6RdiqMpn6haUhKQibZLid3M4mMrmZj57WfGFyU=;
	h=To:Subject:From:Date:From;
	b=B1NpWHjiaJE2ddwMBuM9kaxlhQfASvkzv1oQ4+6864pRa/XjlykrB5bkxkJ05za1f
	 /P3Bpkhe6klVyIJj6hhpe0qHSfc8wHvvPHka1q5u9FFEkvunkcWk2R6ZCxmxrEkFye
	 fgsTI8+1sfkt+VjScxj7hGT9Ol1BhhtxB5nub64H4iIw8iCdLYlUNM+uhmma431rWL
	 cVs2mNlv04OgZV1tlVukfZfVDDCUqfYc8snlGiNOnU/6QCLAaovZFai+yDzX3zFzum
	 3lN1EGbhG2ugZAmvoWAIP0CYy1c4fOJsVM9vwJi6NYuGnTOl/FbzgYgX33UTiunDaa
	 E8VLpjU40TRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF5109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414509357.16887.17585684884256848932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c90ece2bd21ff1c32a25a09725d42857059dfd1a8794b1729048a43c740fd6
Date: Sun, 22 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774145093
