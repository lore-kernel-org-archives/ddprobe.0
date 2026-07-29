Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE9C3D5236
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785355234; cv=none; b=AqhjqZbQVIM5+7iX7WW71RyErowzrh7X2jc8Fm6CFyL/rkB9yU8vTdUhYjxLiAJDoCRx3ytAVgBeOMz/tANy5WAUqq0ZolXoNlzc9EhX1gb6dnnVtDEAP68I6SCbjnhvm7eKxO/F7DEcOaprJB5oMHtkPYsrzHQffdK68GDRxPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785355234; c=relaxed/simple;
	bh=IFgUor4POR6fbCDQNRtz2F66feGtHRUBvyJzWBH36+U=;
	h=To:Subject:From:Message-Id:Date; b=Zu4ua96q25GcNgx06izrQIajhTVHnZtTnbIbs/x0mTK9/CEKQLy5dRcXIVs6MNQGgW7Y9uZWWAAc8wNKJlt6j68rBycU7oazKm+AkqiW7x7+v7iAmMGv6mqyWQGMo7Y6hJbpObU2ZERqypaQb8F26vmcu0C7TKOiV638GiGUHwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh1LTUNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh1LTUNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70C4C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785355233;
	bh=IFgUor4POR6fbCDQNRtz2F66feGtHRUBvyJzWBH36+U=;
	h=To:Subject:From:Date:From;
	b=Gh1LTUNtVS+OlEYSw8UIVMU4DY0Q6WdlHweWlZv93tlp6XSOcEqbWrElxI72oyg4w
	 NpyGoDVDx8UY6OWtJx5S33VEYBamQ+HQFtZom8R+XqqKAQXjshvL/Vx4DxQ1kJW5l3
	 +tXCshDEsKgy3SNvlqENkvco8pRFMCJkgVf7iBfz1bhUjCKd8eF5nJ1UgvwHZb42vt
	 qMm9K6wHKA4EgohCrx0g6nLBdIf9qF+Obe1ziyU+9L/gwnx7ix1LL/Nm/4NTE69YzQ
	 pXdK6Xqt8kjO+rU0r6YBQRaqYFA7l4NSxk4aC+KDqP/SSvAs0xmosGCCBe+swSHFWc
	 DgipxCglmpOxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EC3C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535523369.2050.7978125529484577891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab5f635a949a1b1074c79d0356fc88421761c04c8035f7bd483419fde814a89
Date: Wed, 29 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785355233
