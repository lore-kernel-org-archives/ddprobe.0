Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4812F627E2
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714649544; cv=none; b=ET2DyWOXqulI0MaaETSYJZvaovPI/mvFzez8QmernAksOui01BJZJpvKvLBo7NSD5ur5WKOqkPOSdC6UrWxDp0VFq3GWX7Wi+F+vkVnrrbA5SaC/98z8OVuWDvNrYa8zt3XITl4cYkVy4kijTGa/7JKGUwT/9doM1HWC+4RXDAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714649544; c=relaxed/simple;
	bh=WxIEQlx2XfVJ1WJ2E42/Jc+w1RpdIqKiAW10/hMxAfc=;
	h=To:Subject:From:Message-Id:Date; b=TiJTed5qFBup9WcdOrKQAiqpiJA+ATwOA03C9D9/N4FNNrVdNqr4zJ3ImEvGeccuu4g7ykbFYH2wmGhiz1md58+ne2bA6ZfsD/Yy/2Ctyi7MClgISU4uB0jcerZtHslhY5lcYR0MJ1Ve9lNSjE+Sl21v+/CowzjZW8r0urcUe48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggz4cPNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggz4cPNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19F5C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714649543;
	bh=WxIEQlx2XfVJ1WJ2E42/Jc+w1RpdIqKiAW10/hMxAfc=;
	h=To:Subject:From:Date:From;
	b=ggz4cPNLHJ/sPR0b8x6i2Wkg3cz+UFtV4tokh4KCgHLJ8Rq+uaWQoXyTEiuFPUw+E
	 L0NI2ZUSPbRXf6Igby6x9W9PgzrHuuAaHd0C6qE1GFxXvwKsbtGMn6O7gtoEDj1KPv
	 cYL3IRK3b/Oj16NkU9H0lzeo0Qx3OV7LBYjdfPvntOvvQxJ0W1g7iz66e5oNHTrRO4
	 y54hMdwNF+V6wxq71v5scLymTrclBH6r/44WX4YpxQSbMvt8zJjI0vE9vk3MWHVVgq
	 dGUyjm45au4LMUZBlgrtR16aym82De9crTsQxwdEThpxAwA6aGn4Al7ymMN2guAohs
	 MG5Ttb+kUcA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF30BC04FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464954277.8116.17982277780991528009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bcefdb63e7d46c548eb6cda4fd398b07e9d3056bdf5c971d3dc3245143008f
Date: Thu, 02 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714649542
