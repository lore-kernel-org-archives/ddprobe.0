Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6E521ABB1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781148994; cv=none; b=GscmMV/7DcfsnyHbl1aT1TTJ/RKBUlPaqo42+s63t8LVLGOcbjYB+2L9e3hAfZeWCi4uj1t0AlDAYAXKWmIJIt2jPzJyO4ey4aEJdBIVn2zc8ERR/7OLjWA7zeo8cGtgyntoXV/x6/W/A+Tq1MTrhX5TStsA+2SRVDw3+rhc+qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781148994; c=relaxed/simple;
	bh=lO7VqF7GMcq+081G/dzXRLZyTrnz5hvHC25EmN4I8eA=;
	h=To:Subject:From:Message-Id:Date; b=lV0nlSzMcFL1zeUS3kGtCI1U/37GEIyeiHQxzcsi5eh0rAn3ATcKnrmx99Ao3qgA+d5k30I/RXt3mAbz30bcsggARerhEREMOlWpM6vqYrIiD6a9Qz/oIiNCWDrHjncjtFcb9JKJQ6nuu10YxnqXx2VjS/yH8uOoLPFxOw/xrNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG/ZsxT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG/ZsxT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59DDC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781148993;
	bh=lO7VqF7GMcq+081G/dzXRLZyTrnz5hvHC25EmN4I8eA=;
	h=To:Subject:From:Date:From;
	b=AG/ZsxT5B1eB70VxMRMd2gFoWuBh5ZjDCOIr9CjAIBOjgeK7UtqKrRB/c91+ItPNZ
	 FPaSHTApmbFA4i3yt0gznKL2hZZyNhbigljTWhmBj3eibRER7rGv0/ezi0PruiPR5k
	 w6bSX1TbUOMP7zhuFLToLU0VH+i+GNr+gViUD13kMoig8azWormK7EpRcwFaHw6fPv
	 NTzT51WC3wLc0Npt/5RwJTUf1oAnsFEYc+OvkUcJZ3Gdn2VEt0CbBJ8WUZj+agbJLs
	 bl6zouY562629aJbjrzJW5mPAJNz2C5gGXPHUSLGYkBLrfQF0GZCovO5wu7jGfCinP
	 ogjQ14h+qNoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD656CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114899370.5483.17761075136796184823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343c2cff734b8aa285947c3d496d3d4af82c623400033076908a86aaec99c4d7
Date: Thu, 11 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781148993
