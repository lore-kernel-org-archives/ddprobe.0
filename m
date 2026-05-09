Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C763128816
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778357854; cv=none; b=gPO22q5czQPax3y2mbLjmMO5ZMNObXG53X7mt4bn6Te1E6AEatWaUoiQEkDH6MZ85SRlXXcLV2uSq9PEJXaUQjxP3PNoNrV5cxJAW1PHavSDtKGRrVy/EYskLqlTa8Gejb98z+lFyT/lEZ5Zz9znEYf3CTJPN1+/rSrB+9lb9lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778357854; c=relaxed/simple;
	bh=iv+JtexCkSoZBLAQzxLJ3uB9W6OzOwCgc06HJpMwOco=;
	h=To:Subject:From:Message-Id:Date; b=gkCtXKOCv3havnrE+Uib2bIaGUhyv7e3NyVLYRmOW9a4gMTZxWZ/xWk+hrIjXnxkH90vTLOCNCcmwH50Rw0AQtQ4or76+H3nAo/KwaZPvSpXCG56+DmJM8fIINF+bJq5/VZOtE6pSnHAZeTgwbC5c7I0rO7SkOCOwvVX+GS/gTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auSH3Flw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auSH3Flw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C51C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778357853;
	bh=iv+JtexCkSoZBLAQzxLJ3uB9W6OzOwCgc06HJpMwOco=;
	h=To:Subject:From:Date:From;
	b=auSH3FlwtAMO8TLd5sW6a02JX5PfkVVUXNhYl6a8G+qg2fKA9jtlPfzMkuAgh+LY+
	 3/ArXLTcTWN6OQZzgrXqYRjeb5V17AWffoHz/HtlqnFNL14U4iIE5OLFdHiaANvWHh
	 upCtCZ3bYqIMv0mvugOc064q1dpUpHcdIVlRBADPtHcMcjV+8LDV6gPtt3Lc/GKu3K
	 tWtZHFebnEsjs8WmNJ+nYvWNKwr1VnCw+MA8XxA/fFmHDhVCim53osaVOuQwdpSNs5
	 ziLBBEzK50tz2URVM7XH8UNqu8M3Mh8/IZXGwQlAAj7TvCqYcFAQm3p9Wa3feX4iBz
	 1k1+3PW/3RNTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DCDCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835785376.17885.18330759566849331013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c6483848f387ca86119eb5765c46ed95b4ab4225baaca72bca75448eac572b
Date: Sat, 09 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778357853
