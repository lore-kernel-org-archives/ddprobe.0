Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91078F26
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754011794; cv=none; b=NI7vp9igOLQzp2gfDgyVrrHMUkIFo3y72+HacYRW2bgBnKEipZ4/uWrTttoheRvI73/Ke7yrHrxrthS4s4fxn9p2HyfB3JreTctL2KRE90wV1fAm7rJfLCqTb+KHrxXxmM4IflsFJcAMAuUzbNAHVXxbW1Glk5K5CWdOfjijdJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754011794; c=relaxed/simple;
	bh=BCmJy+quKbSzaWglxRaiHQsU7gRAtpnW8b7E3XiicQc=;
	h=To:Subject:From:Message-Id:Date; b=glulwQxNUgh9Ue6gZiJErzFroFSc44A8FNRORNg8n1AMSYOXITJtISBYxZONiDnIynM3KIOCRvfsxdDEAYJ2/3UI+wg5c7j7nMMhhglzQ2BlD+OBQDhJ1tGfaySrZ4tfW8nOMizjb5naZqGVkdv80O7ArUBVb09fBvO8fQXqEDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9qvWBND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9qvWBND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFADDC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754011793;
	bh=BCmJy+quKbSzaWglxRaiHQsU7gRAtpnW8b7E3XiicQc=;
	h=To:Subject:From:Date:From;
	b=t9qvWBND4to2InKDeWxQLBXHOSQm+eJLfAJtmv9EljIRfii7MsR6YwB88jJ8sPiK9
	 sbSr4nvxcuDWzMjGG6DPfAFquiqXA+5SQjSFBb9rmYCTzAGv+vuSTE6im3ag4lcPf3
	 CaLnSLayVqqs4NIv4l9yT/lKoqlAD5Q3b4+CgryAlNVcYTt2o3O/IePREOfL+2XuPP
	 4axWfPZkJbD11kTYPASKg4xkZ4t6wzvEKiU1+Kpk+uQXxh313dOxq2OseZdHBF8NJC
	 PUltZF+adrjLTvBG3TdeDQCRAzyocyGwdmbB2NfoI4d+MtfIIBAROgYpHFQOqWYOFE
	 8VocnZbhiIeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0992C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401179364.14516.15543044132617833434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e52585f3fbf47ae4577f4d04fab48d86791dd0b69aa11fbda2e9371349ed1ea
Date: Fri, 01 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754011793
