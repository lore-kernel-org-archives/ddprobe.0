Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02F83AD525
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787155834; cv=none; b=qu8rL+cBzawt4bu30NLaMucehf+sdwSopCWD9bBrLawihIBoDUzi6uaOwqCBIfLkusJhX0bPUTuPsmgBNgEm1cXgegP2A9tT7MrUqr84+yDgWsOid9llNbAnmqCYxJk/+qH7kIS0Xey4+3C3Q4BtoIf7fDgXdOMUqa57QiImhew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787155834; c=relaxed/simple;
	bh=eK20DkzCiUJbqm9UXFAX6OTv/gpTvz0bS0Z6MYDScic=;
	h=To:Subject:From:Message-Id:Date; b=XQsc/7be4810Lp7gLUxbzKGBWQNgdWeVxPDeFmcoju/abZ5sTbfGO7ahDqwjb6DIKdrphz4Wx7v8/iiseu+4qbI/C3Og06g4NG+cbECip7lPvhNvJBn3Vlv5j66Z6vcKNOuJYkbA6boa1kAufacb+wvU724bLf4dviRD5gE+byM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt+YPIiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt+YPIiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB87FC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787155833;
	bh=eK20DkzCiUJbqm9UXFAX6OTv/gpTvz0bS0Z6MYDScic=;
	h=To:Subject:From:Date:From;
	b=Yt+YPIiu4CzVpAgkhXF2fX7XL2Iy+FIaNGLUkmLzjsfyhCl/bxqtKdgqdb7EH4zz9
	 RyKfX2uTxOBZouenf4vx2SOZ4mHqUgjkPUZy18phWqqSdGIfeKNMtElGttrwghXyfF
	 oJQo5TzOk+Wxss8AvcmdTtoOH/RIpLWlFcFnS902+CBbtKwshNEV6K39cNlkstujAQ
	 Ylw9PedLsqIQ7MUTAE3HpMlhdI3bnM4peGjmS3/WL24XuQKXLOi22Ax0YOpSpLJC0K
	 IlKM5Q94XwwSORBw9UVyp/e3ve/OYrSgQ+wMP7bMGUbZM4gqt6qvJ92obyPfwZDsja
	 cey+afGHwhd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6167C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715583373.14404.7683790861429809625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0bdf449e01a01dd7ce9ea19f8645f255b4c703e8e902d0c8e76d6fdb859fe1
Date: Wed, 19 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787155833
