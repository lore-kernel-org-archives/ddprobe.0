Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F0D9463
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737525354; cv=none; b=P7VZ4hLOha2YvV7YwZcD4rK7kSwU+TcM6MdQrPlp1uc45bTsDuFBqUOHbpUNJb+1OuySrpryoZXQiKbDsA81NUurCHcEQqxc7ToXJ/jrZqtxCCIRApsG2xQQJxkgEcMaF1d5VUBoNJx1mOonqTsf5QvA9M1XAHQyKr0io7DF7Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737525354; c=relaxed/simple;
	bh=5bI5TTqbX1uk+ZIqy1r9+B2cpmqThbHt7toirnZa8mE=;
	h=To:Subject:From:Message-Id:Date; b=COJcH3fq5y3yvOQhtyv+IwmQpr0cAfdYVrzAuZDVxrhai4BGFJcCsWR1YEM7EgkoduGhHI+s2LMtZRhzX17zOei8XbyMnS8uQ+4kOW96euNkJMGVRGrKtZ8NqF6qcjgnzynO2Mo2D/OFRsvj9Tx/XcqzAT9EZLCTR6Y4olqD+c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwJE2cRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwJE2cRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5452C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737525353;
	bh=5bI5TTqbX1uk+ZIqy1r9+B2cpmqThbHt7toirnZa8mE=;
	h=To:Subject:From:Date:From;
	b=dwJE2cRXziqCsdg8Xk2RKPXkbn8o9MlyMCsnPINpsmNMwMJhK74BjupB4ipANqPDx
	 NkOleJx+piyr1tLI7djz7MR9n2BvC3Dast5THrSKMjdeLeRvZtn2RTuP2iAQiDS5MG
	 zaT4NANDj16flcftf/w4Odj93z2N8pzSue5pJ0M+wqEO7jqnYpTrKfWHQtaQbMu9yo
	 nc4biHLIDD7oFBeJhRyDSL1ZBEv36h8ENg+9rAybUbUPErxA1WGH5o6u0mCP/must1
	 tbJo4TyBuKyarOMbfpalFnc/Z/wSgmll/ws+qxl6mOKOPHaqQwWgP5CfLIz0GUpqxK
	 vX1GYxJ95BmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F01C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752535359.17981.3168906017532156557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d35528b13c9bcce3d6044fb2a63a22c048961d93ce8ef28d8675bc848941a3d
Date: Wed, 22 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737525353
