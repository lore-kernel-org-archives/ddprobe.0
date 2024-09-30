Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2971435894
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727718954; cv=none; b=bOkWaahdhhSmMqspmZjTp290jDXpSoD76zDyYxZSvMGcfqFd18gDs8j1puh9lw9fN29CZrXbCfShHnnSHKu3MkNGILec05UV2bA7YgdUhbKtIUikvU0LPxFW1U/j4rdlhvFa2RaI3XJLhTA/1Z7ngmZceWwCm8nmYW+jNnQ4ThU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727718954; c=relaxed/simple;
	bh=umStxiNrQyq0ka0hNq+JTxLAxVWSPEcjAE0bk/f4JWU=;
	h=To:Subject:From:Message-Id:Date; b=TPacnDHXlhMRxyfq8x6yR1JEuqddWWrT6nHMSB+splc1/Eo+03DS8Qvv5m2LBhLFfLwbr4jx1WSjQTLC0mhvfrUADr7Gf+SmTKLNnbSAsZu2BdDnQP5j30RHWFr4wgoNQOahy1MCOCEp4ty0F/eOosKs16YxLI8nS7JJxpWeMz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFkQP6cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFkQP6cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFA3C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727718953;
	bh=umStxiNrQyq0ka0hNq+JTxLAxVWSPEcjAE0bk/f4JWU=;
	h=To:Subject:From:Date:From;
	b=sFkQP6cmUwnNlDUnXDnVh+TcooFC1n0xkaHE+Il1/W4eTjNp1bR7sedPmsdMrfhVL
	 ZDrXc6F4JTbgzHQD3FKTMe0ePSQQPRtkA8Z4OvlQYLIJEJ1LwcQPj+rzaaSsjJZ5DC
	 Pw3/v7C7PO8XSqorOKy9gcOmdZlQWgg2S901KPQzwXfzZ6oQc6kyj6og21i73+bblY
	 JB+q8y2UuDN0gfTSXSmmZ8aTviqfD+1PqlxIf7dPAoB+oowKDNEoIsbPgvaf7c17U/
	 IEaY4a20mSoACuv3L6ytCLLqrMZBgW39tzaI3suUla8dVEjHcBROXAtFlctPzWBZaN
	 D+6w3xQLB1Ydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97055CE8379
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771895360.18273.7112097543107193303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d38d83a2ffcfb2cdb07025fb1be5000ecae427b1fc5a33ded4a063ddd6683d7
Date: Mon, 30 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727718953
