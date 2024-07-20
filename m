Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688FF9E9
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721457954; cv=none; b=mhHC2IxKId9ZOJgRm/MKamM8rICbpmgVHKlO3Oml/DF9o3Rg8Lpnx5xdPHsNQDfGmyF9/jT6RFN2mmuUBaZCN6p635z8ksBDeXgWIGdY9isjEH7hjnwosl3dvOn5dYSiZ+448hQEFiVpM5u6fGGIsHVGWFPfcSmfC9KyC/t58UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721457954; c=relaxed/simple;
	bh=bhZAWzKstQGONCwyKBlLDPT+3u6xafktAZLRludqaeM=;
	h=To:Subject:From:Message-Id:Date; b=ea5WALxSN4WxbatoJRa8h6+P2Gxzwy4Tk+j/nNtVbsC9TwDrjuxqcdXGNyStRUJL7Du/hC96TG/qksxda1wRgB6F5QzPfEuWNBt6S7jqIFvkRhAaE3l3V3mK7IqM0UOyCljByZnl3bzqwjnUqMcok8d3aSVu8ui1qPtqDN9HHSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/FPrnTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/FPrnTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721457953;
	bh=bhZAWzKstQGONCwyKBlLDPT+3u6xafktAZLRludqaeM=;
	h=To:Subject:From:Date:From;
	b=i/FPrnTZL9l1oIso7j+aubSxhum+7pA6rH2ZGg6UafdLnjM9flrHG/9YWNrzvIvGz
	 qleLvawghb3fHdLg/aDcB5lg7HhWzQkejMewcuq1HCbmxht+QdDk0JbtEnXBPTaXKQ
	 O3ax2bFQATAq5bSQRpHzULkV914puRx1PsZZ+Hlqfpc1sCMIIgQ5NMF/B8I3FXGJ5O
	 /NLRBzfWSIPZaL60wGI97PjcJVHWeC+C667sEB3VlapWMsIoShHiUKmN5ZKlvjDzaV
	 qT4x1ZDr10jphxremiL28qFdgXP9k4Ccv7dP4GN+kdBOhtX8AXgLkASuNMxXcTdgZ/
	 iD4sDeUHEeLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C24C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145795359.32604.14844723826598840337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318e178b51eec497d59ab29aeff5c5e18be11d4fad6410dcfa12b48932a10293
Date: Sat, 20 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721457953
