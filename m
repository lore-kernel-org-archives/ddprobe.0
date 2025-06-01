Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7946FBF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748816394; cv=none; b=MSEUDp15kH9MwN7kVc04m01MrO4jsT1331xJPlt8SJQthwXQwHlz5JF6htO20KTMLkcYg3gVWZ8aDtyCivXGxR97yA2y9tC0aQ2hipZp9TemZCL3xCbtFIekbquMp7GpKg60RwGbNFYFxQKIiXNjJCtt94Vqh++aj61UcVPrcUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748816394; c=relaxed/simple;
	bh=Jdh85SkWE+/Hmv8Kt8OVm9qkZEK7Cw1fBskkFbpnwOc=;
	h=To:Subject:From:Message-Id:Date; b=dYhkqdjPdBuDqIR/3/kT3xiMrfSYGXBj4BoEjCGqb/yQ6HRyaeRwU9SblI+viTp8oXkB2n9hB/VYz/9sfBrgFU/osD4DrcoHAw2dfzI7dSjyb22ko39ZRxTFwP1mKEH5LTmtfVa/m+nRBnhSiEv22z2tDjmtwWoWmb9x7iIu020=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6lKNRn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6lKNRn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9024C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748816393;
	bh=Jdh85SkWE+/Hmv8Kt8OVm9qkZEK7Cw1fBskkFbpnwOc=;
	h=To:Subject:From:Date:From;
	b=k6lKNRn33zptoW8Hd7mpOXfLC8afByHE40wXm6ImZZfgHHvuMScEPn1BwDEVRtOA+
	 Nq+ZPcJ/RgisnPoCOsgKZbA0Mz7awaFJZC5FKo8UAIHacZtWkIS0Q54DnUp/7L4ydX
	 DQTCtq6n30kzUTQLnr4LOyFVg1CErZWuYoHseMFK6EP2Pxkusqa8mdPFddCqPOXpkR
	 NkfU2xpFHN0MWkMCbWCcsFpNpDYiJUkCSNggE2mGW/B4GYaQdBrCmuAMeLHIx/iwqC
	 spLZcCQEER+IUEPAQRioNj1tbU13H5s66DIOmfN3/kJc9Ql0IuliK+F3NoonoxwOI6
	 fZ7gRkUSv+rtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95759C5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881639360.16839.9440084416771332756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4015e664a45a90c49cf8e51ce5e16edbd3e0d9457043c40841129d3a73dbf3
Date: Sun, 01 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748816393
