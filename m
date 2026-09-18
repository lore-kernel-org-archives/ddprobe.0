Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CE143DA49
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789727434; cv=none; b=NdrGMUYZ3H4bs0RomMUFGGM1ci9LT4g3u/Ip7tJKU9mKFsIqHN7gGVsYf7PQziIiwQcVflzY5roJcz477e9G/oCRA3o6wdBhp0xw1La7Y8yXTnnF0QP44bZzNlBvEWBW1KH3yS6PiL9AxL8rpy9w8st8SN3X+st2Lo52/XTNv84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789727434; c=relaxed/simple;
	bh=KkC/R9xMfMP77RkXawDU8WsGFz+bl4UcWKYrAtiepPE=;
	h=To:Subject:From:Message-Id:Date; b=fBVm+WeMAH3ycQl02TEXK49oJPFjc0XDPqvyQ1ToJvo9HK5nYkmVNkEY3qtpmkoF+vOw3f8tQ6S/jkGmemJtCBYOFlkm/x8mK3yDbACrW0OdM/v8i2ukW/zn20/UikohiG1xTVHYRRiBli72R04uStdti4FKlY6FG+A1Qy1qPjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jp9KjrhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jp9KjrhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC82EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789727433;
	bh=KkC/R9xMfMP77RkXawDU8WsGFz+bl4UcWKYrAtiepPE=;
	h=To:Subject:From:Date:From;
	b=Jp9KjrhC/1iknENwxB0dDpomh1GxW52iDcZYn7zmAMTUxlGXW80NvsPx5Pp7j0Qm2
	 fgYv0Zm4VQXWUOQfL2hiDRNH2R0ekOCzCfxXnewWL7Xuypvy0T+gKsQpQl6V/NQZ63
	 p/s85FnyQIXZooDWBnZWV/IG8ttXE0RSqb7o7OPywqGgDkWKVvfUD7ex66z1DxxOzL
	 zKU6dC5+4ja1kI6vQccu6Gy3B2SXTbXQ7j8hAwHqCYrD1CV4Mj2IaG2pSGCgwbIeS+
	 2wS792IBo0O0HoqAvaJ3zgf/vlzmZ6ZlHbCMcVOicW8BM4b6rI+zTY2jszjo5luTCq
	 5UT0TuraPk6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9842C982D9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972743368.29784.9150531699824254730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd891a445c47250ed638dfe2528d596d6d225c5cbade1ae130b1da082e1604
Date: Fri, 18 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789727433
