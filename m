Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104243101B0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767163434; cv=none; b=dZbFLJAOE1kgXhcBan0SCSePMgsZDloeUDfPxB9O14v78rhY5fAGVx35XXGJi54mzv0tblL2FZB2fPbTHLyzKoHCy0wFj8BiW44j52ngpgznWBllA6QmwwaWf4wXmJ51qerK5UMGj2jdjEVm2IcOuR24FAgHaRbYcIlxjNkTbI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767163434; c=relaxed/simple;
	bh=27WPiyzkQ0acK8xea6JrRB+KekeRiiIYQEiw4Kwrt9s=;
	h=To:Subject:From:Message-Id:Date; b=HrHmE3LGPq1dfEcPX8H4CsmWjhlRPy1QXv1tjRahp9fYEhwlmsg3W1z4DrfZBVq+wLVhaDn+YmbCPw/kT7nXU2j4dAGLp2zFyMfho6rBS0S2WtzfC5akB6baDSyiZ+Gml6nL+isM7fDYGVI9mlbMdnBV5LD7++i1XFxTkTuUbeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb5xQUpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb5xQUpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F10C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767163433;
	bh=27WPiyzkQ0acK8xea6JrRB+KekeRiiIYQEiw4Kwrt9s=;
	h=To:Subject:From:Date:From;
	b=sb5xQUpYO4ndLiRNVIhh4H1QkoBK6tVUonlchRCuP7iJuMTDoL9oZCkZ3QRKK7pF1
	 dMwiAX4B1ELOAvpXmlu4GZKvHlB23zwiJd7qcM3MTzmPHfkdh9J5X5XDT9FYTcFG2d
	 /iavgSupA5J+NY0RFBoPVqOYYY2OzAoICRJOGV7RHzyn41V0isslGAYnt4D5YGSJjQ
	 rpSZOJIBzyJRNjmpAe7p9b6v1PU6CbitnRFWzSAt2DIXKs/NE4Q3e6OxRIF1h2u4uR
	 UQJJtyg3067N7Zm4FmHCnY8s7Msd+0zOwQuoMZtPEZYEItHBZ/iJOd8dYOJGqdzwRB
	 Qz1Lxov6Jupcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C7EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716343357.8833.9054167288496752379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2828146d9d7e1eae468c510af1ca70b0e045736d16b639f256cadfc8c9dbbb1
Date: Wed, 31 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767163433
