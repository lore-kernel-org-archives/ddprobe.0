Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263D42749ED
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775417134; cv=none; b=gEWs2JzrxVAe3/Ypk2cA2ALMPM53uk0DV5jvFWFg+6wbqdX2YpWimDwUl+Mrk34k57V6u6JbUxM7VWg7XYCxc79JQ39gYiK2c+7vZNBfuED2l+WcBv0+Fe4izSIRCXmBsfyJCeVHZv7BjqWomnx0solHUnJggv0WZqOXnnLq0U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775417134; c=relaxed/simple;
	bh=8zmZOlCuK/Le4atSzMvMJp5Jzu1e5bzf7CgMCMzvZXc=;
	h=To:Subject:From:Message-Id:Date; b=tDC43Z3igO8W2nR3MI3JfY788dzMyrRDDBBcsXht4/wPcyp1Nvv/fD50wtwHIeZo783uECXwGI5HDNue2uv6Xb9kdLb7u54GsmsSnHoA1gNIlBnbVVUyfOFr7ujwWYdmmAE5Ojc1WbmuxX8e4Y92oqVSBuVQcaOXS3If0TGmKcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XU1LWjqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XU1LWjqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C16C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775417133;
	bh=8zmZOlCuK/Le4atSzMvMJp5Jzu1e5bzf7CgMCMzvZXc=;
	h=To:Subject:From:Date:From;
	b=XU1LWjqG0tHvpggjx481IBVS0FSeirUXCYgGp+4HD9kJho2J7IpG0p+hodF1Z771e
	 i4AuiR1NLnHeQCC+o86VvszHsjVIUsMvO0wEZnnc8nzFwKcIvAqDRAsMbGkUzK16BV
	 tNkN+Y7r0s8ew0ppJ0puKQ1DDrEsE/qzLqtuCyil8bfBZwF3Qffsz/reZI3Mc7RH/h
	 C8Gu+iw+6PmCwJ1UGcxS6THApKopSQveV+POBN7dZKo+Pg1a/8eiFKTE+9czqEFdYg
	 e+DOmdkjhR6yL/vmsu9Cffs54bg9B5y3Ivob+7ui35nryokC62cA+Rurs9P4vNdxmR
	 46afFqHnFxplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0429E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541713371.8753.16621707484367690176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3620854f2dc57925bb584f405d545bffb1cda6265a7d69777a0d182fd124df
Date: Sun, 05 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775417133
