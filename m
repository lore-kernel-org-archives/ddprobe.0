Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1866E1F8691
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756953594; cv=none; b=d5S2Uflb7janmqT7HUXUfCdwFvw6a1VzRNuhEDk6tlfmob32p+5610JXdyOJE/8Ld81m758KUFcntujgC1PlNYzP8Hty3jzHEUnW2/mNyVw2gKeUKQaaIzrulVWhM29eg+JTBf827zPrKslBztbmd/GOG3u3Xmn94C2JKlQecyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756953594; c=relaxed/simple;
	bh=Y1QkoKOhthuoTJq7SOvHBDgecumpDLxF9bq6Q4M9Ric=;
	h=To:Subject:From:Message-Id:Date; b=Yi4gz1x+fnXhZoTleHsXMsjrLNPzzVK5FvIKF6Dq52mWsxdlvrysxAdo5xr4/JFvR8Im5exhCDkncTTX929C2wSwJL762f7PsgN33uSqrxZ+pE+lC7+LMrmF4n2Yi6tt5EiTO8E4PFUw3LufQvk3TxPaZCkYhcM3w7ctfy5doPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUH6oYx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUH6oYx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756953593;
	bh=Y1QkoKOhthuoTJq7SOvHBDgecumpDLxF9bq6Q4M9Ric=;
	h=To:Subject:From:Date:From;
	b=rUH6oYx3sO92B0l9P2RDzBFRk1QZwxAlwyBUm4FR2j6i081Sh3zAjIG3z63fP/ooy
	 2EXvjUQAnk25Z8tzoOIjEgfxeHHdl1rMJxFs6EIitpLZ/AYGLRfB0b/8EJgeX94lR5
	 CtuTagRj75VIrZNh2RUy2pYUSS+DSOe6hu9q8rKPOK9MePihW+xplYWb92Ta8z13Z/
	 3NIwwOG9IXPOxMP03lGz4tzdZvTnFMgQQfjCN7phthtHlTtZ+72CTN7pLzDW4VfqZ6
	 TCCFJ8b9IR0An4M6FPguko1sLNhTQb7bfvsxzf9VFzLrocCaxO54bc8NY1ZoHdaEzs
	 Luwk50l3COnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90536CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695359357.29855.5269598602285191298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4053ff186cecbc86f537b9bc34ee67e22703d072bb7c7e4ce477fa8cdc869259
Date: Thu, 04 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756953593
