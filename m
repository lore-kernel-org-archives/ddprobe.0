Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C1D18E25
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738352755; cv=none; b=TdzMYjt5CF4UTdL5pMuEyYinBUGhwJTPbNCPomKvQzika/1nzfEsItsyrmrcsdCU4XrRMv783JkjyuzNQhMmycv1W9t9xW5ZR0J0YMqFSaUsg4Ms+cYrGi2mzcre1p/t0y70PZdI3Y+aJZK/9NmhAaaCc2x7LrH3XRREk8VfBYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738352755; c=relaxed/simple;
	bh=HZFc27t22QZzFxGVxmMCFLzI3nCU+cBhpKICkqO9LA8=;
	h=To:Subject:From:Message-Id:Date; b=UOpyOMz0ceviwfnmPY6n7iuF3niM8cP3f4fnInoEHZVHRACVWyoTwI4uoirL+VM8oB+M2fXQUuDsecvtqM4bSgxccyM+CpC6z1fkwx3vJoxegzWt6ckBu2PV8QS2ghrkNapd1eztOnRkz119AtHO5HPa4+m6iU+XuJrzuymJmSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBr97mBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBr97mBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1ADC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738352753;
	bh=HZFc27t22QZzFxGVxmMCFLzI3nCU+cBhpKICkqO9LA8=;
	h=To:Subject:From:Date:From;
	b=qBr97mBzQ01noK8MmvWo2peOEv5em2sK4kY8MsEDrnjvYCQtpx22MdnIn+J2xdsVf
	 /pnGJ0SKZaoLqmZOVKFNahm8wAa4YzHRpmX3tU/8uo+ak4M7J60PZ/OKkMtqY/D+RK
	 UoQb0PIeTBDeiQOPDagPDgWkpFsGjD4bXGeSzeVQYL4Yu7mDRI8h5BGD1XN+C31JGO
	 Nzr1frAHpQzRT9Psmvy3g0AwM8swo0diGLtxnSQXf+tkncrwxBKnSrupiASng5z0OA
	 +VReXwjJbtdFuNth6qRVjg+sJDt/5KLTLAuYY9Q5umonBU0tSAh1UIfo/qI/4T0unU
	 vpQdUg2Xbnb4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96195C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835275358.18980.18164170987211037622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2070955e6df56d35151cb58e3a9d8d74314a8ea711332465b9144d96e576a17
Date: Fri, 31 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738352753
