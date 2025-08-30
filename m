Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393712DC32D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756541394; cv=none; b=KNVqK3SZhq/iTw6vNd1xCz6p0puZ8BUACigJv95YOnDLmIgnUtbEC+60tkLrIw7T0ttN+JVubWes1CjxBPO81RXRr2hl4qcN0c2AmOV3+4WLbBz42S9/r1N6MSSFmTuGJR6LYpsik05u0IOp538K6rK2WnvBSBGEZxeOZ9r/JmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756541394; c=relaxed/simple;
	bh=dseGN4jfTeetGASVatYjCLSVuTQ1R5O3ZMJAiWjLh8I=;
	h=To:Subject:From:Message-Id:Date; b=JhNd5KDalJLJ07sWvYe8UO7SR6L+8WTpsVKlGzlngYj7yhQZfEblcUxFgd35V3IjbQ0PiCGR9TqwAqbbKY33819W2bnKY5TfcQjRDCXBXxBTwNBY7QNHUA5XdgUSlC/gfFfUACEL6eevTRMZcB/cAQHgD799EU4MThWSYML4qTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxjJ+SoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxjJ+SoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756541393;
	bh=dseGN4jfTeetGASVatYjCLSVuTQ1R5O3ZMJAiWjLh8I=;
	h=To:Subject:From:Date:From;
	b=FxjJ+SoBKaoMD5acHpDgy5CLZjdpACu1h0SuazqttTkURdN94iVi/XSVab6roWW19
	 zUPP2GJpmkxkrkc17VQ08An+3FDFY/hqiYAAwoi5/pXTH/HPXq0JPDK3oPXAH/5+IR
	 CZVN3acuuzjci+BGoQazKzrIoyy95T9bwTusHaYMOgOtATUJfM0iC+wcw2uet1Uzox
	 rl6zzW313v2xNfItV7gfAWAw3WSVAQDyDXlM8nCNUpYoR+ZXitpTZe5CSdWOVZRx7k
	 UzV2x73DWuURAMoTCp9msDsA6BHeo3JCVfNsWv892y9sJUDl+CMz5BJbwa7rHV0SSa
	 UlBaFtKfx7QHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B2CA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654139357.32652.12562139693869682287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3247befc321f4a4a3aa73f196c8033a6233e9f6b498ed1aa0df3974c4bd1e7b3
Date: Sat, 30 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756541393
