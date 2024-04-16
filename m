Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D57712BE8C
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271163; cv=none; b=qXL2UT1+NtYQF8yLMOShUhooF1eaizECNI6qZ51BSOMU/w4TaExx/FS8dK2TKdbxmbVFZiCuIrcomUZaxpt0kPqRgmHw4/EwuWhsqxuC2oUabExcZ5bGgAjM3sjI/RLXFUdVTSTeAzpor358Q947VkY6BA5mWexYLvv9qw6IC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271163; c=relaxed/simple;
	bh=z/c4VgILzumWRRK4ocob6HntZQ7oQwrDWP6zpPEp2L4=;
	h=To:Subject:From:Message-Id:Date; b=XmGeJBtaOvvkBovWBsO/r8hbZ9xO96Uhu75MRNsMOrP3uyh3+POvdu++8uTjz90IibvXRXqFZnS6QQ3ySWXHY4jJWrpvfIjKLdSzW3u2EDatt9WbyOAnvN4jKU86kFeN3/Sn1IUKZeEKf8oeM3d14WAaObs29dLWjReIrZic45g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdB6bgp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdB6bgp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 106ABC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713271163;
	bh=z/c4VgILzumWRRK4ocob6HntZQ7oQwrDWP6zpPEp2L4=;
	h=To:Subject:From:Date:From;
	b=bdB6bgp0NA1pcm5NwvEhYJxMikLPZRgOI8P8iqxDI69L47YFGjgJ6P5sYflqVLF2S
	 mv9+F0nZZXVnpV5r65CMq6JvMTzWF7kcTRWg5Gd92HpGIkQbAGRSR5YKXXcs56p44I
	 WS05BwN46U1dk/C+NQ04phLNgCVd6lQdkb7oFM739AAu0cxKEPyR4NRsqj1vgYkihf
	 JqWkXWwt0WSuR4CJxeVwBqGKlGeNtLmtUnN9AM34xaAI51jE8mmZvaC3AZ9Csnl1/E
	 519YXI2OvuJNR9Wud+SvGXMPBFgJQY5Fxjuiz52alQCF4/YL0xSP81P3GEW7YHFqGG
	 yrG2WHKklczDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF89AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327116288.17098.12228400209733137141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542c386d7a5e9344d43a07abaec9c412c8d94bcb4dfb0411a8aa43463001779b
Date: Tue, 16 Apr 2024 12:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713271162
