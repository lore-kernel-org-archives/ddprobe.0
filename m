Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A6E378815
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775555134; cv=none; b=oWtB/c/nD1ThcfZUM3Aii/zh/y5yLWuBkeN3IsBOeKG6BAEzHy9IGfvD02wPOkegHd0xq4HtRjvll8LsIkKbt2+BMJMslZPjI1tsN76sGs9g6WLmwOg2hQOX5ns1ieQJzvGm+JaXopIyV91wBm2w50J6APQR6oe4xL7eoxjnAEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775555134; c=relaxed/simple;
	bh=SMTQOdiJ22wkVy8in3MDOETY5LMLKZ1Hsk5OdqCr4Jg=;
	h=To:Subject:From:Message-Id:Date; b=SBwH0NjDMYX4SArt3DHcuoDuvZFyfkbAen0gVrG6yV9c7UOLAWamINLjWtLJqPRp7tE15xpU5vG8FzqtZMgMWjmEnDXfrszluIHPPWxexmpRD5PoTBOq7Ga9LLXWpSOg17M1N+dVdCtqdAEqC7my2nftrpmxcDadsxZByf2sTh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNZBfmkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNZBfmkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1741C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775555133;
	bh=SMTQOdiJ22wkVy8in3MDOETY5LMLKZ1Hsk5OdqCr4Jg=;
	h=To:Subject:From:Date:From;
	b=KNZBfmkIKIfTt2/iOWbtW9vZx6WYcW1fTPqNMb2YRAmOJ0/kM0sjevcWA0VN7/mi7
	 h2H3KJu1SD+dVEetZb+4/4vrRipf7oQkffjVxqrpPUIV5p8zTKVHzfODBsphlFLEBh
	 1txpd6gbjMCbFLEGvFlG3F+cnutawb+C+kT5ro7KjQ7vpa+7LjBlqLLebXMEz289O4
	 IbvZeYBiP6QYad6Rcr/Wl3r02g319J4y+xY7vfOy7CCnrRZeVe2IvbY5yeLQ1DONv2
	 CT1qXOOM4fNTXTDFxFzgnonGAT/M+XGkZvTc+DqS+MdPpprIQ/peCNM4Dk3dOkiGF0
	 ubG0uBuBgsJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0835EDB7D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555513368.17384.13548176345581916949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163af07f7bb03f1088f8698b7e02f43ebe065a626df1bd6fa0a33e8ac9ad20ac
Date: Tue, 07 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775555133
