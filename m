Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CFD186284
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760719194; cv=none; b=f79FFhDImyiqySKbx4Nsq7xwx7jfIaX7V9VhoqWWCoCuUifKSAnRtRMF8b7ZbNElLOtiqE2JR9+i9dyR7fWGgmQHnGwrz9CRbzEOEDUmGpAAN2qeKGys/Ps6TSw2YXfnHaOy/J7rM7XjLLTrpTeay0/jDg7vDMJr6SkDthgUwHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760719194; c=relaxed/simple;
	bh=pLCzKNHZBdu7s9pPgxPjRc6JRIoadYrWdIR4ladXNAs=;
	h=To:Subject:From:Message-Id:Date; b=RynnmauAuDWzvYxzIZV7Ca9bpnqYRncd9NZJR2Fi0O0wvtVrjMg6gbHabh4/AgpNH89AceIm/RIRklheRUPF7E9WdSiT6RJxdNZlqUA1VDbtTJt6ZWZJZibekFXoYghNi7xgKmhLuqya+8HIJktz1OAVufyJihXgMIIltUGcxSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=re1sQTLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="re1sQTLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA95C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760719193;
	bh=pLCzKNHZBdu7s9pPgxPjRc6JRIoadYrWdIR4ladXNAs=;
	h=To:Subject:From:Date:From;
	b=re1sQTLj4evgG97sfRNYH0WcmCzQf7vncUYiLZnQNeWIBzxfeixD8qay50he7aGix
	 UWbIeNHmeqb8SacwDXnxMQayQMDhsoZ9PAphpQaJwChmPhpRRxsvWTq9iar4dW/1C2
	 q93EYoakbBez22NaLaJomL+WdPwem6IwlR7sniX//yctocUkH5fdyhGaS5NSaIGvhB
	 9AwJeg5W6lnOTAkrQ7YZJ5O7GQKmC2FuV9OiLMOa6QhV737dBvkB25JZy9oIRaBcSQ
	 ZC0+cPK7rfg5U1CHVNgBcpuXkCSdh9qN4ENMohNK2ov5k6WhoQzPSn9Jy3vQiZ+WDR
	 VkS3+oA2MgfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99379CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071919361.31483.16984255754117225649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dfb8e6779d49e5ad9329bcfec0ad549fe9a3a59b8a4b7ccfb1d26577fd5cf0
Date: Fri, 17 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760719193
