Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C4725771
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772045094; cv=none; b=AHWA48qdMeyRa8uy8KmU9BaZYleSPamXF5zkDFoRMB3gN58wFDgUrRpum3/RxPmRsnfGfj5zBsgMoutB2w41yToqkUjxVeeRjlJNsrQguFXUg67XpkVbXOeXezAdGdwmV/oiamUEQyBrFcrpjW6ayes8Ex1XW/ju8kn20CuzXjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772045094; c=relaxed/simple;
	bh=z1dqiZcLvPN7TkBc7jGfZRth7MdiUB8qyXdK0zSauyw=;
	h=To:Subject:From:Message-Id:Date; b=bS1AbYyrRZ0izZXvOSygbw73bQ5vXPXehfPr8RBPS0hfWSfOQp/DSzz7DGcBQc8xJzYOY1+kpBwf/sDjvLJUCYPiQKie/5JNFW1BcJrDI8+dVG4MX3ZjqgdVtXIz7jqlTNn4/sO0fGlQcw2sC46LXE/jcev9IWL8K+JZ2vDKNjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZfDMmnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZfDMmnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C18C19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772045093;
	bh=z1dqiZcLvPN7TkBc7jGfZRth7MdiUB8qyXdK0zSauyw=;
	h=To:Subject:From:Date:From;
	b=DZfDMmnMFQZpAjMSw844DJ0MAFDTMMJSKiEWpsK5du657xVrXcQ0sLm6EXkO8e9gy
	 Rw1uSIgMIMrvz8u+sa9ShIRpM/qpQnhCJDfnLiWDSqDvXQdmUntzm6LJ//rSZvaFn5
	 6dQer3yu8kqy7tRjv1AVletsG+iVDLpfCXjcAd0XtAbOzK+FOUPnQ4m890t7EkU30c
	 rDN2oVVVYgDiJ6ba+L6V6E5FzvTwXbUHOCKHMvE4WvSAZUzF58Xqxdy6PUcbAlbeA2
	 cV82wnY9/HP0rTh/O1hFYUmiSkujO9dM/uHLGsPuHplFbmBKoRfAH/xZpFcQaHYz8l
	 CyuIenXM0/uAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47D5FD377A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204509372.1396.1647452955074316279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7233aeca8e81196f3ae9ee272f4e5a9fd98edd18882af09e4795834b7429bd4d
Date: Wed, 25 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772045093
