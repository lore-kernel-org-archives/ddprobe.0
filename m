Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDD719CC27
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737215753; cv=none; b=bn5n09E4ar4YDrYhAvS9hLIGcLWHC3cF2r8iTVynxNYAB0cclbRNOk0Q9GQeFxMsp/6Wbr0woEiE57NqxEDT3r2+cp53ZoyQ1mJttJ1Vzz6o8ZvCNP5L+9DK0Yl2/0BcFYz5FdCDKWrOm9sB2OoFMiLh4kczAqgPAu1TKTbe3xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737215753; c=relaxed/simple;
	bh=fud68QobVpiSc2tmG1fDzRLiOPVqkRA9dS/ybk1MhCA=;
	h=To:Subject:From:Message-Id:Date; b=ulZ11S0hIsXWN0LXUXrBJaI7Yq+gT1JUkkUYZVKsJoPMvwHJt72higA8T1YyzbbbsC2ZaJj49k3fP9HKjn8hBvsXOqNgNDYLDj3LASCh74iggANrOZT7DL/+L9KrfQ6OM0G3dw5+9A9hH2F4inv1YLftjfC5qorjq/HUjQVAVLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RThYBnFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RThYBnFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737215753;
	bh=fud68QobVpiSc2tmG1fDzRLiOPVqkRA9dS/ybk1MhCA=;
	h=To:Subject:From:Date:From;
	b=RThYBnFkkDXWR4hj3OIeytDgBV+tphRi4nQwTSsYqcw6zj9B9FRvNyLcr/uJf5UI5
	 qsCKLid25hpV8bbRxLTwwWcGyd9iWk/0fsw1aG6zm/zvOwF4f8Dt88tNRRPJuyl7xx
	 hIB1lYbj5oB5x4ASdbwnp8ICIYoiLqMlija39evMKGhlJAIPKp5+V4hFlRd0HVHrE2
	 OATYXN3mz+whUvGF+YmWf9muujuSb3kTB1JNktyOeTobPHHGgc4s27tMxGmzUxoZqK
	 +xv0o3ydH4JySG1V9ot1vlmlKFi09b/STUziU8d5n3r8aDqgiQ++7pDLH/0J4O+wtF
	 y9Y5KtYfLXi1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98192C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721575359.13235.3538866131544083299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e699e1d0209342dd17f8933bfe83b5199a8666e02db77a19b11d210cdc081bf4
Date: Sat, 18 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737215753
