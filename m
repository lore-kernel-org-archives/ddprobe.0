Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28FB3859C2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774946094; cv=none; b=J4pNTSIcieYn6yeSqQFBJ0HVxvcX+HyyUqSq3FcQ+dZw5oOkJ9P2MSP7LOsELjLZxfQf+U37AaWFmpIaeK3xw4BKrGEUngCNBxSWb0q9B9nUQjU8lYYlI8eNJ4IMdhqiKGr2T2DADrpoTTdb4fstuHIgGHwSct0+WnEwvfjpG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774946094; c=relaxed/simple;
	bh=as/sKG1WbfexRuG4s9PbVkGz0kH/YfSKKuEX7qZOQGQ=;
	h=To:Subject:From:Message-Id:Date; b=SXGYt+ahvKniIVve/yn84Yo2639ltoXbQ/5t4BtKEA0/BxhnQWiL3qG+s/V+/sUyjvwPWaS/GM1J1Y2nLuHsZM/ALNtP6TrL2BtTlw0wl1SVm0+ecoTNprV91iLueMoIFiiYCV0ixFSQk74H/B28gf8HcpRYNKxPEM1qVRpx0LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE/7GbBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE/7GbBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2AC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774946093;
	bh=as/sKG1WbfexRuG4s9PbVkGz0kH/YfSKKuEX7qZOQGQ=;
	h=To:Subject:From:Date:From;
	b=uE/7GbBzq/Ecv04BaE2pY2DLLPpv8bVv8Ib9YcR6wMDUZFvPWqiJ1NzYI4c/UweO9
	 SNd0H5jwvajYJmjNsK5V/l3zmmh90IzXOekdI3JXd13CDtDmYEAKaANQzS3TbZ9YNj
	 Waer0dbMCMd1sWInTlH1oTIw+1X9R7idyuMkDt6gxqn/8yCtsyuaUHVw3yujkbj1mH
	 DcFh8zeLyVGFbdomDkxspPttwbEoDYf+ST1lbRNvpS0vh0qTKpt0jPgggwcfATzV54
	 JlIOgGT0R3S/yZZ6iGKEL7gDfP3iQHu0Lkr79q7wVlxQWMcY05cgurJSk2OA8zpy1p
	 4nmkUm9SI1lDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DAFF60ED
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494609358.9381.13103415520564772130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5a69bd6bb9791d10356b0521a2486a0655ad48f309a47aa4b39f433bafe649
Date: Tue, 31 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774946093
