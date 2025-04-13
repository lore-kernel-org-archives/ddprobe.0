Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4096917C98
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744523394; cv=none; b=l4pbiNBzn8vLfmX43eMEUwwJu2TWhyT7GKtUL2Wraq4Q9gKbO58RcXBGy7VkO0QxLUji6IMgeKGepZBxPAkHcoxQMFF7u1GvyMpdtRNiRMb8doMopClmH42aPwAEF/6QVhW/4IiSYoh1yD2VCkgWG1b4GYxi/h8aNimqrvyMZjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744523394; c=relaxed/simple;
	bh=BJT6nf+DcgTZUx5doDzb9RYSnd2ikTjB0v/jkUkpsO8=;
	h=To:Subject:From:Message-Id:Date; b=cnQYWLgbiqecr77G60XbA5UF2sQXQV+/ssCOh1MJicBwXbmZItVoN3FM9koODONGGSnYNIGfJ7gwFi9S1tKqgIdAkiWbW41pyLbhmnIU/A431UJIIJ32A4FrMyPv2b0lvC7rhRfNQZ2MYE1QlWtQ7wUc7xPLbpFJGm1TvDjIc6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpdLzB5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpdLzB5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1815C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744523393;
	bh=BJT6nf+DcgTZUx5doDzb9RYSnd2ikTjB0v/jkUkpsO8=;
	h=To:Subject:From:Date:From;
	b=NpdLzB5zdXb7u/OOuqi7LHj4Fiu0/ROmGAp15jYbZktJJKOd0qC/dc9JeYHrWmQ2S
	 hxS0WPSkOP8r8wfp0oGJZkFtNTO+LN16EiUAliI/Of3q7auo3s+UGsrBj4i0xCTqZS
	 jXy5n9KVqug/WpyGIyVSemR7YkA+UhS3PTgT9LP1LNpkAG1e4AznJ4mgSEzT33amkI
	 88GkS59OQwR/4tp+Jqb5pSk7YHLYBiqMaLSCrxh2AJmZMY3LjS+CLohkJr72m7smS2
	 FSOso9CNjMtQV1K5Omy2gOmiVlHHeXoD+BR8w2UquTHBUl2QZ2x4I0gDlBOTi0rAqp
	 m4tClHyomQtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BEAC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452339360.17048.14205085997972551458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8546e0c799add9e348e9353a21b76cbae8715fc34757d765e103d4c4ef1c3d2
Date: Sun, 13 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744523393
