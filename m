Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270941DE3DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763513514; cv=none; b=YNnTDNZk14Qyzdo7Or8N8xYb7/gbp/zSf+s9VmBgmuLzcYeGpP0+31gByiHsdwBP0HLYBILJ54zuQ6LMenQ4jSHWAr2sSwS4jhTX9aOdS8hzOCVTY6fDnbDVEvh2t1nfuybUeZlMTYfvN8X8riTdEA7M/6jGpBaQ1TIkf2ptEyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763513514; c=relaxed/simple;
	bh=r1I5ZWpdsscDr7RtpU4mQUc8fJKR9WTpegGUgqZCSVI=;
	h=To:Subject:From:Message-Id:Date; b=W6QfeBROS3efWh8x0fCFjJxOL2wiE0vG6YTjinZPLknvNCVltJQLBDm+ls6lr5Aukgbk30wicNqElvJI0HNPuydoX9uZKfKe/fahNVigt5GTVlrVYDC/wY43ji6BFcU0D3fHSMrJXYxEFdcFKeIU+0swerrUcPTFpu0G3+wABKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHPzzSh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHPzzSh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A88C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763513513;
	bh=r1I5ZWpdsscDr7RtpU4mQUc8fJKR9WTpegGUgqZCSVI=;
	h=To:Subject:From:Date:From;
	b=kHPzzSh4aSQkkSmk0GwoCIL6MMeHtAbR4oY9p+XMXgGzmhtoMBD7NNqrASJRKZU4q
	 BY/83E/+YlRVCPsqfnT+GfapxqTvr/l+zppRkZxjoDqdS5e4CawkQ8VhaIkOEVbMaF
	 h3Ej++9oTQ2w4MtTn1OPWdv+0QuEFCrc4iYySYRmJCkywOV8H6S9a5SxYzcloIAdWb
	 rM2CWSHjx+91SXTQLZEmVZrUGoS/HyKCBhN6t3Z2QPrpLedX4Xh+Zng6i3BLLx6C+H
	 UUzS/fiT5YwmK6jEhPu7eiLP8dJkHK+l1i9QSclBRAWh/GNFvxHdHQ7PMLSraQk/OD
	 HDGYq9kkGrb5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C0CF2561
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351351358.970.320655046405345750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28837166e5fa2cbf1086d9c6e5734eb7f568c78488e61d27805161cff8c7d45
Date: Wed, 19 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763513513
