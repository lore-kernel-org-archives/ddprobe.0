Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADBF22ACE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748607594; cv=none; b=NrOrP/FmkdpF2xihRwG0JC14edxgVpicbZyxa+kSmMny+gIZ02lxISc4LzdLPlS7Bn/fKjStj6XLrqqbjyqP8RA1NzXw2S5xPz9aAcIPzxrDvNW4n7o3Xp8vIHee1vI1weKDpq/famOPvFJ32PptiVenhq6Oc/4iKvPKGueEGfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748607594; c=relaxed/simple;
	bh=cedUxQ7AJEu+eVmuBvnFdgYK1JmKE34PX+eLZuqColk=;
	h=To:Subject:From:Message-Id:Date; b=j9ofjJmFMgvpKG2XYCy8PX/wvKPTg+8x1ORuTTOhPYTiGKccyfPhGupzgp3rus5mbQ3YojXl+cCptpxmzTYOvLRjzXPN35LuYusfI/zGF0uZipT+KFLCw849e1BTBr0zd0nvgPSlL05HrwQf0vKWftcDLsFUjCpOgS/dzfdKHDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL9Kb5Ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL9Kb5Ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748607593;
	bh=cedUxQ7AJEu+eVmuBvnFdgYK1JmKE34PX+eLZuqColk=;
	h=To:Subject:From:Date:From;
	b=pL9Kb5OtSglIAsaVO4F9B3+XmxJkevrzBM6SDUCc48v6XuoWswN481Kx5pj2lisHL
	 W/kkbkhl9deHxZ52qhpUFqr8B2h6snI+jkzBH7FOBU3gvWWstKWu3empe/fz79cJVL
	 QP9Btbi2vOxwl2H0aJiWfqGhLxvIrMd4y1foX9X0qe3U7YhhpzMkkS2WS9oYS25FLL
	 xMRFxpPVaROO5JVt2riqzhYG2RzTHREaf0oVRhy0rNRqt7RVJZHGt+tIVAIwgkrrle
	 ckM6Q/gwyESdzt2rlB4MDYuj+ewz+EnECPS0zPn4YV/fKsYpNFWftgyPepOA2dtai5
	 m3os5MrQLVDZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE6C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860759360.436.7360170495543002455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab8412ec425fdac780f659378af4ddb81731a72b7da09589025242fe3b4620b
Date: Fri, 30 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748607593
