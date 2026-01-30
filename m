Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0F29D26B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769779434; cv=none; b=IJ9nukSt7GP2qDa2wEiMR+o6UudPGvdpg8obCczqZKRCdflX/geKQ0PDnj55wL+QwbXGPytQ4WUnanToZ3/qNzu14NGCYNc5+VyZFgcAZZoI81dU+wHOvJJHjRih0gfyD/AWkPW+J3sHM6/krq4+myNRRTzfA788uPqmoY4VjBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769779434; c=relaxed/simple;
	bh=3tY3mQOFu+InH4shwibm6pdn5PkReDI1r960EWIS+zE=;
	h=To:Subject:From:Message-Id:Date; b=bmwgRFIsz3ghfh4uFr/7YpFYU5ASq8G/dtqp5lKe+TY8KDnEi66lu+Ktpn/+sxekSd8rItRFXSqnyfL0ihEJxSvrzZ5NqsK1MVArhMt/DzlNREdpeiSnyvbU9yeLapzdGlkqA3c0/w9Yx9OL0y4n7O+xSzAJ0UGWaXKkalTVxdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTTvFrXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTTvFrXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769779433;
	bh=3tY3mQOFu+InH4shwibm6pdn5PkReDI1r960EWIS+zE=;
	h=To:Subject:From:Date:From;
	b=XTTvFrXv9xwpZBp2R1KJodCJ7kCQ8BJOcw6rmP8+iar+5V25S9/39aqkXMqyJevAj
	 FGeutrZ1GWfyyH+Xb+UcCJR0CR35d2XSM99iIVZATgSebh0LAqtwc6Tb+czMIcheFf
	 ABckRFpwpABo4vz9PK9YXZOZQParfY7ZFrym3+2GI+t5Nb1mUeC3HdtLjDInYkfwCS
	 xBSBZ9DN6AC3qDY3WfMC95i85oZZXBt/cDsR2hMxQvKw1/kAc6n4HSVXJVgK/GrqGr
	 oPBuXTIgEm0WQyVqOC0oHFwzvVxeE1ZZmJWWZZNn8Re6Uj80NTaPn9Kc/lvL0KbYlm
	 UVXjfJ0PAeyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D20E6BF0D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977943357.11798.9601879056679606703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282e52406c2ecb93c4aa299bce403d22b7f77d831763cdc6e839531e1c4df3ec
Date: Fri, 30 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769779433
