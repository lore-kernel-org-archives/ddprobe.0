Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1AC1E2834
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768103034; cv=none; b=NKzKVf+bpC/K2LKUY2rX4x++yGhqnsQhhrpmss4S/ohQrUufmeq8MQz3rIuho1tMHcKr4Ht/B1XgLyH19IjsYUN4B5Tr+haa12Vig/aepXWqigs4q7NhiRcm57p6rk6gJZ0SftnCXqdij/Zc9i3LhNkYihqVRxWFZ9Jc4INJZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768103034; c=relaxed/simple;
	bh=klCKEsPvfC+om9uSC5y9/iyHWf4suXBNOR7lDGioY3o=;
	h=To:Subject:From:Message-Id:Date; b=oDTkSyPaE56vsrAEeN1RVGALaYgXrng2kDnFktYdI63oaeNZfLhEqfddNnpkrYvVS2IHvmAEoVqIcjVT9r8wlhmIjRAaAwVNDRjY72R8zP8sv1xemH+CMhClAwssEpNHSo4booesVNu3hUPI5ZHg9C3G/0+b+1htZUXtzZ7a+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqzGYpX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqzGYpX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62ADC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768103033;
	bh=klCKEsPvfC+om9uSC5y9/iyHWf4suXBNOR7lDGioY3o=;
	h=To:Subject:From:Date:From;
	b=JqzGYpX/kjkzxFDsZtbJRAmif56pBiV+JCUP80cZCi9XH0D1UPS2j+HIfbRtdu7B2
	 SrG2YMJV1K+BffofKLA2n9UJ1yIs7HirpOVnkqPHbemcY97cywRvePwMF0lSXODmKl
	 SSLVK+iAAeDiXF4V4VSQ3eUXGLRCdJr98JfJGWBM+hosMkOWZp35FF38bXcIEY9O24
	 3OR83lOpGE8zWGSH3mFD/r4UTniQzUupAN/wlBAPn39o4eWd4nZMMwHwVmBAmCtLFX
	 zose+jMQxZ4heLLjXWukSIoBIwyUaCPX6sKeYyBmPOXtIcKiCevjSZN6MR8RHAbul3
	 5T0CCdaSEIdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC5D25033
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810303357.12169.8262352687044433702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e6e8bbce6a1881a750cad3274e26a62e7e26212a939e5728ab13a77224e1d6
Date: Sun, 11 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768103033
