Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D71A33086
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327754; cv=none; b=p1jzgeIng94Mqpu7LW+VoYcx/J67D+SGaiSUUEFaw+/sq5wI0C/F6fqNXRDEFkWQ0XVeI/b4+5ZfPRM5psEckt1zM3NY6E+sLybf7tJQi+rqx6uKi3MBdgctxipPxItmQiq8FNNaC4k8uk44PqYdMv5VwyRebAHsdSbbvk7oKV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327754; c=relaxed/simple;
	bh=WJJaHoUyEUi/2dRClocowloi8KrFrP6lyfYQASKYAR0=;
	h=To:Subject:From:Message-Id:Date; b=kL98lNth2rR5MtMDiHCYaIouGreSVDVUFaO55f5QtWdUtV05ERG+puBQduB66DaoBN8QFaUIMBNFCDkBeZPrnzcocr0stMlb1fxdUhJFIIMFGhPg70qX5uQnAz22MQmKsiZ9fvdI4/6hUIxRtB9UjpPYrEzM22U/lJHbHh8Rczs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B96bSnCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B96bSnCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8750C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736327753;
	bh=WJJaHoUyEUi/2dRClocowloi8KrFrP6lyfYQASKYAR0=;
	h=To:Subject:From:Date:From;
	b=B96bSnCt0T7l9o5jd1YB9ndMe+ogglmX1cH7on4PivMlO1MHScgUr50uiCtiGjT62
	 l1cMiDppOs6A4rzbAR5+M7aGLIQfy1qYgOxwmfmz0uvkHCe+p3w8qnOMzxCl96SHiw
	 pcKcxetuZVC6aoXcJsA6nY9XXcwJXPLOtZd/Hg8vnhS4WQrxx2nlfn+uwFOSTQW8yZ
	 TvRUqqep48/hOY2lJkQFh1VVfC5H4G3Ak3z0uDuPp1FOPADLfNLTnkrh7ho6J3pRQQ
	 FV2u03l6kG3IO2iWRNrBRtGM0C/q/ROPftjInBWFb0cTA6FMmIX/x0F0k0J1q8hKHv
	 ab5xlfPk/Vpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5CE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632775359.13807.7699307781303989008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a211732f4f4554619636c6c543dc510a115414c54a929b2b0e78ed44f732d7
Date: Wed, 08 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736327753
