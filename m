Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8BC1D54F5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725345354; cv=none; b=nJo/BbColnMOXFyBD9DktiKq8Zvf+ropg5VeIJ5yZ/fdMQE9vkJtVG7CS3gDhZrjB4NPFsfYh8C9xyqcgRcn/AKLItdvVBwzy9zF14hO0WvoXAmuD13g3qlF1l+xzI3vEDNvD31EJZPbznFWbon07bJn8ELt5U5YKJlwnQMQrRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725345354; c=relaxed/simple;
	bh=jF/6twa+Kr0xzoxY1/kKEgeFW9NZ4w2EV1FJyWgJjow=;
	h=To:Subject:From:Message-Id:Date; b=S41HU1p8Swg5zXIkjorkXxeI96T1LbEvo2zGo/lcQ591vRAPwzlXT8exi4/BQWD6agnt3VXdE8f7dh2LCqYSh2p4qYQWfTsamAo6hVXITUQWiBKt33b3FpMZW5jM9HTdgm2I1HTf9EfIn6VU144UGy6C2HX5oVdDiX6oS49T7WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMxuwBGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMxuwBGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6A6C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725345353;
	bh=jF/6twa+Kr0xzoxY1/kKEgeFW9NZ4w2EV1FJyWgJjow=;
	h=To:Subject:From:Date:From;
	b=IMxuwBGKnsSeQ5lNzB9+9A2ADLP+gcSSP1hIvEVZCvcp4WkQAh/hrUKY2clMkGggC
	 a31/JxkA+35zZGd45dgaZCJRe7r78byuD+wQAvBJqEYK4390V4/EuuaJBIRBLir1Eo
	 gucdwZKwA6VeJaJEPqmjQGAiK7XEQyTCZX1FISktaDT2PY+xeeKV2KP7clfZ4xUdqP
	 pGPXg73Vq627qHvLGjRcFhy9aDaRPkScv11Eog3DPN56B1aUdY8U2qWvQe7YaUQvWQ
	 eZixekBAeg1g9Kw95rKShfd3AYarIsYbLfCKGsgtxDLytiBiEchggQjecl79FBqkMR
	 4yTKCc6gwuzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA74CA101E
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172534535362.16886.7320660194155097793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1959311ee8f4d3e69417900c96c6b735df859c71f91fd6b1d23587c2e33014a5
Date: Tue, 03 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725345353
