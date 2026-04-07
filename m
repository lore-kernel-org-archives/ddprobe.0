Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5657634F255
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775534734; cv=none; b=lGLDn30quG0LbBgykjzfo26X59BZqkRrjtmW2culeN2vH/Qxcg6y0REzibtc7zPZ+CAsYiv4tyUWhFr61ZB4+4oovk90r5ZMAFz+8FLHL8WtKBnuxwsbxd7Vlsv3ZQYzzskeiK8+gf4YsZ7JIrSSyeqdlRknCDqJwW9Aqo7wddM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775534734; c=relaxed/simple;
	bh=1X924MtUk2zN5sLbOs2eZ8Xu8AnFvLSGYwGYIpZqa+Q=;
	h=To:Subject:From:Message-Id:Date; b=c00z06+NzC0loZ0DyZ3f34ef4EhIGHuSK+13J1zpFoolcOk9Lmf029hOaectsK3/3eWxzo6GRseQNK3BW3/ADzUykOCidKURIYdpJ05FN85Q2EshXlVx/HZyhrWiukJsDTQ4YgUbdldUfLH48gfDrAwbizl9OMSvwy/DTA7g4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2kMPkdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2kMPkdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AA6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775534733;
	bh=1X924MtUk2zN5sLbOs2eZ8Xu8AnFvLSGYwGYIpZqa+Q=;
	h=To:Subject:From:Date:From;
	b=L2kMPkdIaCWqN8MVf3q9/p3AqPt9QKPqHQA2nTODRXEUrp4fh+euKXb901wD2efQX
	 5/0tp/XyIlB07PxsFWThHQ6PKSfFCaeCtTurD8/dQnTa+4WalJnUzMd5koL1PxVM41
	 BZWlmvSNO14/bIH/Xa72jSxeNpLbiV7qco6edvUNkT0z6lkhxqTNbzDhCVLpYjts4x
	 tuhbO8useJfoH+mrnu0Lbs4zNqGbcPIVDIm7FjyOmwON8XSIy9cdYepbvf6NASsmiT
	 I/IuwsRzS0vmAmDPk01LzMXmnrDPmMwU3OrMyo/X8NOQnZvuWFojozDmTqoVbu9/c2
	 ojv83DUThtdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC117FB5188
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553473373.1808.11604340383584206882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29d91ecd7b32c49b6e926f9b2dc602bf57680cb0618d63e621e28b169ba5144
Date: Tue, 07 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775534733
