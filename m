Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E081F3FED
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768265034; cv=none; b=K3uYwGGz0rPOsI2tFgzWpDAy8CWIFhmS88nUOX1KWNv3/wBFMJIKKEe2S5O3PP1qtjQgcnlzQ6uf6epQH63Fvp+ZKGBpuyfBLHQOC7tREdpo4YKTiHtRZnG6QYO4YB4ihwtTp2cHEICf0yAEUwqxYaHb+5NkxO2GmgPng5BHNP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768265034; c=relaxed/simple;
	bh=ilIJNLzR3SK9q587yzt+mH42b//8R4RR64W6TKZjIro=;
	h=To:Subject:From:Message-Id:Date; b=IbOrYER4+LNPWSlflYgbW9ahfgcMbi5+2xoQvE7WLlOrhSbEIhXK+Qrl/O3npYTMlCNLttretz3pFg2V/1ECfOj4tV5sUhn5tgwM6XLjkWgRXAWwHNJsGPIWmwC+KJnAiI4SCGJBGteLOn5E4iP/M6eY+/YsYgtnok4DQeQXMzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpPO4Y5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpPO4Y5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F244C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768265033;
	bh=ilIJNLzR3SK9q587yzt+mH42b//8R4RR64W6TKZjIro=;
	h=To:Subject:From:Date:From;
	b=kpPO4Y5P35xNVXPUlCQSdzyME7IMujX3E/rG6P//k9HtYUICMKl4cy77KXTdgXndH
	 /yF4NTRvSEgN/oW5gDtXuH27QF9q7KxABZucK9Rlm2OGyrTIyH4HEjiL6uE3PjjKoq
	 eZnJf16b5RBXbC+yaDDsdbrFi1c6HF6GPtkfGRVnzxMIEtvWKltvuwkP9gld4jCe0r
	 C4/WjBiSPifA/7MdBo19J9f1kJGmSJfKKsKVxtujdm0R6FuEWHtkffQh1n8niiUt4e
	 OPmdQtM5G/2jhJatcJldSiJ1cLLWR1DEW6hdy8tzBbgzLjOKUaXIs7q8fw68Dn5tMP
	 IajeiPJziQzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B0CF45D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826503358.5099.242405670122221665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe706c67b433fb457a7a3dd3c0b3c9f86beb842144b28e08d48183c47c9c36f9
Date: Tue, 13 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768265033
