Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106DD1E1E16
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779646954; cv=none; b=Hr3iG7AUG3WFtJsxAF868IlHvYQP7ff6W2DydBV2YYd8kCs8NZPIJq590ytcvw7C+P16riv2W2HgyjGcX6kDMwCiKNaFKG+q8mPZqLSChIXr/WdOdIQY0Ix7y6onvg63Z+uFykLF+QjOfUHLMWZOA6rX8/zoxc0NJlfPQEcmbNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779646954; c=relaxed/simple;
	bh=bx6Z/N1CiGqkkSJLWUG24Imz3dmJuxizmPkxUIbVHwY=;
	h=To:Subject:From:Message-Id:Date; b=HbEzq/FQY87Ad+DXNk2Ehvtfak5l4UVIRPfptWfF8c7pbpUVUUjo9A1QV/UUSL/yISzLjLCYEmlzuOF4qhtJl7nmIx2ZY/Kklck6ca5nAWwlKw3C4fbHkAlDE++uiZeTwutULMGQve5tGgE5ADRqvz7hRGaO/DWqWHKRkTn6QIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cuk3bzEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cuk3bzEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE17C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779646953;
	bh=bx6Z/N1CiGqkkSJLWUG24Imz3dmJuxizmPkxUIbVHwY=;
	h=To:Subject:From:Date:From;
	b=Cuk3bzEmnqJGf8RjEEfJCKfM9vy8gFFrMiU7rBZwSiCPBAXcFJoDDGJShvIlo830p
	 2ziQbkRtGUaix1womtIlZCUxXm5/UDuCRXWBoOqZz8If7WNuoB+Lu5K8CdmELUrSaQ
	 Y6lZVrkdx40Hz+zMFhGJp4o8DrTYUIIDaixP47rr1LlaizUX4HgxY2CClmcicDBlvo
	 M+RoMbgZzJ2O3fQIAqTfjfbueXoLyYcomBzAr60Yx5yXF3zsgMXczvhNwg1a3dPirc
	 fKKU03hCNCtyaF9aq34Kz4vi9K9aB5dWZQIvo10D8bHziMPvOONRK2Zh9WPtCIHvKd
	 lNw6PDwUu8LsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D31CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964695368.6319.9267969927554623256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d810ae92c81b61047685a8ce0cf31fe30190e7a551946614a092365bb89b99
Date: Sun, 24 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779646953
