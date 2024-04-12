Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF6C146D7B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712945363; cv=none; b=pklME676TLzqmfu1GfLRdeUwD948Y5CzPXX86UXf0WqZjE96r7hK1f7hio0SsuHfdpgCFpc/endLJDc3Zo3VUcpj4uTfVbtuZ7/UuHBJfp2mVBtoAlPuWXPaJuEH4UKyQ4t5jvdtXEJxJ7ryua33GcvHbgMIrOOUi+tKQpnHb3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712945363; c=relaxed/simple;
	bh=GWXC0GTrNuTydVxXNZs5N63ibYaaDc7Cd8GPU1MQSUE=;
	h=To:Subject:From:Message-Id:Date; b=GmPiLwj24CdD3C869CfPnEpZEF/hc98oRlKWZ6+Da20E0AtGVExHlv5U0Qy9AwO8Rw+J6Gk3ioiZOt2XbMZEK60flqvd0MyA5be4PT8jRTjbfqn2mxd1pt2NwlGdtyFJsJ/Nm/Yavgi75ED6E9MHpC1u75BZ23KCRXpuGwGDnkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zf50wbyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zf50wbyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE528C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712945362;
	bh=GWXC0GTrNuTydVxXNZs5N63ibYaaDc7Cd8GPU1MQSUE=;
	h=To:Subject:From:Date:From;
	b=Zf50wbySC3V2DkLcBNs8IacGmUBqJxj0sW6EIK8LCMlEJ8uufma41NNk2EjmyptSN
	 8lNzf6t7lym7v1zJomM0wPzCL55IIwWd2z7l6JSwLbt0SzsVWPaJYdk3gWy00HSP8J
	 BEXZODVh5CyoEIasiwp2UbXlSEcP0tp4YS9zuuYNFPpvqjz0ySN2TES7lCSjxt/xfn
	 WaEqy6IXWwpVgTEJyUggAV3U+3YRA8y3RsqNnUdwyp4vm76uvCZETxSYRGzfnFI5i8
	 yYM0kmRGiLJe8eO+B/KvrdzwochZxG9otUAsPpWuJxtcUI4kksTTUrhE0MZzc5sUUi
	 TFhh5dA/L2vRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45A7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294536276.20455.2430923913720412966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74aa47dcaec470bf5adf1cd4aba9c0b91fe49b10b80f179f64a808ed88126c56
Date: Fri, 12 Apr 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712945362
