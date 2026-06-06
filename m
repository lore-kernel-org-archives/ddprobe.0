Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F63318EF0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780759474; cv=none; b=X+5Z/FceJswDLSZXPF6qYBxUAQyLQedN+XAkCR/VfqRT0O2OtHrcSqeWkulnLg1J+7mPuFnWoR8+pIuAbeyqTU62bHxQ27RLTbYvhbPtdKrIIW1/MY6KOXbUy5zb3bpMkfuJUhg46XcFj5fGuZfCGaA8QWDTvHy5gB2mkvzTiVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780759474; c=relaxed/simple;
	bh=i+Nfg56ARLJW06uxIIX0j42sxv6nAhtOnK7h+NZy+o4=;
	h=To:Subject:From:Message-Id:Date; b=azTD9c52bZoJ4vpUcxAf197hJraTCAQKUQlgm70cL3s1nazsGi8JKOk9A5wlT+qM3feoenpg/FchdtkfQOY80E39p+/akDbDnsrHrTUnA2vNfK9b2Vn1sKsh/OlZjtf/7nF7BOAA4MZBHf3P/4aGvs4QU4nMxr69J42fKNWWMjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni9Rjk7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni9Rjk7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E85C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780759473;
	bh=i+Nfg56ARLJW06uxIIX0j42sxv6nAhtOnK7h+NZy+o4=;
	h=To:Subject:From:Date:From;
	b=ni9Rjk7x/lNychp6wIsS8witt+Ty6r/ZSVM701K0RqnX5Yn8DM1LySmWQ6HU739zB
	 x8Fgw5nifpo6zFA1EyjCkHsEG41cwyJy8dt2pS8zrJRORaPQKtmgsKkm4l6tXIyYLH
	 KDJbNJ3mP9mntwzaTFHD7idbixsOWLbyP309Jjmetf24mxrsfr1gMm13Za4iXwHwE8
	 JrAlSsvf6NXIPNJvoH4q8kvjhTL2a4GpiwdZc+WSBSmE1kIpruzL2Efx8gJpPGOEDf
	 SvXcnj29feZ/bp67T31brJkaVYypIdX2HRivp6Oh4ysi/AgNDPxk4mbNgWliTfNqtz
	 DCV/1ybdG49pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A8CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075947368.18426.9443187209893733808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a401096034a561597863461c10154f0d347f604bda94a5357bc129e693df73
Date: Sat, 06 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780759473
