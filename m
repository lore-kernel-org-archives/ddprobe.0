Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322421D5165
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745906394; cv=none; b=AysHDAP6JvtYuLDd2JWo4iSYCR5Qd237kNJStwOyVBg4e488w5fv6aPrk3QyH0ej/vPjKtVrTP9tZixzkEYPdnUHnxOUIBQXBz3pP+GlbD0keCNHzCAmKGw/QzT3QPh13XRJ9ufs/46XwTGSzYY8WXFbKgTHkIjdJZnckW7Ou5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745906394; c=relaxed/simple;
	bh=r+iHohMcvxqxJYQC0z5tFKr+DRFB6UpvKZffJ/LvhY8=;
	h=To:Subject:From:Message-Id:Date; b=MS1XREyFBcqhA69l9R4cH8S5bjMYTeYptSgWTU/b/5+DoBdCzp9x44cb/QHp+C8pcpmp3LfIpIvx2jinTxMjeT2kOovWUwYG5Qq9AJC3mtXS7ctHSQ5VDccqoIpXXNcN9u/yS7wZncBz9BXjh9RuaPLT1yNxRXHnBleCtl/jf8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPUyenhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPUyenhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F593C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745906393;
	bh=r+iHohMcvxqxJYQC0z5tFKr+DRFB6UpvKZffJ/LvhY8=;
	h=To:Subject:From:Date:From;
	b=aPUyenhVbO4rZj5N/ZFf53NJXaF4DdR4tIfb0lDjPpdzuZMeQHGxcXYbGQTIj8wJL
	 No90w+JdxzS6p0en6ijeFyZqUnnBMWQ9jjuBd68Gl8STReNcskGVPrL3y6580b1UFH
	 aJ5eLpzLA6ZU7GOPXdvAqirj41wmZ6onyZQlAIAx/liMR6zQW7XBR6X7oNtTYYkZZn
	 01bHRehpEd8BY73e5xuq02KIZCdCeKduJTxOkql3LBFBk8GymUv4/rS7Kc8PcvbACM
	 0iVI9RajElhg73sZveaCFmKqutB6dmtSHjqgAF7KY0xx7gltMwCJnzFH0rn5HCbHqv
	 vs6UMoJLmUw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B91C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590639357.21582.15938713553494625441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200c3cc7afeb4f76256c1b8f1d451de795729bdd58ab56d806b9206e9a9f6ee7
Date: Tue, 29 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745906393
