Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ECA139E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733530554; cv=none; b=DTtW6V3PP0H9L/OTlVknDpcG/MqjHn5XuR1YXrOJMaXcEVwQzeGNkIdTJLTSIbmC7acTrx3GBEZW/NQXyzKpwzHtogskp1mhizmU3be1lH+qeOVK5OwXMTssUf9hVOInwPV4GhFS5/Xh8B/eCHvkxNsir1grWbQiz4odfl3W40E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733530554; c=relaxed/simple;
	bh=qxazmG4+iN2YUZ9llwoRZL1VRlMk7ScdEgfDPsuRwvw=;
	h=To:Subject:From:Message-Id:Date; b=gy4Yc0fVJiAegXoujb5g0vmCPglNdUx3cYfyzMBYtH9LTRN7/M4thbtz+q1eZHl7NHgd7obNXv0YPcz6+xxcg3gJuXu9cKR2Q0t1N2hcJcBSso6y8sVNqyJ7fpUIG8qBh9SJBV1f3hWVff5ULO7MxPzqLa+HdnfzI8mo1tDIJVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjXp35rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjXp35rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7466C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733530553;
	bh=qxazmG4+iN2YUZ9llwoRZL1VRlMk7ScdEgfDPsuRwvw=;
	h=To:Subject:From:Date:From;
	b=VjXp35rcgLXBIuJ0JGk5aeviX8s+Wv15sAcccoayiz2fvAMv9cDctdCvm1UIMyj1t
	 feP71ny/AyBKX3gigVTfrC1Ar+XYgjobB/cjUIlSiDuw7wwKemSoRtgaqrubzulrEx
	 Jb+L+VfpTWOLUjkG50xKdE4liqS46JB8I5q8pMU0N5FZCoz1ecg4n4VKVm3n1gSCFI
	 NIS0CjhmU4k4vcLz96RZE3vSrGKM9ieSshZJKmvL3f34VjKGC5iRxdrKqMMhsO5+UJ
	 +8vX23EmYqTK+31seLGrOu3/KyBwcm1c4kLtODw+FOgkerK2958pjhH9qvKjP8Hw2r
	 eQmkQgD+JZlgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4176E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353055364.22615.4412842372997747004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6ed4d73e56e5526e4a5a357524834b2e79a38db908b4dededf396d8f4924cc
Date: Sat, 07 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733530553
