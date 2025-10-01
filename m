Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498BA46B5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759283994; cv=none; b=C7HqKuFHw3V1Lw+J1dI5qmHe/ZCENaXaUJ6vQnZ39L0KZVj2Xmutau0U+GLlbYWVJ65/0iMnKlI01SvePAnJcWCkiSi14JhTGgNws5lCZy9L1gDj/J1E/No9x5NOJ5PaRcbaqYEmvy7C2PKa10wQiLCwevpwI+cXkWn6bTV0Bus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759283994; c=relaxed/simple;
	bh=GPQnMy/rXe9P9DPfXrIxIFyaxi06FW6/bbeLd2M19oI=;
	h=To:Subject:From:Message-Id:Date; b=RsRPX6WN2hibYVudbMUQULak60ohlxDB1Hky4pSD4XWXXz9sh0heXjgm4dFnFlBPOCXSt3+idoeF5l0uhkJ8VEisEjl3CxsEAn9u9fuzAUlUA21F8YUAPhznl67EoAP1EhNI2kIx7ScokFwreYe1HVrWL9x4T4j7Fcd9+0hOYLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgXrlOJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgXrlOJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844EC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759283993;
	bh=GPQnMy/rXe9P9DPfXrIxIFyaxi06FW6/bbeLd2M19oI=;
	h=To:Subject:From:Date:From;
	b=ZgXrlOJiBmEU19biqhVcwww3P8flH0a4Fxpq629SoBwwgHm3JuSO/ALyCCn3QEpHZ
	 YrV3malS4eyi/p0QDgeseM1l3izssv8fXiHjOywrHDfMyAS/rXLXhQpLHpoG840dtR
	 etL7Zv6+D4LWG4KYwr+o97l8VS91dGFr6d9TaBuxVv4JZNK9/C+hEVZ457zBCTOEV9
	 3+FGoBNV8xUn80UTvVhikdcpv5ebtkh0pLqBAroWc8V6uMIwbT3Q1QsDRi7e6NUWSN
	 UkG3ixrRRyeOTY9o5IeNUwK5bNqHlLP3s+mGcb/Vd6VWZJASibV7iTgcN0VkQWhwoX
	 vLCqVrIlXIZ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BBCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928399358.349.3435816814363602259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d11e50e4d26ebe1b7b230a0a836c996adbd6fdde14aaa6064560e2b5c0481f
Date: Wed, 01 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759283993
