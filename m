Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CD733987
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768732434; cv=none; b=t08vtTgVXcavnbvd01qzQU5Y+7kCIJHvI62pEyxQ7mTgOnQqafNziIw1VF+yuxUbg9X49/dl5kOhBZSTueQRXnAHqkyJ+gD3OdqbQnmTuuNvqrOG8cYtpseijfhAHx5AXKoMKs1Im2IOuX3Y3tA7QqtYjCg3pHV7jmcpg7dVIrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768732434; c=relaxed/simple;
	bh=V/LIGvzLDoXnX9MMCe4MMJJ4AcI48SqDR3c5mI5nzCI=;
	h=To:Subject:From:Message-Id:Date; b=fLtrzzYAW/1103/2nRVIDsN6RGLFcNHV6vTDgf+aZvCcKV4w7X8hv96oWk6QqxTSdGFTSDWzAtYQblPbj4KkI/y9YktRYML6ouXeEweE+VrW4mA7rmIsooUc8soqz0s2pkfDvW8E6RFHBf7pu+9jVeH0IAE6CDA9hxjqm/JsAB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEcVwnkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEcVwnkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768732433;
	bh=V/LIGvzLDoXnX9MMCe4MMJJ4AcI48SqDR3c5mI5nzCI=;
	h=To:Subject:From:Date:From;
	b=cEcVwnkMwshR280p7/NKpOZDgLXEIlmVwJhQoCRaR3M4lc25ygGVV9e1kjM3vJwcn
	 GNerT6gALilMe7whmXwlqHhVu0Fy0bkn73C4lrgZx0/AZOFpiDJrhkj3g5aXBQwUln
	 efVAHZHO0GRvqXRDRTXYhDIyFmN36R/LTELY+ihqfbyaKCDGDxxVAIYWZyShrBdP/8
	 +xdS88h3EilxyXwtRo7wRjahuR9CV+yjgWk4cfpinj0M4GEsfSlhu6lIpzXLxVMIUr
	 5CULP/ZO8vIoIy9wR/NfyGFJ3Kgc0kqFQa6WQNVLFgX5Yi4WaG55JywIlnuxcT+01s
	 CG9+c+/kK/Klw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D8D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873243357.20449.2438419546191890639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b77f00b7680ae447965d92d3c8097602318ef1b39c2515e6261643a86f5c6b5
Date: Sun, 18 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768732433
