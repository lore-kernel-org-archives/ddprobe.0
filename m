Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431FC4418EC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784669914; cv=none; b=bi5x339yD900LD/BQ4s2UNk1anGeitNhGANsyjyULjJDern6ijXkhtr/c7p1mwPINYhZJzIzSPNyyYCU/GTkv+noocjgDz5T6rr9n38+XDiL2nAl8V9jsFVRpCa8UfMrulfgrU3ePgW/3j7v7XfjFMi6XhZhrjj+1b535bCx5BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784669914; c=relaxed/simple;
	bh=/0SXJj/hX9E7LHCNfZXn31CbXSTWtDpS5w9cAiGasI8=;
	h=To:Subject:From:Message-Id:Date; b=km8jD8W3m0dKWuKau90e9bb5wjpCFS1OFT6kwz9tqT5PD0Br09qvRM73lwf0YELzmCtmww9hq0Fb4NSiZgX8TOml8y1tPI2Ig09fLQeWrwUc3oEot0Rm/2rHIm7g241abfWsSddpCz151hesR7qJdq0vcqznV452HHXkhPADRHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0C47lAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0C47lAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28CDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784669913;
	bh=/0SXJj/hX9E7LHCNfZXn31CbXSTWtDpS5w9cAiGasI8=;
	h=To:Subject:From:Date:From;
	b=t0C47lAcRK8dRtsMCFS5aLxejbdIp9MlD9rCwg+4vnFdycsVU6RRI+dZ59h55KLG5
	 QyEL//Y7G8r10eRPVinr5QvAOcawZgtJQOkRwgwFQNqKAneyUWyI2suMzJzEl7Q3lZ
	 bXLYciZp7JsQS+tzsFmzv0cESpTvScznuGdpBItYfKsmZQjHLSI+InjNCpceUm0fyv
	 yo27os2zeAGf+0+8QHdIIL4kganwvoNnvIBytme4uax6Zs8MiFmIcYX3YR8TkxCXs/
	 W1WE0j9VVVAADiLep39yIpwDWSq4K6FiLNkhbxJZOKnHY5a+H44ebC2XW7I+dvNSa5
	 mDvBXijxgQZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA3BC4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466991368.24735.617112252715273679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93fb40358d3ab2bf9e1711c96b05f745d2f4abe8addc99b4763530468226d36
Date: Tue, 21 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784669913
