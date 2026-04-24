Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3779C17D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777016854; cv=none; b=jTn2v+J2hj0T2/Ou+168rQ79AqCdMXV40aSXTIAgUYqHoK/n4jufoM6cWhapYoaZyLlVfjDR10ZBPm4G1Cmte6DNhqDOl4Lafyydbkb1yMFKYTW2PrMGNCjIex4b44NGz0nFwhmFLyi/TzWYBG0iUqxrop+ubeKJEKuJcDArk8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777016854; c=relaxed/simple;
	bh=48wfQZlHFzWAIgFNN4EYTRV93a6sor/2cS8wpnKf/Tc=;
	h=To:Subject:From:Message-Id:Date; b=W4KniwiqANJtQMQ+3lpk2lhL1o0St5fKbv2Brs5SvHesMdF6iXIeErVM3qAYX5nnkTOmq44Pyut1l4rEJ2eG8sanIHhW4Htm+nhA6kazHXbegdU2i3Igk2dO8RFr0/eUry9mWvEKtqNSJUwdHX9N7CRilKlfqnH0KL9pxa4D7rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcjgaZVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcjgaZVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1670C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777016853;
	bh=48wfQZlHFzWAIgFNN4EYTRV93a6sor/2cS8wpnKf/Tc=;
	h=To:Subject:From:Date:From;
	b=LcjgaZVS7J4IWbbBBZKmh7B3EDq/GLSdSZsM0N0D4BEdqKby/SZhR616Yi5mkc0xs
	 VyZOkPp5eSIKxGmXH0TO2lTQwNjR/UoX38htQ0G67ZoutY8OJmD26YxBQcJwwSpGkv
	 u9CrnkkhQc9OkkDphfVyaspv7LkqhSIuh2UKGqpqU//ktpB/xMf26MNaE8IRKz9bXa
	 hKm59urUy9ZAkJCanGsuw/vg5iLEywsmyM40vxRPpZqyA2mxsYezOKGx+k1pxjohXS
	 6eD60LvKAr8K8oVQ9Y+1j0JTcnySLnLmdvqQPJPu/DsHh2EjxCRI8boxQlrDfJLa4Q
	 zjiBNMNHYQpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF46FFB44C4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701685368.21932.11739740453081617499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ae3319ddf462ed87160ab8a564a123a2e7f2b3b0aa92e6378f06bf21e42754
Date: Fri, 24 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777016853
