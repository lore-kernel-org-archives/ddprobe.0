Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661F822092
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719082343; cv=none; b=gKC+9NkKsmMV98jDyrSqmRsjVKJB8btZHVaNhDoEWkVf7YnaiRSRMSQ9JTwKSUQJqE7kVgnyrCdg+YG/0p5OWqaL0Radj3qcl/EBYkBXOuzNAliEI8xgEnco0zpdetAv+rSGfGzq4+0d0Go2HKZQAPdLi55Rov3axuUfvBGwIh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719082343; c=relaxed/simple;
	bh=42HCoTh+0ueMfZkCW4va4hlu9yfD75DV69vXuaHlYXw=;
	h=To:Subject:From:Message-Id:Date; b=PuKI4kICkGsv+7+OPU95B+Ztb5rVW4wLMqUVpuv3kAXognN0ckOePFjVwyiTzI32wm6pjYDRIttbMLNzMnRigUvIHzWomtdPCHYf9iUr7VeHzWZmG494lt4LzClBJldueOuwaVoASDZPJIWLN/A0yijC3O6bqAnp4F5/+FyjjXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U51b4n+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U51b4n+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4201C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719082342;
	bh=42HCoTh+0ueMfZkCW4va4hlu9yfD75DV69vXuaHlYXw=;
	h=To:Subject:From:Date:From;
	b=U51b4n+SzAt7wEgNDQhTefdmSrV7tO0U9lyuclcCmkwjLKTO89L9xDrySe030Ds+N
	 CTtvkccj3zRmZ+r/CKklR6Qv4KZ64LhwWI/iVikE3O9TTPtpaQOkAxgRIijZP0A+gJ
	 CqPQUQYeX+9dyB4NPx47U6ta3pCU87Gn0lWYeeRvd2QyQjiNHnPcf28+6L7WMcO7Oa
	 ceVelbg6r6reFmweAFqAuWAWoIs8lV8iV9/Nkgv6bZfW2B0c+5laJKTYODAsQ/vknN
	 kC37dQZpWOC4o48FE0fVccvC9e1ftxoQjMNKLWETVXtRJHqqK1wlEwFejdFwl2Cw61
	 /eYY6ok9nrxxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC80C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908234279.32158.9321714999504833613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3bfa752be5225959ae078fff668198035f796406b3598fbb9ebac42121f588
Date: Sat, 22 Jun 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719082342
