Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9361A256B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752444594; cv=none; b=a3uNnFNs2Z5D0mXMv6w8O0ogSQFnQAPxvU+y5nJlD5CPnbEST+MDGkd9nIvyM3qHJffBTHrKN3MlqYL4yLvmr1BYhaZ10PmaxzNxm5zQF2/sVAQIlZiSerZPUFJYgaJASOUJHTT/SJY9OL7H6l/gGLOQa63rx3q4LVjaFj1E+FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752444594; c=relaxed/simple;
	bh=+LRaB4zCpWdLwbyKD+Fw73t68Mm0maGI0wWJa/9dHQ8=;
	h=To:Subject:From:Message-Id:Date; b=Oy6Oi+nBw2VRlsNCtocSGqw711SLOOs47iMvAdVBujir07eSQmo+upRfhF8jLr1hDUTV2gaXRZXHTb6T2XCHcBWBbNaU9iPsWpA5KTpgadW6VH2aIIXu7vjPt87GXULmrXZ72V+OlEM3ZtlDODBCgspRt5Vi2P8lFj51h1bWEk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjjyAGoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjjyAGoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752444593;
	bh=+LRaB4zCpWdLwbyKD+Fw73t68Mm0maGI0wWJa/9dHQ8=;
	h=To:Subject:From:Date:From;
	b=gjjyAGoRpzA1PdUQ1VSD5/8sTt/JUfEGc3h0tjFdwSR2GXK6oC+vcn0I+hj8aVLgk
	 gGH54ZVMNRmFNsL5NyftOsrDR6ivlXffHa+6Ba65sKjTYqHqAK0OkbnCeq0+9+psVc
	 4+lP6J1rNAoqveQy2xt7t0GEy3XTHQD54g6PpBr28Dq6AKFzG61wpoZKmdD4+yVdzK
	 NTgZAjHcje88ckoq4LUAIJVMFH134IpnMOSqK8ntoRCHw1ebP9Iegvo9WYHjxHi/Xu
	 nJaMYcnRZ7O/E2OGEN9hdwxVhO1JUY/o4Mw1cQ7nzwj3V7qrCWd2KqVD7eInRNEKzI
	 m8wdTEmEa1+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B6C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244459357.6244.6989363546523703243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4380bb8d0f04665ce6b8931d40c2b56d4298820787f6ba04aa2ff1da1cb30f4a
Date: Sun, 13 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752444593
