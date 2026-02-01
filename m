Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13130481DD
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769990034; cv=none; b=OQ4/uBLdjWZtI92/esXZUcT3i84AK1XJ872HZlYfIB8PULQe6tsYSfhfT1MjaSrKrPGxh6spGF9qdZm6rrQqSkTrp2DQBVhMfxWRtrsBT3rBL6rEotCvQqaF5BJXUSAfupwzymMzMCdez7wDaXp/EY+jFmdRECY0O+xsFuAGPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769990034; c=relaxed/simple;
	bh=xdiTJi+14Qvg2ppWXSVkd4B6Uzi9Rj674dE7wKnA72M=;
	h=To:Subject:From:Message-Id:Date; b=QesfglEfPfGkcUYajFyJo62NLGqn9XllZwrTyaUeqSydvzJLOCpfDMeSN64k5o2bsqqtA1VUnRCSM6ZsA+DYwPgJHiQGRY96sAt7uGprCBaoOe3FGWLz8tOjYvjBWH9rJ+tP9oHZJm5bFIwi5Cp2+r+z6B7WzVgX1KpbgPMO/84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TssG0BVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TssG0BVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB65DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769990033;
	bh=xdiTJi+14Qvg2ppWXSVkd4B6Uzi9Rj674dE7wKnA72M=;
	h=To:Subject:From:Date:From;
	b=TssG0BVCBIcBcT6ZYqwrmqCJVNBsTEChaxWFEpt/TBecYmBYK//cq1F0uJuieHmx6
	 h+OPbvOBT5q3lpquzRD2N/nc6MzccmCJtibhW9Tkzqstzr7egqhWh0qePblSIwS2ji
	 oR7YcWdR+X44fR7ZwU4XvgoLRfL7Bs6lM5D0J1o0IQX9L8K+YPMREJZCujEBa0UU02
	 mV2RYAfvgxouqhvIJhQf5j+pB0mcgngXcDPJnM1znmTLfz5jFUboWQ8qt+PFK/bKYo
	 VqGL2qaEld5i3sKZMAw4pcZsI6YkseiQ6bQMwerunZFQUYLWDufW/33tn+46SgemCv
	 kXYmzIJtcaLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978BCD172AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999003360.32759.17829371148591259692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b08040a3d3822aba9bf6a634f16df431790de78be9f8158e5cda872a628cfc0
Date: Sun, 01 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769990033
