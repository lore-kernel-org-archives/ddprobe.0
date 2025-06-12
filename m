Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3046D72617
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749715794; cv=none; b=hP7tHChRVWSRdI8oy6sAWAsyM8ri+AK5z+H3WR6C+5AX1CekoDBAZXxAzcDozyfWTdp8Z+9JVf7PnFqEQF3Yna1/wO7vVQ7tx86IN7ZP/UNgBXbZ4t36qmiuoSuOBA/qE+zlw6fhaA4rXPdGcx/PTD0tSGof3AXkGGIswnutWs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749715794; c=relaxed/simple;
	bh=q6Dx4yEzUNUEycg+t62w+poUPig6vnyhb1VMz7C7/T8=;
	h=To:Subject:From:Message-Id:Date; b=Vp7nb5IxCSnKguWXgoA3PjGAWGQe9SBUPNF1CQXRsIpBbe2LsmJGfOSyDElH+KD00N6mPC6JfckV0PHc9fUN28oyZEs8l55KKH5u/qFvg+XOUGRG0/TW7qLjoJ3/GqeqhepOMkKhKlphpAIAgCfNHAsA5wNDfpa/v0bueqErGHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcCb6ou7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcCb6ou7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA47C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749715793;
	bh=q6Dx4yEzUNUEycg+t62w+poUPig6vnyhb1VMz7C7/T8=;
	h=To:Subject:From:Date:From;
	b=LcCb6ou75tFdx7xfIempIxB+n/p4BYU5jGIJQ951NTmcLGmKfhSZxxoKKS/DxBlXA
	 G0enLZhWxSxkavBwVa88GG/BAjLjRw3TQrkxyy585ZZtPxmLiiHE8m+EdNpV3hEQdz
	 6pBwfV4SeHFYEbqgOI4NX8KOjuxZysmaybZIXiRIQgowc7h9sKQ6eHorJOWQQm1vnN
	 OFGs3ABSwOzEIcExtMyRKekOBnF5vVFqMMwTbz39GWpbv6kXv+/OgeejhXckG23OFz
	 SyGHkPQ2RRLXilnwmmVro96yWm3YUV12AdrUi2BFAe3VF2unXSp0x9VB4dXUfmqAkC
	 Ny2S1yIIcVufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE7C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971579358.13799.8812566864104504250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f95ef857cca5f1f1ccf032f8a9196e0ce1eed5dc307c2e57116b888bc12f3e9
Date: Thu, 12 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749715793
