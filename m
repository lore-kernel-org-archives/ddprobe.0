Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9FC36D4FC
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775379334; cv=none; b=MB5WhZ+QLZXBC4Dt/o+0FdEkSGPaxHtboYcCVaW7nWiOPTcRwxxxhZYH4N59YqVnwqA3qhecBOli89Zxal4yg/yAJ2hONlyBn2lkfatV+heYazpBmodt+FudzvTX8YReC+YvlIDhw2wR2SLpBkfG9wsnUc+GP+Q0lbQzeTiXRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775379334; c=relaxed/simple;
	bh=FyFTSPbDdGGK9uChzX1z1GBjsvmf3U2n5NjN9WaMDFw=;
	h=To:Subject:From:Message-Id:Date; b=nXAnJtgXZ//xTp5VKWYOtzcLfb19msJg3OnmOFs11mbICUXwUceT5yB2C8tJj7SYK9WVDmeVRepQcNvRcOabz8OLZCQF7ge3nIp3OGkkWAfobxVzny9tmc0qNiys21vY0kW4QPAgAEMUzB1ffv1o707NfnlILDHFO1yRPVHCUS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn7DMptg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn7DMptg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75A7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775379333;
	bh=FyFTSPbDdGGK9uChzX1z1GBjsvmf3U2n5NjN9WaMDFw=;
	h=To:Subject:From:Date:From;
	b=kn7DMptgijPfKtTCwFVmtXB/4G6mIkB+p2mVelzBvtUAHRo/aFJJL+sPzbw/Z2y8a
	 1c1uRbwIPlD3Y+LBcBTDutYap+WE84DcOYNsJgB+YF3CeXZMsv4qLeMkZkXy7T48e7
	 uxpa3eLVUm/N/BhmtzzUaSQLfGojFhVPAa8X9BHLW6EpOGT3wag63n5DR8p0RoQFf0
	 xQpFF7wQgFsR+mBgM7Vct36U0Oe5u0v9GRIXoEKTTgFM1nsAbPnZFn5mN7w+xjgAA1
	 8whF/ab1pcelhfAPaAyjI5AGA+a1wDZpnKsHuSqz9NylKVSaUPq2SbvauxF+6wBNXh
	 MWZT1mB+/RanA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E6E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537933370.1861.12705766960016591092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da986b8eeb59c3fc94fe748b0b7a2302936aebe234e063ff92fdef9828c93ab
Date: Sun, 05 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775379333
