Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2907F1F872D
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757676594; cv=none; b=Z9pOiorBwqnX/6R++2taPWi8NMOfowsNkh6prfykBgq0+kjmL/WRi4UcEV/UFketESzcg03tHJrlHguEAeMK2zSMp5nh17xpoMcizVBWeIEhxgs5+rednM7Buuk6igSUz+MrK4be2QYiV/jXd1c30Wtst8bQDBR4MX4tRXBLRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757676594; c=relaxed/simple;
	bh=oUltU6YLgWRT4OCyRYh55nKoyCSMKU86vQwHu/C69Aw=;
	h=To:Subject:From:Message-Id:Date; b=DDStYYnALPMK5/bJmSn4wEiPNLuwbvYA0H5725pqTjURqPorZKE7N7Yz7EQ1O9VOCf+ZJEYwCtINn8Mb66W0koUa4ZQRH+pFxlouRkdxBp/7vZz3dJ3BXCZVk5p3hfzKA972T2oJFMZrG734lp7Z8DSnCP9JrupS0/b47GjY5uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4tqenq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4tqenq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4075C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757676593;
	bh=oUltU6YLgWRT4OCyRYh55nKoyCSMKU86vQwHu/C69Aw=;
	h=To:Subject:From:Date:From;
	b=X4tqenq2uoKKURcJfX5Vf1HV4eBq4iJBAJIyz74j+SDye68U0DE/l0p5l8V4W3N7j
	 jwZJO9ApvC6jKVEJZWf1RqVYvd8PXlVco5TYMOYFMAOOpEQNt87P27HtBHctJgLlko
	 HWJeevMyEUTGb/R64VRaHaxp9ioEgIw1AlI+PuPV+gxqL8tVcoB8M/3lvM/MbnVJAI
	 CNl7yCSify8pqG7kY8exFNtrBNbiUp8DMxHBWWpZADyJDZRL4fIRyol2SraXSnTYT+
	 /Y83aH3IzQWnrb8nevkDyLOfoDe+3Fj3wXUiIOiyZVTPIi9OnqXhNJ/4yEgdlVjVx5
	 7D1tOqurMd9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2BCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767659358.3260.7544469572548169702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e261a969faac96209882ee4b56780b34efc6552a42bc26960156a81f9b63af96
Date: Fri, 12 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757676593
