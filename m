Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B8443C29
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790842834; cv=none; b=kUFursovxNLPTGkx4lpqSzAbk0tkSOc36n6SVPFTxxnD88K6C5r7l9WGqCB39oZ2xOPvvDnmRrCteGTzAt+1mnE2xejbS3cKkGwN6r3Z/8T99+wmOSAOZ++yEcsFtpXX6vRUWqipvDO1zpCmPtNiMA7ifnqYsSGXFsrAOgkJnuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790842834; c=relaxed/simple;
	bh=xgj4NqV11utiFOwUIJ36zjoelz/6UqZDIBxLRR/I6nw=;
	h=To:Subject:From:Message-Id:Date; b=EET+HHrxUxZ1KrCV0OunLZJe+Q640+yTApOWWiXbUkI5fO94adf8HaRYYyzNdZp7I2f5FJdL+UNstll15CPPy7Rmmll9336uzNUPDkheegkHGcXV/ZBA4nfWw8NPcMeLiZMpWJF089LC3p+NIb+/0MTrY/RFhbMrUGu9LVH6d10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs89RR/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs89RR/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D468CC4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790842833;
	bh=xgj4NqV11utiFOwUIJ36zjoelz/6UqZDIBxLRR/I6nw=;
	h=To:Subject:From:Date:From;
	b=Rs89RR/LVRS3JYNraTMtKyGtQpbJvleW0iJ5IqcIIG/pbvzmOELvwD8T+wCqFitCS
	 yMw4gGBT/vSxWuOEidILpD61dhVSsnHAbUqlwKxe/4JUrfszkZSfmA+mXw4VY/KtDy
	 hCcqONb3JGioXiX8G6jR+7AbIIWyAvF6r/TTOoWNuNXUkLJZvdio9qKBZRTfa7EqVo
	 ChiWaxbKw7kifgTCKZYQSK9shnlHxAjvJJq1Gw9tFLTTBiJpPBnUE7xGrzMj60y0TU
	 LDjZkQ9x4RuLI8Dq0j6hjnzWPn4C5tsZr93oU0+PFUV+p1H9aLFFrjNcf+/QD/1bN9
	 IMDtGW5z6XV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD1DCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084283369.32637.4922825299316932722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9bb1f067d30fb21c8d924b6278abcf79103bcaea72fd6187bea65ab05edb26
Date: Thu, 01 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790842833
