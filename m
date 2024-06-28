Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3E215FCE6
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719581063; cv=none; b=XllcQf09VsbOZWRun8/7f7kvcPSiKB7c1FaBMABzqImmesNu9uCTdW7DcT3Fp0FDwgVWlHSqA1MT1KJ3dbdhHT55REidFVpBE4gfGH5YinBm10HbJkg5qrkoeZy3rvx7VPcFCeVLdQsyVERq9890eIPSlu36bbk8UcFm7GXYYZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719581063; c=relaxed/simple;
	bh=iXLscIGR9hcOThuMQKyWr3vuYY1B8FGEUnH4LPb5w9k=;
	h=To:Subject:From:Message-Id:Date; b=EHTEIAK1Tg4zidHEQ4rFhzw8GsfHdK0S10A9E4wWfElzrtPq85iTVcfzdZiX+6/Z6oDBa4RZrtBYv8y34FRYywf7Vqrv1Qmz/pJoVsaFHRJ9JOEaWTuBPQHsKciHfXt8k8Wk7sk+8wTVRdKdilxmmy5BTOLxXhwzDnot6qgUah0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioyo3I/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioyo3I/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C28C32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719581062;
	bh=iXLscIGR9hcOThuMQKyWr3vuYY1B8FGEUnH4LPb5w9k=;
	h=To:Subject:From:Date:From;
	b=ioyo3I/RLLdeHtsf3K0ogLyxPpLYW0DZvxRXBdAlAiNbkD5rq/GY1DIEvn/BTF1mK
	 +2MHFNmshepm4dE4hl78zQhDxh06ZNLJApxDS0oBQFl3ylSG3bEj92KaNidr+ReB9r
	 gqmYzniYgGyw4mx4FVlQOdVrCKxn3opDNb91y0OYtSGbyI8rpVFYdvW8i+f7XOYrJx
	 FBUBg3OQQeg0wcZB7wQ9hVyf4wXuV4QqiLKTFFyqw6+qdq5PIi/6oJIwwCniKnnWxw
	 XGKsH5UASZKfBgX96Ubhm/WGpaAFmJV2dxdX9KGBzFX+5X0P5mj5eegrmJv5rieXJM
	 pBAjANV0ktGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE734C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958106283.30890.13324182104404823433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fadb7385ce93c5d7f0cb2113a9d602f5f34fa801d2a55ae40b12f2f49dcb395
Date: Fri, 28 Jun 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719581062
