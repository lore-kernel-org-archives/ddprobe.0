Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362CF279DC3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779932554; cv=none; b=EIAEUXczvXX4WxjUSjWDoNvUWqprgh9QCPHJbZSbhI2oSoVnfOOfBy6GInHEoTVXpIVOIVvOzH00z0otAN6Vrrd8YTDV7gLyaLBPky14cqcA4iQOPxWUeywpP0AlhbNcAqh9otdYPmPBqdqCS/YNHTAjC3Q/22xFqHW4lEJcovs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779932554; c=relaxed/simple;
	bh=0N4pjS7oniwK9eF2NRzvfi9xMrp0x1rsk5q0jfsYxbI=;
	h=To:Subject:From:Message-Id:Date; b=CZoBg8MpnZ79TNZUweQCXKsYjkNHzeNFvrSAV+GyJEq+5bxCmOGm1FCVqxiFvhhs+qs7xWm2n5wpMyTItSXPL+eLuIWTAPNF17wEo/idhEF6fw5cq+NPcgWYYIcj+rahkXxc7TXtoO08IWHGO2XJKk+QHliQe3VWbiGWyukjXtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEK+3nFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEK+3nFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A9AC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779932553;
	bh=0N4pjS7oniwK9eF2NRzvfi9xMrp0x1rsk5q0jfsYxbI=;
	h=To:Subject:From:Date:From;
	b=SEK+3nFqbDRwOWgOFtPzGhNcwNizWwsBHhjd4T+NXNqIPa3wgaaUQYEBnfAbH2mHW
	 WFiAir7jO5WIhPXOl6teKFmMqR2Oy7F9mqkRSq69BwBPvIZAyZo/pQaBNe+xQVOfZQ
	 gBhF8FfriVGJfVZGnYnTR+XpL+PLOhSG/7HLSQNcMlHEvxDIth5tQ9kxoQIwwjWysv
	 WvusKLNHxj91bUMWy1irA9zc+JBWKOq7TefcOlOCcR8uwdOTsiK9M8TDcVOHVOQq36
	 zVmTECtzFhABD04IuJznZmTY94pRbsBCKyJxBAo/4gLp5+wT4R56PlnjYmlxlUvlb4
	 EVrrgxmGbhcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01DFCD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993255371.3535.6508961657703039405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479bea862ad903c12680044397f72a24a3f8c87dc709de6378f10e4e95a605a2
Date: Thu, 28 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779932553
