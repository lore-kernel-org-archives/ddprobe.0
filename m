Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B019CC3F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727799954; cv=none; b=KsMIp9fWCf94V5ajGJLGhQAh6hUdDcPhcgOU5H2DKg0g4bKaJVrcRQL3EEV39yVkx49VlKUmwLNTnvxA4z8S9t+MNvZVXruAQ9nRHqVpAej68gBiCnHjCNeFmhe1uZdLjrMQ20JObZO0nno6gU9Sc5qMv7jekwCLTZqEA/mOMOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727799954; c=relaxed/simple;
	bh=XTBBkC5H8ZHqdxfNhICubNgPQYthbdMbzH8XF/pKDHY=;
	h=To:Subject:From:Message-Id:Date; b=JnfuWMsvAIYZdH9wBvu2Uf/Sj4WlGJFMNMOH5SUb1l2h97ATLKuATr+I6r9UJCLaXr5rrapKq26bRryvYN4BtMBqli6debP6oyGjHAv6rRDT/K3+ndG2rlVqHWqvfZRx/WFjAoUkZLFzci+Q5g47LFamtEluI+ebQkEaFDwl7pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/pAPAsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/pAPAsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22A6C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727799953;
	bh=XTBBkC5H8ZHqdxfNhICubNgPQYthbdMbzH8XF/pKDHY=;
	h=To:Subject:From:Date:From;
	b=i/pAPAsb4+frLSfASndOGKYEV+QZUh+KUM8knPCZeWApiOQbleX1pnMgpZA4Yn6Go
	 fWY6/yh3zxWJQDRsg1pB2vLNx1ashQyRwJC3X+rR5ekuRyjMqlJ3AcsVcsABlxjI0v
	 +CjT9cGKdwG1X6IxM7tuaQpDij+alccb1IoJjYoTw/biGRIeZxjOa2XlMu8Y8bUtrX
	 RCr48BfeZutxwtUf50K3LQURIzBsSkFqEFYU9smMOE72k3HYsEZ+MEmH2QEeadnPYR
	 hYidHkX6khbl2nBqk4GNRLHQ8BXbtlAUgVdDtUugO4ilZ5BMUYUk+NIk9gyLf+HV3c
	 IHxpm5O5I4YxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B70ACEACE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779995362.18653.8721584179237303989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526a91277b568149f702d6097e6c6b0e8d55d03dbb4a843fe18debe651dcfed8
Date: Tue, 01 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727799953
