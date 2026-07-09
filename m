Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4FB3F5BF3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594114; cv=none; b=KY9CjFqk0lRLDp05TweBUShqk9yqM0zng7Pfa++vPlIhaP8kSE25OX8MxhF7Ay3/ICn2WbGAhv28bWHQOsCdfKJnsQk5RtlUk548yzu8KJQgcC1ocE2evXrPnKZxzSFuWmM9zVrZa3AQlTsusXLKwDxrmisK+bQW0l94cveA34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594114; c=relaxed/simple;
	bh=mJvwg3Ph7GdVG0XUZG5f00nGLGf7knvzd4q7dLPlQBk=;
	h=To:Subject:From:Message-Id:Date; b=C8HUYh7NesKQRoI1xSOO/AFJq3JeVU4sOBsRSiiqd0jUIsj9Md16h/kSRn69krbL5PehNBeZspjvTsNLiLGvr0zXA7TPbdcy31o/xaa8MKrrW9KVenRd1zAsLPP+La+zuHMf5D7w7cOHk2IoWXnGt7rULPQ3+jNqR/Y9i19msCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTXqMqf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTXqMqf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA972C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783594113;
	bh=mJvwg3Ph7GdVG0XUZG5f00nGLGf7knvzd4q7dLPlQBk=;
	h=To:Subject:From:Date:From;
	b=RTXqMqf2drK4V4P9f5mgOdCThKSX3al3vFhFdMevLe0uazonyvkxtgC5Kh7VPxPHO
	 SHicwnSNeEB90pAwRK7JEghROXFGl9BDkVWS9KqAoT4kgswhB+g2tGrYvh/bx5/ijr
	 2m+GKGbM41+PiSYVjkQ0G4Jm+zZdRLoJdTbEJbdgFApgBUFKG7VoSKEQj8sT5XeaMw
	 WNAkz9V4kJrIVZ1K93MJzevU75t6OP+W/xJY2ODIw/IFdmbwY3J4LKnWO0HrSXukDn
	 MEGAiYY57UNT21saGiexNLHfQfNFURmvjlMAGIRrybku2fffC1V0f1CTDzbg/s1YXk
	 CtPwC1cpAOeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9043C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359411368.24004.199587252137885855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec98c9fd466d7ff02958b7f68f25016475368a5629ac74646f9ce905ead346c
Date: Thu, 09 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783594113
