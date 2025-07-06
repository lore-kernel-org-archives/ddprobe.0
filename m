Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774D1386DA
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751778594; cv=none; b=QDP6UIAyI50GXlFvRPmz0kDuVOkZTeJmj6wo0ZKlx1BNbpNQkUUDOhKs3BcZpMwVmhf33rnVDw0lNTru7cW+Fe/GSqIOS6KcINxg2XXGUn/5w0Gu4u/CiGhM7odmywtQF6AuH5RhwNYsUhEijZFvRi1vAgLX62UkQK6Vc7dcaLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751778594; c=relaxed/simple;
	bh=prB74fTiXiRAqj+D2tiVe+qDQfQJeG8B6KmBfuHuGIs=;
	h=To:Subject:From:Message-Id:Date; b=tSoC2OV6CmkWpPrdleO+HgJDy8R6pn+j71WMUMNZ3XXZIX0L/nxdXEqBKbziiTp3lckE6A+GXwzqD/7m2x8wHbY0301AASbs/D+3FH/t0TRnopWi/6O8dYm/fT4bvawzaRdOpl7mnKWjTEp0VBKiNUSS32EdOPfi7/RvuMJmyvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8H0tNPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8H0tNPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4210C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751778593;
	bh=prB74fTiXiRAqj+D2tiVe+qDQfQJeG8B6KmBfuHuGIs=;
	h=To:Subject:From:Date:From;
	b=I8H0tNPCOswd0ZgBaUyYgTM9msQg8Izoj/y3wPJwHIyWafusm8N+ewo2O3UgQ3Mg2
	 LSiJudU8XJkcb4WDSQyn134PZJRrWH6XTF9rqZ3XHHDOUV9TBweijm2L9S03OzbJqQ
	 kp1jUEacZFUxBt41i9e8sKZF3DVv8/SLfF67yj0X+YDOtkAIs+VWMqzTDWP5gHNnxB
	 0w3x9A4HGEx4mWloc88Fy+JRGhfOMyMJhwItB3KOur7raEm/2WMLK6x3dtQp4GLYTs
	 B3dbvqejJz4YCg2cuajRmSjmIcPFlckTTEKrTneuV0QGiPCkIuhTjDIkNgaMgD/vG9
	 Yug6aAZ18sA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114CC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177859357.28414.14841301593090172419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae8423d3d986638ccb53cc4476ec6bd58b0a65504365b1ce7ad042f53d3d820
Date: Sun, 06 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751778593
