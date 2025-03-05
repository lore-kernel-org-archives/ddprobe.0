Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BD019E806
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741195134; cv=none; b=Q2V07b2dn6xAJgvYI4k6lcOTban6R4nu+tiy4yjJ8v9gLDOL3DdgbaUhUI4G8CrLQnXViekBSjpNNvvJ16rM++cnFgdoVhjsVlwM2h6czt8kXSLwi72JwzBkk7Zqr4aJ+gGMY19H6C7L7O58eVZf7Pqgm5YzBiqUOMiPuh7ThaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741195134; c=relaxed/simple;
	bh=8cNQ6YVjRFrt4hXHqB9Lf8HpHvPSqpj37lJlFeKa0Vc=;
	h=To:Subject:From:Message-Id:Date; b=YQTLMqWqOgQOSRCrMiJbQnxS/6l+aqWFNj0NG170w9amQyWxBNMRAgf5t/sjzG7hTOsqiUvEx4ZT4xxX+nJzMu3swvT3DbduqHcQrkYHVElMWGinTbc9i6ht7X2NL2n6S2Op4bCEJbLPW7FONYTDMpm5AP6h7oojthDNW43Npuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG/sWr2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG/sWr2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89D7C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741195133;
	bh=8cNQ6YVjRFrt4hXHqB9Lf8HpHvPSqpj37lJlFeKa0Vc=;
	h=To:Subject:From:Date:From;
	b=PG/sWr2k8wbMXwszOnSni7Sw2ZWcP4g93EcV5P5c4eXvNHFrlGJYAXM6uPiOXoI5T
	 s8v61PPv1PI9fz+ZXYhPgKAF+0IWkeOEWoQOqFexBc4gNJ+UD3SSqm1KfCqL9OHOke
	 ewHXxNjRCo/e4gk3cDq8SXogAOYN4FEFiZKwpcio4e3o8NF3wpXbis2tahNZbBlySE
	 dhUHIxWVnPENXdV9NX436CMaHt+2p8poorbnbSXMswy2m/RJfyZDQuxw9KQOJR6h4M
	 eYDr5/V9sR6FLhz0WX5jPGBLXH2fWzat27bJ8+GK97FkKtiMliANHEbH2zmGcx7/Am
	 j5c4mR0g4wrGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A15C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119513360.20477.8827438193346793651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf933a7c967b3d6c92ae4e6ad366c6e10a44b759f8e37fcb8a3c8348a45add99
Date: Wed, 05 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741195133
