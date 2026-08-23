Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E03432B11E
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787521834; cv=none; b=F02agle+aEg8rOaTLl3ZWEHo2zXlCcmt13e4zmIhlED69/41vQuYL2fHEA5vDuIF3fhJstrpo1acsESDmuuvWg3aNOxoxoOy7kYLNidt7LhA8BPBA8TDvj0KeEBWKwQnXaTHaGBbMM2885wAzmR5ApBPypvueQ1Z7lPuGtej948=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787521834; c=relaxed/simple;
	bh=WAdOTOmL/TpnEyhVNzXysOYXx21dGLGbpUBSusBBjWY=;
	h=To:Subject:From:Message-Id:Date; b=d/BnzvyuwbUzwlKWS+SG3gc7dpZWF0VoMU+mjoRNCJUmv5lmwkebhHGnyQfPpuOpvgmhWARIJn/kvBhIxm/hGdtIriK8YUiLlfwRJXWDI+kGSaawOIEQI/IGmg1WHIe4otmqZXMT0QSqq3GEM8/jkv/eRVra+aptmOQyLzdsHHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2hH2zIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2hH2zIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7E8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787521833;
	bh=WAdOTOmL/TpnEyhVNzXysOYXx21dGLGbpUBSusBBjWY=;
	h=To:Subject:From:Date:From;
	b=T2hH2zIeDy09zcuN/NqOeCGnnF/azeqx7a6mFJgOcSjvx+wvPYGy5eWNX8Yfdt+ej
	 uV16DH1HLzZ/+oVjVx84eZXTyYDZKu8P6XLsW2NAv1MWwHD/lJQiQ5NGAE0kEtY7Sm
	 W1F1LShLfN0jsG1rb1p/RPjCtdeupzPS7TvnnXOO2DvNH/M4T0Z7Cum6/Fq8WMVV2f
	 2H3eHuD3oROdvpoW9vclZYLKmG47i/xo5mNZBbrOoRD66j+RHFfWRJ4SrsQz6D/WPJ
	 O27u3H85SIM9qtfLEqzbW5G8WrmlhOJSGe9KTi64s9aLZztD7bMvwKK9BVXlTm3jDa
	 QPLVJV8LdEcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7619C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752183373.30357.4333242305633567282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3db25551037eed71b0bc2b9f0edd6193d28f25f976ec5bc1c37fb1751965287
Date: Sun, 23 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787521833
