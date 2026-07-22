Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9AE2E7367
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784681314; cv=none; b=d+c/9GKn0IMPjyqCIbcaCkvxSdTN9bdP6AEky33s3Rxx5sFIgaYGelqnw4ko6PqYO4FcRN7U4AQlLv036pY9mg/s5KHRSukWN9wqUYWLJ7uQv7BaBA5/t3rNlTYa952mM/87pVMDCLVstshEd5ElMvGGHKMVermwuL3piMkxxo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784681314; c=relaxed/simple;
	bh=abq+lC6Vx4QcJmviOd0m3WPuPqG1y9vy5GHn13MFlHw=;
	h=To:Subject:From:Message-Id:Date; b=FGHMdKvra4rkeFVZZ36Gtr4krvhxNBwavdltaVgfYNwPEvPzs1YMaaSgHrR9CwXCRFPube1WW0mTBZMGH7ggxMv+hCCkAvyqukptrrM9Ber+cxP9xurlLTtMh1oadB9iNVJMCVElGWm6bzrwBWnYK1FnxqUQ2dSPK/K0Z51n3HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh9O9VUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh9O9VUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3B7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784681313;
	bh=abq+lC6Vx4QcJmviOd0m3WPuPqG1y9vy5GHn13MFlHw=;
	h=To:Subject:From:Date:From;
	b=rh9O9VUlmjFhwRmj3cakSFdGGohtvozxlFVtszFG1smSXfhuvNHw4DU6O1e59HhQ8
	 Cdx6UHDfgokueN/rtdbaS9OOcYCHdWANSBvnmXGOaUUPsH1CHa+5nmb/54AYgHl+yX
	 bbI/SqDOxSYfbdmgM688NUnolUE+nNFuZYycIH2U3cq0V80AiaZKdJc2TkH7IClHT0
	 z8nZDg9zJnMHzuRU8D1wWfMvvczhliumTlezQNZD9uhvxXug7fAdsPFfRgum9hRC1W
	 2ZAyuDC4VdYMUAL26soBSRgeO3J3XO3w70JLF+8qDhtA6mQckpjZnd8sqpc+oqZ7E8
	 UYOq8Czurvu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F93C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468131368.8622.1027010275603397778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63848b99cc50a43b7e947e478b0db2b7c38f2de44e631857b73435ee3a43e70c
Date: Wed, 22 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784681313
