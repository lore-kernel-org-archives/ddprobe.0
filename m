Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F6202963
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743511794; cv=none; b=d11OJ7dvtuDJBzJpEnPiODEsqXObh0njMT00f946dNqeiEYbFk6t6bgWXMzGdWEGKjI9C/HxPwGcTPn6l0OZ/sDmg4+mfc99R5xhKPtL58EiTx8lSfTJrJCNqd/1tv8STdpsUNcGMiPb4bfLI7JXmRkGQw6BSb+fuo1yc5ZhIrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743511794; c=relaxed/simple;
	bh=lNYYZ9UIA0CALKfBjgHzGlArsP9uNCFnpDCcdBqL5J4=;
	h=To:Subject:From:Message-Id:Date; b=MVZfKE/mZ7Gwwqd3+0GlNx02cU+TsrSnDgL0Bby0Ynk8LR1B2qFuEEROM3kB/Ql0KW/hUDcTpHYjYMSDCBHUUs1jngo6LO5zlpeLuS1WIh9iEgLRn6GhZMTYlV+fgUsZIE/hn0TCbluy5wiXk0fgcaEgz4Ob7YH4Jgs2uugMVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtpGQmQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtpGQmQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAABFC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743511793;
	bh=lNYYZ9UIA0CALKfBjgHzGlArsP9uNCFnpDCcdBqL5J4=;
	h=To:Subject:From:Date:From;
	b=TtpGQmQNGZpqCoVyrqqrC72oVj3ADQk8HfuUjoSeomqDPYp39n6nK6hm8L3uy3F6E
	 58jRdZb7Dnq/D4JCjDtAQjrhaHgUWYMVjVlNG+4S8qX8YS7E7LHQeCH/dekuCpM6Rm
	 s9Us5ajJWHLxQ/zO1Q/ET46k2PwXmTcckrHohdWfNiiDzitwr/fTS/LlRfmcLyg+/j
	 JBRqfSD3GX58LlzOMntcd463IZOIsmXLlFkVvM4pyTYyasaKu9e5KjNjeGvZIGt3BN
	 ZvwvXpDDAcu87DsQ9Suz45zKf9Jec7p7ZDZVHMeew6mzo1ZndAj9s5IQsACzL7XoSM
	 mrPDeP4id7E8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97451C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351179360.12261.7355222474298567305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c38f8e6281e3e7d9f19dd263d97649fd80737463a3b005f1068d602d1c64c3
Date: Tue, 01 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743511793
