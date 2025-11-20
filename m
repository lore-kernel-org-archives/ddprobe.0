Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACA2E9EA0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763626914; cv=none; b=iGOtiOwtNcVtHWvwdKPmGHOehEdqdGoAyvha+rlB0YJj2lq2bh8mynNbSS88xbV8gtnghPQk8+nSwnYwVT/eOBHire/ocAjo/RXvukXbtj72fdttpmj7Bc61X0J7+H0pLfbYpaK0/q2Cf2N3bhBA9lb/neYE2qYGT9WSJlHe9Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763626914; c=relaxed/simple;
	bh=mx82PKw5/wC63O5mKYqFcmG4pW+3jcCaTdVl9qmF3yU=;
	h=To:Subject:From:Message-Id:Date; b=Nd/4MXY+FSHqIlE01ZxQd4TIUnC7EmG+mWDTnkcLKg5WR7UPiSuIkNggBu/Kp41gIpi8FHgLjkKVZfKLu7OmbWf6xV7o3YTLijjwegoBrfCD5wMMg2vYa7PnoM+2enlVGBc43WmThUQ0y4r6QRvxLx7Tfngt6d4FD9wBvtSKuKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfLzaC17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfLzaC17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE969C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763626913;
	bh=mx82PKw5/wC63O5mKYqFcmG4pW+3jcCaTdVl9qmF3yU=;
	h=To:Subject:From:Date:From;
	b=HfLzaC1745DIWgUwEJuAh1SsPiykc5KBWM2HZbxt1S8OPeBbe00iTcTvdg5E4QZ/U
	 +s+zyGoHEz2NZdaFFWg/BSItY84VJwKXXU7U7NiS3qNvRL9RGCkqRKYFl/iCFDcep2
	 tMfliLYibHoKDJXWeXEGe64gpFLLIELeR4dGidLkXhHW3TzHyQlQwkZ+yFLe+2UlB1
	 rGCLj40GAt5uedo7bn61mTd1R3Pk4BQGL1xGC0Q4Hj2E7ibGAwDbBqElVKnRedPxqg
	 SpVl+xUxUKTAmB6ea6KrL0+LVvAouT22ZG5NWFxccyJHE+Q6mB+dbXa0mvdNycvrnF
	 JqtWhDl9h8Ohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE76CF8556
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362691363.23996.18315473382131174257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137b4bd30a3a1f81aee6cc4cf990811c7237713c67c96eb3f38f5fc0180e3ef6
Date: Thu, 20 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763626913
