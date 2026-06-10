Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3521B3F410C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781095534; cv=none; b=uZw+OjWTU6nA09GpObnJL1K0tUYPn6Glj8deqb9l6xy5Ze6qFNS70Ia1MPtTI5VSH+Vdm/eN2xmFN5I/0eGK0DM+bFxznWDizxTZxIULcRfuGBOXPqfVQadJvehoRIXefrjbmpLKz8kvMjvzYJXjoSq+/FbVDAx//AsmRGqdZgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781095534; c=relaxed/simple;
	bh=2qSUxfzm0HgDA4cuPOIDaL8e32ypZZAw8/VwKTPC7Ek=;
	h=To:Subject:From:Message-Id:Date; b=XPM0MXhNqKnwnEk5yIQvU1U/VlZ4sHEXlgJeCP2Kc4dMsnKy4svlaWps6k7WsVC+9nQp5wHVKr2Kv9GExyc+/Cyq9PqKPqql8cruT6isVLtsPhqpcSDH27dZEouXuXjsY0r0FWx2eQ4fX1Z0HWJgkHlbZlraY0TGn/IwktFRzhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=az5ztR3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="az5ztR3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C284AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781095533;
	bh=2qSUxfzm0HgDA4cuPOIDaL8e32ypZZAw8/VwKTPC7Ek=;
	h=To:Subject:From:Date:From;
	b=az5ztR3d4iTnyAIfVPaAdV5pS92pfbFDuwcU+ujwvTFcyE0GddgpIiwOXgjyvCJch
	 0DzbWVGEZY0CI+al+OJsm2uOqO8p2rcBrnluzYeFtyxso8EFUetu14S9iPIJ+FeTUx
	 1YFnRGNb8Ao5UpSxKNAwbIYwRywdpzpRnMB/8OQCBHO1zg0+DiM+8mHbvgU04D9C4Q
	 vm/6OhxFaLHLuqqWlh9mnGMkd1D8/gQf0VwXfio0XKCHH3ztt4h9Z+vZg3R1CN+1aq
	 GMfXS8wmMJ+SrDuqPhZLNYUJ3RYsbrQCKJp4iVKngrXd3LZ9nBvVQZCmh2ZS9OKQBl
	 Gsos2ADlhCB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11ACD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109553368.19356.5021369764398281191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513fa00119e87ad5c626bf72e43808e1ba1be544ee2960cff90a84fc58eda622
Date: Wed, 10 Jun 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781095533
