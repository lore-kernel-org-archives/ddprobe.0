Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEF14AD20
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754327394; cv=none; b=LSnCeKaa754ek2UmXo5LIoPYs7gkY7pQ9q3V/9UTi8at1D8wU1+G2DCaFldjQoZG9oedjvqhrFogBHhqK4f/rnmUslU50b/lIEG7OAxP8SE6/Y6s804QQdhUiPViV/7WyPURQinhje2hkt/JIGkH2LUiJT8f4rJZFqhNe7L/5ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754327394; c=relaxed/simple;
	bh=gkJso2QLQyMm7a5WINyEUdPgTyTC0dGbPSAf0rb0T/k=;
	h=To:Subject:From:Message-Id:Date; b=Y3hLvEvYo37t3IdNig5E6Np+L1U0uH3lKefVMxeQ882LZJQDREHOUPcPJkPN7Tm+k0atJ1FHbEsDgcPXxT2UVjuUgiwbrPGIlO2XLG1U+7mb4kL5s2JftZfd59bxZvp6meQi8Gh9UoKuOyuS2und4mz6OIskmRfdGqKOUAnDT/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHtOb9aS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHtOb9aS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2EDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754327393;
	bh=gkJso2QLQyMm7a5WINyEUdPgTyTC0dGbPSAf0rb0T/k=;
	h=To:Subject:From:Date:From;
	b=BHtOb9aSWn2W8KIJZfwPaC2bPMtahN/9kiUdkSKv2fF/OgU2l5eKfCvQboxxFtHD6
	 Zs2OSqvKAQl5mEfTIa0nNwXV/hU2/33tlq02s0zVWKOO91PRyuVJKCKXHnkbX5xCxe
	 pqNvxfvz/EJDNTyTFKA1FMKr8ctd6R40vpkSczT3a0F5ySKzcIH+hB0i/WGAx/kTe2
	 bYZ1j7JVuKVa8LvmnShCK+DHb5geezEJd3hsEs0GuVgrEzYUh9mvinbWt+Uwae8bSY
	 JdA4h/FrytRpoqyHm/BhieTMAlFOrjrfTr0rdgbPgGMZETd/Bjui1PFtnPcgNB88HI
	 kdwqzu75NC+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90681C87FD1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432739358.7970.11633625593471295809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6099b25d657f6f96ca31393ed4686619692615b5ae5ea5b817b32b5e7705a5
Date: Mon, 04 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754327393
