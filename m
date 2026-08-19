Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB9E382365
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787126434; cv=none; b=hYSX3RPiSO9bQ2VT6E1urr6ZNZt1Ejb+lzNp5hAN/KLs+4vF5wpRJtfEysTTt5mXJjP8vRDe7yYdHwehxsqZHA94+bIEBe8fYYA7O6vu8Ezz3iOSTu9XtHzcKC3T5Tx3ImW/zV74y6U/B8d9B9hARoRJa35GAtoqOjOnoiaie38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787126434; c=relaxed/simple;
	bh=kPOjbiZN2qa3EA4RLAHX6IRY6XpEwo+vfLANm9u8s38=;
	h=To:Subject:From:Message-Id:Date; b=no3ajo8a2TlsSFf3SqWDjjMuDI/KqD9Oa7NVkMOSYHaKAZbBT/RzuTTltkNjAsYN0hJLJ+k8uXuPSPdZNi52sOUrS5O/XpWovjEppq0/1PxwUPn9s7fsiOLxzTmqH3jlN//BnIks2H+6rcoaEMwfhbAQLN2slOFRVIFi8iXM3lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ga41giVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ga41giVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8D0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787126433;
	bh=kPOjbiZN2qa3EA4RLAHX6IRY6XpEwo+vfLANm9u8s38=;
	h=To:Subject:From:Date:From;
	b=ga41giVGot2lSjQaIGu7xgyVeEC1szekYPSyVN0GAYvlTpr5XQiEMfpFxiotFwQsH
	 +EFelbKv3sEW/ROnHFWuzYEDqSFWupJI5aRCzsw9dGKszTRO8Nkz0vteiKr4i+Jzdd
	 s9IXsajW9/eUVMIfHEk7mLd88VEX0YkfGqq7cV0HI0/UGTIGe7DxnFyi/eT/chMtLU
	 bV/UfMiA+18wRpp3AKwk6QRUjXVlkFX5MDQSFvruLHwHYGdWpxVuoBHxfT/H75qGR5
	 PHArdPypSXANLV+MW1iPybu7Oh1KFtinuG+7dDpeka9+Sm+DKgNCIYbL2qoGbdVaYG
	 Fk2YtbjW2LqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2733C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712643371.32640.4563046044047206055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff2b81f190dba271b26926b13f3bc277fcdae3c003227d7402c5beea6c6c6fd
Date: Wed, 19 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787126433
