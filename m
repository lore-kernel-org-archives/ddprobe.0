Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B43262FCB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376394; cv=none; b=ivcWKnVSlyifkUkUMktXK70jQtgUkHjoINerpxa7Fn5u8TlzBe8n3C2z3MVsxGY3PUIkzgnFSfl6E/HauTKwNJMZ06J83fu4lblayS5ZXUah9p4/7+T3yawH8bD8o54BhCTErOTo1lZSlH7EGILJkBAgst42lcrifP+y3zNRapM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376394; c=relaxed/simple;
	bh=JZ0nXrOnGpCHwgJ6l1c2W8clKYpdU9OTMwqoIvlPRbY=;
	h=To:Subject:From:Message-Id:Date; b=WN/kCNy+qf2Opjv15KzqBvYy9dwyQXoixWpZjrxD4tb8kHnqRXoJTyTYOdkCZi9c23HzyJWqI8d5qRlSRGm/IjidxyYc27/2jRsYaRMAVewcm1XIhzfIQHRo8N8bom2JQCPmwAOb3sTmePApLwKmVT3QTgqehGpUs0u5bM0plZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBMd/6ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBMd/6ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A009BC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756376393;
	bh=JZ0nXrOnGpCHwgJ6l1c2W8clKYpdU9OTMwqoIvlPRbY=;
	h=To:Subject:From:Date:From;
	b=hBMd/6oxvjCY/7lJSvtpULGO8TOIU70wlBUp+UEGboh0yYO56vLXYwLsUZ+NJjjUe
	 xwZcg5MDF7LLo6wMXmzGvde7M32f7qdN0N0KBKqen4xfyaHS4xryKeBH195muOHV4g
	 Ts7k1CtFOFTw4xSNArdMwx4/lCAGD2gm7qXXbAuoxxhJWfxyFC1JLskw192NacQ5lq
	 n8lb9Dq/b2JF7fmPge8k5aQc131QBNIM+V3je/lgwAklPYMzWZsNEoqGSdvkKkEraa
	 K4Ljdnm3I71JzJyeyc69sEXwitsOivw7YjANgbJzXh2ClFR4UiHFIEy4A8tMd+zNHO
	 Iy0qqi52D5Rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE7CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637639357.30535.18437069898767502682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21250569e4c8462df6cc22ff19bd89e8d1db7d05905c86df70d3599b72010062
Date: Thu, 28 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756376393
