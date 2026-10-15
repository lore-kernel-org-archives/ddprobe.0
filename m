Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B4D3A9612
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792093834; cv=none; b=U7ZlFEvTgj6JU3Bv/pecYbittxKbHGxxIMplShIWPjtDwP23EEWkJ/K4LIWZGksJNmmRiFkgCBNS6rZYLpdIpGOZwpwmnuwiVSkbJAY2vUejKTXGw6tcApYgFGuTwnvcl3kWAoIFAxZ6kBMiCHHAOMW1dB5wCtA3Mr8FAkLpoyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792093834; c=relaxed/simple;
	bh=rIBoy30SMiQ5IKRk47uQnYgxjcEcNpLqyKOcx1RasxU=;
	h=To:Subject:From:Message-Id:Date; b=AqfTCvnR2t0XVz0bd3NVfIcD/gNQMX3NKr5P0YFnkD79IONAmp7toFMaypR5LpqIyLYZEakoKJPmVYYx2qkxgohsZTtNuK3lKALAtry8h4S1mfd5mWBxYyTWhApHmwKyaPMI/Wqay6xBWdhcSvCM467Td28pO4g6U1Ros5sPx3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9kC8hLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9kC8hLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF115C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792093833;
	bh=rIBoy30SMiQ5IKRk47uQnYgxjcEcNpLqyKOcx1RasxU=;
	h=To:Subject:From:Date:From;
	b=O9kC8hLCbpGQSIZnp3meWaUGdA9LcF+Kl0h46yInyoF9zTz7id6zdEo+9bXPXNyFU
	 zpWPF2K/jDYqOLCSSXj4cW8IFlYbyQO7lozi251GEGoeLvvep8/GeqbmgMa7HcmjQf
	 ZDpNwg/ZjGsdlUqb2iUgDIRHNcxdKhJGidefh3hJnspNrkX/gYIcxVeMLBr0v4+bUy
	 plMMU27626+TQoE3SmyTCFSpThCvQ9kE96INmGPx0WozjX+J+sDxe/FZqaGb5e7AIh
	 ohFEnSDDPfTawUPWsOKngeh6NrdxJII/NT47NTZ8E3pq7O39vwIKMC6Tu/whbgs/hv
	 VFRBiGEzYHwRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F72CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209383368.21219.895067520647975844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435d06efef0939a039d9c17bcbeba4ae463b6086ff49fd6d9870d11da745be23
Date: Thu, 15 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792093833
