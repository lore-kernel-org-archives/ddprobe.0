Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0230F543
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777649854; cv=none; b=mvrCC44Aiw8DC3mF9qtZjTdNrqmeK+cJZ77pZvZKBC4dVP5Dd4RrVU+zbJhwn74CW5gzsWZg7U96FnfCQRm2f7y6NC84yde/eDEUdTR4PiwsjK2oh7ran7o4tXA4v3AoqN1szQBher1oKt2BRFprTRuJ5oCCBq3S8rSEcKgcNoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777649854; c=relaxed/simple;
	bh=EH8CBGQbmDTCR/GPDxeNCPoAXhtADG4KssY+BMtLdbI=;
	h=To:Subject:From:Message-Id:Date; b=WOk0/6tqknb6mJRxjmDssWyb+VT5o/UwXK97mzTxCdgR5lkvA4dqGqBAoy6qpH2kGETLTpyTsBVKE7vG9S9BcmqMKr9q1ey08aJYcf26p/wqgQaB8nApD92oG0GHks7OGVO44QrETOHeraSxafrRIwNLeqVi8/vqo0FxPeOu7bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0/6Mkvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0/6Mkvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC392C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777649853;
	bh=EH8CBGQbmDTCR/GPDxeNCPoAXhtADG4KssY+BMtLdbI=;
	h=To:Subject:From:Date:From;
	b=m0/6MkvkXE8kw8Tdj4yFtWvx98Vxdt/fFMj9DPyTOFzTC1VW1hMc2B+HKZ8u42SvQ
	 qwzaaES7tbUnYOB8XMXrSyjX1ZRjAxyTiKtoZGOT5+ytsiDbnepKh23VVfZav6WZUs
	 tubcBoNhaEkxJubBqscQuFiOD3u0JzCYhDSF4e8LfZkXI7XTEtp9J2Yizis1arA8mj
	 qCMLdPL3pcMj1ZhMwIeMuRy7iHOH4FMqisD7CRNk1mSYu6Vrfapos9RopbLPLPDUk8
	 frxb380D9u0L4mDYG/G41fmGv+23GJI4VLpC1s43kpLmhmJlE1+QJasU07RcfMvV5F
	 8wfkacyBtMDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC2CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764985368.18712.7566757536096916662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5c63990560c4d8e9002ba1ecaec10031fd8b7817aa934988995336e4b97ce4
Date: Fri, 01 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777649853
