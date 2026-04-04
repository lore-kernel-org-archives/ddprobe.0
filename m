Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400E306B0A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775338534; cv=none; b=ldfkIBk+hCOS62ISW48IV0CRkdL9SIBcYvyxnFO0gT+yoiJhnlnkWh66aq7I9mW+fYYXFvvGcuFd/FtA3KABQS8ypgZqI94Qrn/D2eLvn+y5f72fTjyNUCQ9DnjsP+KDxeqof1K4tVxAtUKlXByHBlPQg8/DllBX2hi2e5WZ3JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775338534; c=relaxed/simple;
	bh=Ko3Zw3wpNvHYYUtrZkfL1nmgqVWZH+I1BPkrHLk6/pQ=;
	h=To:Subject:From:Message-Id:Date; b=krxWDNxvm/W0rSDrU/F1gdVG5Ic+B14LUh6QsATfsEVZ/A3n7yDh0qM1no37D1fy5hj88jp93M+funEjy3yjXHDstbPmD1rn0vWou8F4vlRiWNPyRRgu7FNb988+il7195BlmFnW0980z9YSm4L2OSQQ/c1dHVYAfVCv6xqh2yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9kcqe1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9kcqe1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06E3C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775338533;
	bh=Ko3Zw3wpNvHYYUtrZkfL1nmgqVWZH+I1BPkrHLk6/pQ=;
	h=To:Subject:From:Date:From;
	b=J9kcqe1uarD4LvhoWIA93s2Qm3QPbg4DRutawKgFR42Sip3LQ7xzHXjxWCSVT1pM+
	 HpvVt8YPqKn11XT5HY2+CU1XZ5ZqMyi2WsyUsXLjD0/vwHcRLb3QrjyoRps0uNnidn
	 uVYp7zAAyE00aYtcjdHVw/j6x+mh2awhJQPJX9x8Z+6jhBb/YELDd4sX5Lu3lVEKWy
	 XMSiCnKwFj25voRy/rTvg6q5VKskey5mEJG8hh/PkERLx7+A+Hbq6BBGMw9ADlKoVL
	 Lrz8zhnJEagWNwv4VG7MvxU5n2kS7XD6rS9JOsDzIbm6uX+Ab0cyefj+vAR8tVnTKg
	 9iFn+BIW29EMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D5E63FFC
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533853368.7062.278956675365181012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bc33a6772d9570833b01cc2e5241aca8f891e6dd93262d9e6cb749067d269f
Date: Sat, 04 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775338533
