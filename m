Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B1F139D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754024994; cv=none; b=LTHaFXTlz5t1E60yglVy6vfw2jNd+gaxb/C71SKvX9OBlhy6U8HhZf1PkihKc1nAPdd/gRTDm2GKr7LwM1wPyZIsG5ryYeuDNUpkFKlqYPUh+mNNe8iE4nlW0APKTDpOzsRrEijtwxwott4GIqzGYcql84jlQ763o7qI5CoPhdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754024994; c=relaxed/simple;
	bh=u4M3Y3Fbmtm4O6D+RbZIXZ/15M+NtaNpWNKhZrM14Hg=;
	h=To:Subject:From:Message-Id:Date; b=hKqGGu/WzHicFVIpZjZXa6gCFcAANqWO0p0VzxXu8KnL3W7AduvtcjSVnX2l2Y97Igv3LDHz1WM+7e6fsarlqBgwcMrUE+nLkjqe/a0d48d16rPXdkSgrbWm2yaMV4EhfLV1xUx9+ZE5wk6/MCe7dSF9/3VhGBsuQqZw25GP/Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pClkfF5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pClkfF5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FDBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754024993;
	bh=u4M3Y3Fbmtm4O6D+RbZIXZ/15M+NtaNpWNKhZrM14Hg=;
	h=To:Subject:From:Date:From;
	b=pClkfF5oMSZwAcSuoq3ePX2YhHlvFaHBfpcwrptHlXCkcO6Z7kRlDlQEYYD5X/9S7
	 F0ipfxSuHQDVFsLfx8NqZUfBpe+94G2+Gb/LkC4tHrvepTeA080nMEPqaRDQuBcTeY
	 OurWdh/ZUaOa8VILjuN/ejCrZQPn/HkZ5YTQ2xvuv/R20XEg+vXAv7MmDMaGWNExpb
	 //vc4bOzNf1hugNJlvfI002iH/YJvdznRWB4Pzu3XvXwWIR2OMSTB0uifMj7avCLOo
	 KQSmF20+WSqe9EEHR7z2AQDdDyfL4eQsb6O/rr8+gNBA/UIPka4yP8TMX6V0YiVYHI
	 jKH9/0XjBp0VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1EC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402499357.16228.17855135456765496096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c09ac48af3daab86a5c50a88f074701297ad9e9154f132d7afad8333601b20
Date: Fri, 01 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754024993
