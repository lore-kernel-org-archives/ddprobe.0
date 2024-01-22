Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055E412E4B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705907897; cv=none; b=AT8AOqxj1YXsyOwjMQzOSUKixOsWm7dAUcRtuxE2Udrp8orp0ZganzwRrEUJrdFrtc6AukI91wtHGnhPbL0VTpSNQIB1VRUMHI3wUYZMe3XvxioHyLZlACowo7Ilot7hNoSPrF8+KTSqvtvZnTRngnL7B/ZTZavAmKwxsA0vqA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705907897; c=relaxed/simple;
	bh=SEDf0Y4TQe7Wq0um27gTI1+WQxlbGl366cONQWAm24M=;
	h=To:Subject:From:Message-Id:Date; b=akZVJvDSsFsQmSpubiAFvVNjYlLIQRPt2mchuzHGXY9PudPeuGQfHn1zp4PLOruf1zPcCWa3XmxdMNczbqOnlufxIPBrThrJS55GHVLEAdwxKrnmfEx7kQMMumFqsBbWSar4gXv9U67W7Jm7psCUvuMqe3ffwxQjRFnIWk5c7wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4ttpBC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4ttpBC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F32DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705907896;
	bh=SEDf0Y4TQe7Wq0um27gTI1+WQxlbGl366cONQWAm24M=;
	h=To:Subject:From:Date:From;
	b=r4ttpBC5PvQkAoZBv3q2UvsmzehbTKqFO/6T89yAg34AoFXLzRDeh6VcJqf2tcvLE
	 GMfpGFjFf40EMe9i8rSR1VMd/3qa6JGAPMqf8iGEsGH4YEc7TI9bC+ZK7tP6aA5KQI
	 yxo2EP3B6CYByBwVHxZK2RliFbNf0kXqwKS009vEaHiZ7ihAEMXY1k5nHOIoM/glHz
	 UWyZ1x5a+P9CGtXh/T7BW5vEkJklkPg6vrWnAqmGhWIHs878h2TQ7CPmRNlVmui7zB
	 GUPNi1m+34Zgv/gHI7RGe3yymumd684EtVZByVVzVc8pIq2XGOE1W1/pw2JMo7cq1J
	 nU5T7dNfrUdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A2BC4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590789645.16510.6677115723778634029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848fbd91fba5f018800ee7ff9245a5c8c75292a6b5e4155623eff36f62926b81
Date: Mon, 22 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705907896
