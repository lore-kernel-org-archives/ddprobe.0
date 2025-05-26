Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418CE282EE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748287794; cv=none; b=ctmaFcJwi7Mlyp1YmSk37qXCASpOo9CIqhIiAf7qoFjVuXIMnZc5WitHdwZLvNHxn4Q0/otbcCEfYoG/7gYqiE6aXA5C8VpSbdKkCNglaopFHQbtd1x9E4E4PMbBb85zkkM1NCEm6br5oBxcTSSlFrCCxP3iMdPszM4YqNLFzQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748287794; c=relaxed/simple;
	bh=Qrt09IWGTOCtxikIOGMRaTnLm1qKRtQ1xcSNz/Gw08k=;
	h=To:Subject:From:Message-Id:Date; b=aZT+Q6+5zLtpNBMCvNN6/4NOE9SM37kKsI25S1ejVJ2M/7iOl4MdEe4gq26YrR3PNM5Z55djYgtB5I0znKcRlsQtb2GNcm2VoIJzimrWr6HGnw4adfFfI1sS4W4HFBH2Nd4/hbOiK7qandWw7SIBpxyXtl/v9Ifji5cnQezAbA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL5hM7zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL5hM7zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1553C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748287793;
	bh=Qrt09IWGTOCtxikIOGMRaTnLm1qKRtQ1xcSNz/Gw08k=;
	h=To:Subject:From:Date:From;
	b=HL5hM7ztLBNiJd7GM9tVj3YyULTcOyCNwiUHsq0HMjMYS8p+9ftiuZ+hVve+pMvlP
	 3nqAI8NzHcuZlqvEbRmjnB7PkCLNL3LHm3tMlykDGBQAwGMqboCOyzy80Lh0nCFGYK
	 tA1KSX8cZVcSQtDysluboE8Aal18LNLOtq33nTcUGvIomgC2DkXoOZXHAZvvyRXPU/
	 l4gco/rZn2m4z4eA9r1JWqCXoPDsb7kRC6qZgXKN+kGnklyaO8Tvwwcj/EYYvrMuXs
	 jGjhD+kSTj2WVddLXfLf+BPyviOFa9PTpRo67MLPxtulpTmXQ4OECA9Ho7GQPiJwnX
	 F9W3Zf9fVp/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08DC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828779357.4939.18166330291578847776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720c968b425cc12a9d2a3c4fbc0f769adcb73cec9926a5e087d5c0f6b9fe9aa6
Date: Mon, 26 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748287793
