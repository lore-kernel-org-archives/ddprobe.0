Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A0420E6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737429954; cv=none; b=NR8EIRhYmrGUDMS7nYPpvcT3/gsnL21L72DS/O+qHYq/ly6Qf/mXwBBgKE2ErRsqcbRMahvTYgq4CKlVr5qTOPHwB9xPOHM45wY+c1PVXe+JzWudMZIg+TQbRQsVH7Dxno5O8N5fGv0LlS+CQTcZy/Y1EVa3qkW8Br42og2/eDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737429954; c=relaxed/simple;
	bh=vSNtb2NkxervuZwp6/x5iqvbeCQNFoAnEoWEM8Giobs=;
	h=To:Subject:From:Message-Id:Date; b=oG/QBtPeGSKHDG4ecr9Ymdtc7YPuReTVHANkuelODOu/j0OTf1Hqn5AVzflnX/Ez9gS0UhW1qBMXZYsilc/27pJBkmXhXFZ91lQ9OWIK3tZcmIbj9ZM1SwLzJdH3ZhEXsOUOHtTPFWKJ9rZoKBZ8glr6K+zzrhZJT3uOVUnBMaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqhYYDuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqhYYDuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DCDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737429953;
	bh=vSNtb2NkxervuZwp6/x5iqvbeCQNFoAnEoWEM8Giobs=;
	h=To:Subject:From:Date:From;
	b=LqhYYDuwk3Ot+oqr2aGYVI7/uAryKdHniiRXX/vR3TS2YGqxlZ3Vm5cVE4d2Nz0qh
	 ssk+iPr0I3aokAD9VATL5H9L1/p8lz6zaXTB8fPt6QGmgXvZbW2O0MVVLERxVQPsQn
	 ZXwEbCh/KCQEMmTzGrQqiabe8XtL2rwc6ktcD83rsKaKpnSYJGGzSNbm+Nel0XkFaB
	 7Z7PRxfpF6Lo3pAQ1WP1edA9I6itWgnq5N4AGOPcxx6+LGgxjq84SocNO8/vEk0Ht/
	 f3jVNdzSz3Su0NWT4Hc2zM9BXeqoZ/2RDA4f/ThtfmiIP55xZhV2uwqeL9UWDRbWMC
	 7jLahRV8z2z0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB90C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742995363.9601.7141662087579691048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f579d669cffab736d9ce1e571cb71be3f688bcde4a47ea0d7c6e53be503626
Date: Tue, 21 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737429953
