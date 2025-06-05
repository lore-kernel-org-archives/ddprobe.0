Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C4224AF2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749127794; cv=none; b=ib24kQG4gblh9Lo+Ju0a3kkZb5Fu55fRf6xADQkBdjBZW2V2Tm+o/pLjALj6fSUuTzXrxvBJU5F41rc6o4EhNsWBX/uwFD+6X6Odzyk7FNQhNqejfczaR17pl9TLlk+9M8YLLUP7s2Av2aiNhse689aBbAKpMC3Q7IkR1r8QWwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749127794; c=relaxed/simple;
	bh=Fg0T2B5K+JHURRZBcbzAsg96tBVaeMgxiIViB4K9TN0=;
	h=To:Subject:From:Message-Id:Date; b=MC/XIzpaRa3OWUEqPfs14tE5fF0xNeebfa94uFeAoF/iX0uxOBwt8XtAviUFY5rLazjgSuCNmIMcoLcF+4U2sXReFT07sXTmD/ELSSgqAZ2soc5Yhs7gw/bPuJutLK5eWVF760WC9LYPOoc5FX0+J9aTckVOm6zGv8T8r4PVaqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIvnu9Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIvnu9Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749127793;
	bh=Fg0T2B5K+JHURRZBcbzAsg96tBVaeMgxiIViB4K9TN0=;
	h=To:Subject:From:Date:From;
	b=TIvnu9JxlFS+JpAmJscrX1xhAxIdwJiDgzSGvSoj7wvAaTpJgt5cEtpDy39QrEUHo
	 jUGjYIwkAwsMOKnedy5ihpOAU3L6yvpZPnYk6HtQqXNfzYqBZ8YKnvqpWheE3NGn8Q
	 d3yT4P/Yw47a/6HY4iralwVFG6eBK+jFlq66UiMll9+CRwHiWbHTv5Z7ZXSt38tCpY
	 F0ECQTP9YWS/cKBcmNFYhrEgoTLhRy1Gx4LDqi/l7xSu05fbXRFmO9lTOiVixQ+7IW
	 aGHdTHirGOnxqRXtm8JkFFeMwbVIq9BPMMR9ZcvfMzge5/BYgaAAqy7xbqsEaPL1vn
	 vI6zcq7QzyzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF6C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912779357.10882.11429645916081426067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf9624871b1e68cfd0c15f8defd3f48efeb911484d121d84b4c6aecd6b3702c
Date: Thu, 05 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749127793
