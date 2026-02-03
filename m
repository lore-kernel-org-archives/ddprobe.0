Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B653D3B3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770147234; cv=none; b=nvM7LPZonK1hwpiG8Wm5bk2uzixCbDNIhtoOqk7icausL6pVulzMJaHZCygX+kdlfZKhRhf527xGZwvzFQ7x1JnCJyc81fBlWgJH2gW4ilQ08iXXAnEqU2G8jRJLr7RaLCRey8imhwouzqRnj1kfbwWmvQCI+SPemUwtPTruV40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770147234; c=relaxed/simple;
	bh=Bz5YlYpUkaCvEbeONYYqqLzme/AJwyUfD3X89Q01O74=;
	h=To:Subject:From:Message-Id:Date; b=IsNGaYGfCjx6vr2XoyHrA5OJBmG86qZ6UaWyjCOKbFhUJzaGgvTGdklCeiY+dNXUMXCFmzDLCBeJUp7akqJJiGKXZ/1jkPXwPZG5CYt2F6DW1mT82u5zyxtLZWR3Gfib3d0G3h3kta7ulYcFSqOUC7GjA+u8F+PyLQrzWP6ZCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUqXUSDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUqXUSDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD052C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770147233;
	bh=Bz5YlYpUkaCvEbeONYYqqLzme/AJwyUfD3X89Q01O74=;
	h=To:Subject:From:Date:From;
	b=FUqXUSDe9erYlIZ6RMfC1ZjZcshKCjE6R9QGQExIxXYvxKbGR0EyfkPZxg9tvEZlk
	 4eRIpvu7lZc1N3cvK7eEmxlvh3Ux80i4wB4fiN4Di3p+2VjTzFiHi4+JK94j3JOpOO
	 upX3A3Cx2refS8P8J3mkgtOnvBFM2kfxe2zP/fl0O3m5DlOmp5Jq6msj40eoyZHbNs
	 dZSEs7g5NgyfywgDMbiWjJ7zxGhZxfYm0qhC9KQSKfL1tauUwMq+PvAU506NFhY1VS
	 qBAosh0Wmyw0JvogVsp1xVUIBonmxx2y5pBUrc9LFty2MgY58Yh4LNbO5+tdq2GBYS
	 IL5jYqZxk3spA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B669CE87859
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014723373.18291.12733175771841601912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41401c77ea243fd2633bcba1e20b46a71a5c6cc07b40fea4ca5e4e153602622
Date: Tue, 03 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770147233
