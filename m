Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108F2192E1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758989994; cv=none; b=avSPyZ9PpP85Yt2qyRS7ZsFnGGJ0V2zglEDiLKKXlx9mFh5K+uR6Magtc/ujZBRcL4O9zq07ji2Mm7XS4aqItRPAK78Tiwdj/h8vizJj1xiFelLlJtH+a+FxJS+jCd864PrzFnWVgkJ4T0WYuIu7rAcDBWxesqbJUCBa+a+NZSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758989994; c=relaxed/simple;
	bh=QIUk3MPCFwNGQHksNBtHBKB8dBHZPmJQ1qYcl9JGsto=;
	h=To:Subject:From:Message-Id:Date; b=VlPGpp6bF9Z8gUucsEbPVY/mPAMcDPTp+8NFxKQO0XCdTw1IFBDKJJWelxASDs07f+6bFeLxl34P/XHI6wzEQm0k5eaKSgjv/FH8wZHmbezBwNPc7WcwX94S+wILPALOQWQCf0owPDM+2XweVbrtJ9W0gXBdagXwC8V+qFlwRdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfVoFP32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfVoFP32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8B3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758989993;
	bh=QIUk3MPCFwNGQHksNBtHBKB8dBHZPmJQ1qYcl9JGsto=;
	h=To:Subject:From:Date:From;
	b=XfVoFP32AMcr4QyYS3PLQROpW1m3Dq1WRV+3O4hn/fKExvChzXIvdgxm2nL3w+dq8
	 C2B62QZeabxvepJcP9rdk9J2GzH37dFAqnVlUyejVV4qUqRwPmfU8gKYaWzrYRTuC/
	 2kw8Sn5tj+9R+l9otmVdUx2rzCZvOke25Ctmbspt/xNT1LEAYxGqWojVs9gYZFh7lx
	 Nvh6PbpUtfYMgUfiOpXzHXfK6dV6aFU51Ip6mBEThyVxqd92+kOoGxqvI5z3+0VuHN
	 mi5MIRF7hllnUjH0+zfLcq1rIYO/EqP9aaE6cPx6JFxH0bUODQMUvDvq46ZSkJs7E2
	 BfU2BE0MSyMvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9734CCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898999358.26129.13056520209445167359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bb07229d684c847a729cd490ce2e6222a5764c4746b870ee27ff19ccbf6733
Date: Sat, 27 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758989993
