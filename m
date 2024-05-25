Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531BF171AF
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716619463; cv=none; b=Ela1NEUw/DTVJeoR7B/aflIA4uNDoQF06y/iMIYy8Nv6k45NNeJ+YvNMucxdFlwzoWbRrH3ehyqqhM9Cv+POnl2Vvvk4q6+lvmai8f49k/ZOXdoBRH7rjAUI4lWjdYQriNs6+FDS5/Y/tb9sJ3AbNTNFc2lZTsU7yqm/8zkkifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716619463; c=relaxed/simple;
	bh=eF5Bl4Ac6Y1kZmBqdS5TOnEWco+6Efq3QaQALoDu4Do=;
	h=To:Subject:From:Message-Id:Date; b=uILPVNmXNSQIAJ/oSZOxhzOErPSBuVxwQ5Pi0WekJiAay/AZM84e/T8uI5ZVt+X97sv5CA+2H+aaVYVVqBFtbAAXryWHNd/PJ3U6rR8qXrnvF2ANVnweMFSiGj6HvAH8GuNIKx/U2ema+ySrELKGEerO2RK9KkHP43zsaebNDCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWwjCJq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWwjCJq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3977C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716619462;
	bh=eF5Bl4Ac6Y1kZmBqdS5TOnEWco+6Efq3QaQALoDu4Do=;
	h=To:Subject:From:Date:From;
	b=AWwjCJq+LujqVP2r+/cxo4f4Le74/Vq3yleo7MUpf78qb9QE0TMTzqz55mTwY7hQ2
	 xYV+Si5LGOyr/VCe4aIGvzqRXzTq+sRb8U6TV9234ppFhCuhX+jNBuhYA7zYp771tl
	 r/VrkRgjcjQdSrKQjANbEuPTtVaWdCQzVkdw1tfve09sZZE0+CHL3mm1xTooCvNQta
	 iakWYT1I0y08qOwchmhcyeUozpHR2zRRCLVwb+ecefwZRTXIqGMVMOVleQPWbyCPqw
	 mj3/8xpyuC7yKQkcBDu0JanbtudEZmnSzdGYX6Yx0ULcfRSSdfI+UkPw/bVDsZftoL
	 MENoIx571BUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D066FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661946283.1833.14866243258731773799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326b914a1f192d1fb09f3a540fff34c201529b48fd478daa6da54247853a93b6
Date: Sat, 25 May 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716619462
