Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599E8146A99
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715586143; cv=none; b=EGi6/nIjahlNCopxWhlvLu5CsNnC/U27UyLAANtqHYqPCNpeIOOTos/z2DLmX/+30l1GJOCmw5KyqRDdaF2vfGmcAlvenxuRil39CfDUOaeYDO7IMGTtV9cYV80g2V9QopxLWvg32wEbRcNqs9X2q/p6DZIau7ZETCf/K7dlpdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715586143; c=relaxed/simple;
	bh=9yxHHvZZN2f+AM7NxQc/Qtbq0aeOBySlIuT6eOEbu9A=;
	h=To:Subject:From:Message-Id:Date; b=tLnP3oPp9KfvtMlTLzKFbyigZJf/uMJe5FDSDvx5GYN6Ms70MCOhQfKAxmi/B1CyuXD61pofwAz1QiSzRk0GNDUc7SNCsTo9flDuDqx7ILao3yrMGdoUM6BIiZu7EGbX7Oju59aQYEgbqJH7U9XHgsl2qPEIZTTwvYAf4QzWWkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptRjp7PL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptRjp7PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49BBC32783
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715586142;
	bh=9yxHHvZZN2f+AM7NxQc/Qtbq0aeOBySlIuT6eOEbu9A=;
	h=To:Subject:From:Date:From;
	b=ptRjp7PL2msx0xVISZJeE1DB1iAZn+xAGLGEWM4p1Bn2d06u7aVxUGUf2PqL2Pucf
	 b/CMB64dZQ4tgRb1osVlYF5/dC0y0pStlY6hBkHZvxDafRGm7qyfETSwh8PGUJvLZi
	 RC+0pzKkOYsT3PUNoSbOlbSx30AiGQcy2PODBgEtgJD15BZrvfCQIZIyTkAOLhxQ1G
	 uxdb1XX1K3fB7lH/4EgtmHyuOvWSSLPlnm4W1DfYQ1jbnRe1ApaI7o0i4YpKePJ0r9
	 fWvowvm0Q8mqxTAkN4vCeqOn16Xhlfl0JMcyRf2Y20lwJ09widT0CAMsDIBe7pF6Ca
	 7sou5bcXujvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A4FC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558614283.22780.3024556162808177648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39940d74263818e6e6942960a8cd52cc4d6855b00fab5449ee1e482d8f344dd5
Date: Mon, 13 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715586142
