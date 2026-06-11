Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5D6289E13
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781150194; cv=none; b=EK19rxDVL401ev34WJ+JMUjc4jkXWxyUeanW3r71/1KhDg/7htboa5l5B/h4WSYgX3YzwR4SCQD6gDHqO5yRCQXQ4AmQiGUubwHTsH8+uJsJcZICgyGS7AsYZ62MNyUKyoEFthZp40ZKM1aodouQJEGkVtguMgqNW3zdKUxm0m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781150194; c=relaxed/simple;
	bh=MzxbbpbkX5VncGVTrpXZSdQobIVqKM+tu39eZrvgFkc=;
	h=To:Subject:From:Message-Id:Date; b=Vmcd8DVbWeiQGgGPbtu4nOSTxD4P4cOhzEpt2hh52G1bT4uQ1gGdlgWcTo602zAjVPSnim2w/W5pbGjxv7VqYIddTeUZC5xl4AGu+EdaRtqWyxE4giYZaTh7bEnfDcyp9t7OYYn+tFwxjr0uOvNLeMOmUzMc5SkvAUL4ZCdyeS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Doj42N/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Doj42N/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0205C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781150193;
	bh=MzxbbpbkX5VncGVTrpXZSdQobIVqKM+tu39eZrvgFkc=;
	h=To:Subject:From:Date:From;
	b=Doj42N/W4PASO+N9ug5WKTy41D/bepn/gooKvWEdgAQiOHlhhWlS/AS0i3u/q7A1G
	 EImh7VtJ+1SeaQawcMPHCflQb5cP1zM7B2xd+CO9AXT+RoDhWJ1puZFYslVqS3GGUA
	 B1Y9hfymAcRqOTVREX+Q/E+3o5Q2PEBdppqj853SvpdnguiOvGKFvnQScZpKLq6iF1
	 iZpbUj+Zpe+Y3DEEF5WQ5qUsiS70jo9QORyJcKoOrLO+JDC7XQ1iL3zLLdvK9g7PQb
	 jFVzt4OWMJv3ucu/HeqMgR4VI/kFLm8fhF9tg0EapWWQmItPMJw12Z0ER2ZiSbPSxC
	 gtFuwoYOsn3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A00CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115019374.7241.4472563357685136210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c283c2bdfeb9c1973fdf845c3914fec18c3333d7fc0205fbcae7e0a199d0cca2
Date: Thu, 11 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781150193
