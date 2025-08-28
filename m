Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3141526D4FC
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756377594; cv=none; b=FqdWGYU+u7WnTUvHfhH4hpmA/6trySnvK827P6p+rzzt0aa7zezAY6umYUNlBCg1qvWJpfChjWPm31ve2syclla8Ivr8XpTA+CsLmpVDPdFUtbZx30tFkXRyJD2UnQ1eyymtsTB/AryQA+mdRsZrePaIaVdSmXkn7sSciLIZohQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756377594; c=relaxed/simple;
	bh=8G9Xo4EiKpER/OFI8ztWFBS3ArAGj6B6GEHnUDiDZOg=;
	h=To:Subject:From:Message-Id:Date; b=fPWKHK8BPKzhxX42z4fqKzgYEEjp2p3hz7PS9ClD9MmZyvzhX1MWn1BgLO/1tlEZkdWV+kG+3GOdIGsrzlUNMSaDbSkPoKMCsUIoNQrN08Lhtc2vUAoMTKCGnhlUEHXrHIfKXzATQ0ms7kt4uWWIQaKAQ4VG0/hAdHX0NIv7Sek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyWblxVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyWblxVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C96C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756377593;
	bh=8G9Xo4EiKpER/OFI8ztWFBS3ArAGj6B6GEHnUDiDZOg=;
	h=To:Subject:From:Date:From;
	b=WyWblxVSWsZr974XBjnMWEek3qBhKHPnPq9BxJUfMfZIRZSkOP+vO/DFpvMoE7xug
	 q0GqcEp/VwxB2scEW1H0iBvwqFI78MDTFtsaivYprUsP5qbkU+eKWuVUjtKmHODxQy
	 Xm5vTPhjGvmXUIW72YLPnkHNTLqZifz5QebynEnw/hRyPys7JuL6O/3AlU28U0+fgg
	 I9qPFhZ2ypcMDZ4jCDunQsDfIb5AsjSzgdcK9EJl6dSvGuVOJig6BE39EhxReUIc3J
	 v+yCEQdEvzmw2b4Ak8Try5y94JPU+BThLSrD31k+PCJGVgAIeoALmhYKXrZ50O8eWW
	 rru8Ru/nQggEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B0C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637759358.6480.10112061460093227388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109db1503a9019ae09564e9049a451cab7d022f56463823d51049180b3a46813
Date: Thu, 28 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756377593
