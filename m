Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C2826AFB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747111194; cv=none; b=iOPYeEU2JqXXmS59UmeSkKwKxZw0epXgjlg/B7A5YQhL2NrVTDHvpeoEcuVZt4rWaEHcbmGMy2wXZWzWZ2ew7dcmRKYzCSTfG2bVUBcjLDkbYbvg1BlG7kuMNcahCkM9eXc5J0wO2BxPTpkTib1/Km70wZRxwq9vSQH0iBUvylA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747111194; c=relaxed/simple;
	bh=KlNZNUE7RdN6LhQBna6FvI9kps92aUGcEtRmRaJFn2k=;
	h=To:Subject:From:Message-Id:Date; b=DGxsTQJXWTn2RrtNmETHYqjbDK+Ew6RBJ0YcuwrFv+il6MyVK0ZAaVk28tczivf9ZhcG6vkJkWbvScsmIL6BYjTEu3Q2mhmuIvQJSHkmmK9YxxHovtoatQq+luvSXSFVQO6d5wtDzz5z6VLCO1l/NHUYmrlkC7sXYldUeodC75c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBPBMbAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBPBMbAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9264C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747111193;
	bh=KlNZNUE7RdN6LhQBna6FvI9kps92aUGcEtRmRaJFn2k=;
	h=To:Subject:From:Date:From;
	b=jBPBMbAzW7Ht0pLpgqPj/tEOm1Yo490y5zmC7dzfeOEsLSyDilaOUymixR/GX7crD
	 lXA35io49Mif47G8gpG4tPBu4O2dfT8PZuxpcNVx4rhGz5h+A4gtdzdtg3zpZQ3c8Q
	 vsw7I9LY5GaIiC2Cg1m1usK7NH9TJzknDhm7/W2HvRV9od/ZWkbxXzr0SwZBcRTjzm
	 HYw/V1ZPn6sRCKzDiMSc4MTy+Z20q6fK4Q57leVjfmsqRi5NE/fA43TgzQ3qdXBIYT
	 Of93Y1BSSF5b73W+gEue4UZG71lMdHWrKiCF7GGtFsTPy7G6kPdC92CyFyyXWI2mj6
	 UCe/WQW/EsAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C95C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711119357.26893.751286629771426806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134ae17958da1590632e810be77c1fb90115c3d86edaea6b3a3532859bbbddd9
Date: Tue, 13 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747111193
