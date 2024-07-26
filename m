Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D125816
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721970354; cv=none; b=X0U7LUmQp3c86TLv+2bCo6+yAVZThfBfMV+IBUcpJn6hWEpqDUIXz1KKOLQqSuiMt29pSTg9P17QidFKatkKFdJ6AMWyKCxV60fDU6vQ/T3cF0gXGDVtsPXxN3GxpXKWYdnjlUIh39+1CZXuMKOcLR9Iu9GXTGF/C0hl0tfatgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721970354; c=relaxed/simple;
	bh=GVBpfRlMHMvyb/+diWejFN72ReS8ik4TRyDBdHUOPug=;
	h=To:Subject:From:Message-Id:Date; b=Any/9n9oWckZsvwhmqPiPXZcwveAOBLCokW1bLH2WEeaWxpBiHdruUTQwXg7hA828iZXf72cQw7PNntF60dMiMPEy0vc8aYOEyAo1ceRnlo7jiwAHYrmy9PhvTf2uAiyLrJ/13biQm0g7ZM+o3GQZ56BN8/WqtOAqwEjeOY79Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGKdddAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGKdddAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19BC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721970353;
	bh=GVBpfRlMHMvyb/+diWejFN72ReS8ik4TRyDBdHUOPug=;
	h=To:Subject:From:Date:From;
	b=XGKdddABEwbPywd9hpL76Jj87jvHBGcGBgQMSQorM9/bUG38w+lNaGpR806eBG9O5
	 Bk/E/2M8qmjyesbIH7PQwLApOZE0XD2pWjJfFmMkd7O8suPDdUxizVoTNbjOlk+ze+
	 f/L5UNpFlu5NEi8Ob+fBlcPdYuwbvcl9IjAucckYmTmotczQKtTErje2zGG+FHQcgx
	 rWlWq6a4hFyWb+sBKiNhE03cYv2gLILc8LHkw3b95DIV1U7WdQncCuZypIsJRErW1/
	 ++ywaVC9GuenuvjesiIFekDmmKu2V2PGFHDWeeUFNKcBXYBDBG7APvZCyIJM2MVdKv
	 Nafr8o6uKoLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD35C3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197035362.11836.9575190363965425722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e856e3782fc9cff51ac2a349a94905deee4cf123138aea73277c99c894edea9
Date: Fri, 26 Jul 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721970353
