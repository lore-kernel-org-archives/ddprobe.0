Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B6F32ED2E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763465514; cv=none; b=qxenFf6Af3fxG99NY0hRTq52yR/kgauwknCOr/WDQo8tj+zoJ05iTSWHP6b4BLE5TtGdYviDrNuaY6f/QgDDcGuQYSJqRK5WsXwvwirUiZ0PXObrjaI3Lvti45sr5mt5xnwOa3nlMtFU6vxgZYGxSJOLdIRYQoN1bCghsyWVxr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763465514; c=relaxed/simple;
	bh=1Li96+5A72d6nUYVeJg2OlWqEVFEzjBDPy1jZJex2ws=;
	h=To:Subject:From:Message-Id:Date; b=Mgc1EujUms/iIClU2RO2BystwNDFRO+wIXBNidoIr0oEhFggWzpi+dYn4bQJLFjFjal31REgPt/jAx4iZmY7B0znKxVlGjYntJ481JVh7THSaiNwEH1SqnL55a5DD+vsSrd5RDE6+mTiLT3qa8bfL/414wrBzPc1BbRl3aJds5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+bi7cDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+bi7cDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79CCC116D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763465513;
	bh=1Li96+5A72d6nUYVeJg2OlWqEVFEzjBDPy1jZJex2ws=;
	h=To:Subject:From:Date:From;
	b=o+bi7cDKrxt8i0upy4LR5a/93h2QsXkPDurhDKSYm5XfxF2Bhrnw7p8smQRZ56RDc
	 2RSkBFHGlRI5TC07jL5Nby4nWC+dGQvXqChlOuyAZfgWKd/8VmNnZEMCrHiSZt5dTx
	 A9SZmM3QIC9LcBsksW6Our6AmQ0xzjO2v4J/GJuk4bZk+sCxsXlRgYMOIMA25BGxng
	 In/F/CrQ9DnQN07jkqolXVDZE2HVL9pdxVpWZoq2mbc3J1J5/CT5PjQYT3XMmYdzjb
	 xIVaGJVGoAwi1KHAiHx8HxqpSvY/GvhDYQMJdoxAaPIWw3JsNEizUAmrQEugP+wfY4
	 SZSyCTOVUKhPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94752CED61E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346551358.25126.6111525387889729436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fe40aef2d99a447714d7481d6c48032606aa8aa845c1b7285368bf1ae27c4b
Date: Tue, 18 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763465513
