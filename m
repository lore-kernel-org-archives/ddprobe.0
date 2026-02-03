Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B33D22339
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770119634; cv=none; b=XX8NsuwVPwmPAongOP6kEv1YJcxhQow0BaxvfwvzbtEu2ZnzuX/LsAaSc+BIOLYwHi+S7bT0Elps+Kavyl209uj50GvDDCGME5nWi1TQEQsLQSNbAPEM/h7v1y3s1bdruxF1UDbaTl4Z7cTPCi1zA4SVED5hEZJ2y4FgKG/yVnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770119634; c=relaxed/simple;
	bh=vNvO/13tXp5rZ6FTIIeWjAiKr6/SU0ttWb8wX7XEODI=;
	h=To:Subject:From:Message-Id:Date; b=d8uJ8BrBre/q4SDIm10v+9WcEoHF2Lcx078PH5YBFdaUjqMDszFpa1N4bE8SZfNNZURc5bIx7/GvOhajP8Gcp7RB9YGQhF+DFvPWTUoHSlvONzYJOW0xLRqaIy7PCCPnsfpjSkoaXXM7pipcbofDszI2oadgm0jslAHzedZutVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHUJ21/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHUJ21/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78A4C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770119633;
	bh=vNvO/13tXp5rZ6FTIIeWjAiKr6/SU0ttWb8wX7XEODI=;
	h=To:Subject:From:Date:From;
	b=XHUJ21/eQSEvqlNHDdgciGkYoCdpNBEnU4gsiphTyjkcQFg2WjT3f1PQsNWDJj2vV
	 IM4QafEgPxFeqW4C8KtuBOKn+bIr5lYxEbpniqfDgbrMAxz8VMxXN6FMVNqoCYq9EI
	 /H/GXFQCPEWAU/cwmhf/1WeDItN95tSpccOUpGDEjo/BIAmpq4A1GXlNp4ScRVbpQ5
	 F7BlCH1Uaa+8Wn9PRc5us86TlHMU1iK4AkNXAWjCiHuMnaqWu/P78AVI60xUDxXmNX
	 yKBB90f+uEOpZXgrMEcU0gwiJOjKnvLHAYUxelpcDEZ0TeLAV1LM5Ef8PY90QTR2vU
	 uGjNNx9JUjFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A833EE7FDD6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011963366.11931.14659605097079740965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9c135725b1e2dfcbe1b676e45f52ec56af829b7b9d283918f234ab64201275
Date: Tue, 03 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770119633
