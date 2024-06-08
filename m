Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C8879FD
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717813043; cv=none; b=XodHvd7ldayGlmlYSzJgdrcJYak9PTGDoDlbNGyrHBi+q1WQ7yXgd90ubXC3NhV+yQTQ48kXkm4mjPuYAyLxplPbNm+LaGnELio5kcT30WcT1xHajBg+hBCR4gHrxizTDgDXvMhcWjALNT8uDHe/gNiMD41J0AQPx7zTmaPcZBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717813043; c=relaxed/simple;
	bh=1O2zANrrxrLO8j4ySlZlJZ+OwdMfOR4L0p9Kl5BfS1o=;
	h=To:Subject:From:Message-Id:Date; b=Vph5Q2JBsY8s18Q9wtrtS4IU/A8J1D4u1ERWRgs+riDD5TkSVfygXPbzbfzMUd5GXkZnsEP3QdbnekIX01ilYK6oAU5eLlPyZrXk7SZpolQCl7ridDDZE/KjCRUHwCLggaH0EAhc4eJrjsUjQsyaS33KJehp9XOw5FLIzf/x8WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNMDobas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNMDobas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5FCC2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717813042;
	bh=1O2zANrrxrLO8j4ySlZlJZ+OwdMfOR4L0p9Kl5BfS1o=;
	h=To:Subject:From:Date:From;
	b=WNMDobasjeIgd15kyIfPi/3pOqHjHfQLt8slP1qEe44cZopetLkWDb7YLnlrp+A0a
	 NfAQuCN+EWxfcgdLD3IDCFolEM97+7fXpF4ZBgKJtTQpw4svL40BlRGXj9f3YNqPiL
	 BR+YrhSDSmX0IeD8/Se8Y2j1cddtNoO1ABFM2wNe6X04Kfexxvd0P9J0l05ERTCPef
	 qoI7ADr9TqoVslqzicIfBgEjUnURPIkBsxuo4Q9SbD+4udA2XOwNvjflJ2Lr9C5xEV
	 dKG5OHJ2vCiJsV4Qsf4IHvLuMwNJT2P045J6Pk4hFA4/QNXDXTFUUhKN8Q21UV/eNe
	 du1r8MX/rAW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC92C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781304275.394.4230306196651629527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56395691a80cca6b8ecfd8a61fd55a0341f0d097bbd5ab095c11d12ba13c4816
Date: Sat, 08 Jun 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717813042
