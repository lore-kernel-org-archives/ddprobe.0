Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F036182D0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736090754; cv=none; b=D1wgOSfQ9qck9pCaT84Dz6NvQ+oBbc5WcAd19Dz7oWBP40XyaAo5EFcCcLzJc9kib2teYYCljD3P3oMCvc1S4p3PNrj9PEarKgwsSA2vUbhiW1vFFS3D+ze3j9Mr+7dYRrfGCAd/rWKzx4pNRanyd93ASqzXeojaAY13bg1HbzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736090754; c=relaxed/simple;
	bh=4HH/8+GjaGkmzKPixyB0f1GbK2zGL+L9BiWoJ7LCeUg=;
	h=To:Subject:From:Message-Id:Date; b=ilW/Z4mbDoZBX8zEK8hKkkRIuY9UcQ0EXO8b4oFx+L3NSfy7yKp4RQc/4b1GNYDcRuoHBEySL2flJwp4DhaFPkZWAGkP4xb9z1hDlPtajbP8OeyNWN2ih7wp7KBwnOD5yU7tFC7Bp6NfWh+U6Yjx6YqZXWIR+LzeYvZ7H9+UmK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLKbMnXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLKbMnXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B732BC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736090753;
	bh=4HH/8+GjaGkmzKPixyB0f1GbK2zGL+L9BiWoJ7LCeUg=;
	h=To:Subject:From:Date:From;
	b=KLKbMnXeqnp+TIBbw3V2xDV1MAV3CVWjGDeroXhjA/T8AFt+chwpk1M0hAsesnyMc
	 PuYAbW3IX2mceo/9prvJMk/jeCYTLU6rA/RK64K4IP3OjfqpsiP/JIYmzH4ybhWQak
	 gfp+FYIj8qu5gKpA2e15HoJPtTycS4RG6V3LOwoH4rcp1y7pdiMp2U+AO42xPGZRjP
	 3Nki3g7OuO87yIhcplZI5om9ENCyb1Xiy3hAse7MTFOsmjeT02048SkmtJ3Sjm2NPy
	 nFk55zNhARLXhkyTrdODQSQPPuhbxVZogIcJ5zOyM22gygq4eSnlrFvoU6tzsj6vKa
	 P6/+eg2QxWuSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32A1E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609075363.29313.3509329175169909928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e295f24d819cd8ea30c6f6dd29135a95a2f32d7d69c30617a77369354382462
Date: Sun, 05 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736090753
