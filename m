Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206497494
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753377594; cv=none; b=W6OXf9jbQc0Nf7aNTkDegWLBOwjcA6AZunWHYLHdWVdyJ3W3pv/lpeQLqsfc5Y+f/sDKIPdu+aLoqLwHvygE/NKhASUZjH7t6gZ1pZRD5yZy1lC+eAovG0RtHLxCb/eu4f1MmKHY2u8kEbA/52l7rdeSYJNuNultgefXt/E1qLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753377594; c=relaxed/simple;
	bh=koaSCefSQPdxF/Q5zMTq+/DQ6ZZCb/Vffy5CsQ5lcwk=;
	h=To:Subject:From:Message-Id:Date; b=dCWIB/HOkDfxrJ5vig/fGy8PXlJJJPp0IVymL8tXgPqVyfYF+DMlLqcsSPzVq45eHzysH9HY4CR9fkCUBEMohBWyu9tN9MMUBcxS/JEHjqWZTramy64xrh4kASNBSmRq/pCkpX+zn/BK1J4I+KJ2ViwXgza8RnaC6xEF/qf+r9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+eRrGSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+eRrGSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0742C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753377593;
	bh=koaSCefSQPdxF/Q5zMTq+/DQ6ZZCb/Vffy5CsQ5lcwk=;
	h=To:Subject:From:Date:From;
	b=T+eRrGSGcXHzkKXXrQyeu3rQ84aHq2XIFUb1oDKq+pZRjqcGPn+BP+3zEOZ/Edo2a
	 YPuvTrqYG5HCNu5l8ibE1JRNjk4Klz9cIsA5//k1vrsznmzYSTsyfbK5+lw2MXkYkm
	 oRe1Pg5xIP2sqnwi3u6J5NP/Fe+kJLAuWHLscUGO5mhSZ5Z0OEtFvoWD+3lnomkBlF
	 wqy3k4AiESE/yj5GP8EMSfyP5N3osigkDx4g+GxokId/xcWtbi5FBZGnIlCeE1OLVV
	 NpFWfSnr3gHnwCqeitY7Hjz3Bv2i5mSBH76N14q0wVsA1ewBFFUzJuw9GUIvPUxNxw
	 W7Q43FUmW93VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4DC87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337759358.7903.4226648460418816916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6574114a1b6a85be6b83451dc15f0ba0369a31cd644a7b5aae71cfe9bca3b991
Date: Thu, 24 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753377593
