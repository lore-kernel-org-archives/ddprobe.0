Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE3338F80
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760890194; cv=none; b=OtcAA234EbimdTNtRmiyRrGsJNJd9NsCLPHg8J/k4JqoY5DsURDXqaRdCO3nFzPalvwe9kpw2gxenOVBVQ6LdJGCxsiTu4vHSAx6dovE5FVXe34Qek3ZV3+PMnn1l3+1dJGNP4nywIh9nwf7fsrpgq17TUBkVWQ0uUkkaHqo+74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760890194; c=relaxed/simple;
	bh=uSeXQUv7ojcGgrR+3PxKFTJX6CP4nvGC6+UBcr0UJDc=;
	h=To:Subject:From:Message-Id:Date; b=T0xh9VlLEVdnV+02kwJCk3AFJhtW3u2lYBfixt2J8A3Nig9rNl4Tlj/uTI3rQoetsCETG1G3H7uKnnhwGxD8ixcKfrSLbzA+1dj75OI6oAX8Om3RACNDrRaRWkh+V11HQwX49WqHnMVihoKGx3tbytcpL2+QdfzvmOB9ctTElyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eceA5jyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eceA5jyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0374C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760890193;
	bh=uSeXQUv7ojcGgrR+3PxKFTJX6CP4nvGC6+UBcr0UJDc=;
	h=To:Subject:From:Date:From;
	b=eceA5jyO2cZaTDVgHB8s7qdbsoivZ6GflrffYGPUsR9NV25ntx+3NkMi0ihKXsTKy
	 vZSfrN6Kqhvw+JdZeSL831AHYhUHKP9idAWagip6OHrPbTwwEC1vom7lxQv30kX2zR
	 YGjXm4aXGOVJikCB3LbVwxO5f2OgVHLhLqwBB3vcENAm6r+1plwRVkq+/PTwGP1B6W
	 qtE27tn3TqSd0mOfrsPbhMwfJyXUso6OLDFgSpy+5SWGKaBqgkNyaJu14aZ/+OoblQ
	 bU31F93KpH4uy4HrEiuRzwLrghL8rjeziUye5x0DIQEHFXC3A6gDaAyWSx6j5zJ4KH
	 rPJY28AvpPyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B7CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089019358.5249.120776718877712985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d05bb212eb200972ca73139f775bbf6ed2ee779cdc6aa844fe4b2a404ad9139
Date: Sun, 19 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760890193
