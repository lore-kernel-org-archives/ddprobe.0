Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C429CE4
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716632063; cv=none; b=eJpBts4yD2pvlaM8iPaio2/cy+yAfk52K4oYVq/wUT1jKYcYPbQE5k4pfCixNpb6WA/PJKvpRTpT388ytt+8AWnrnveRI4seDHHWosqyai/5zO/vhx78h26yhq1dkyEDPX5I4Zl1SUGzWYqnuBe5i2qgNF5WncZfc9R24pbWCMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716632063; c=relaxed/simple;
	bh=ks1Z4iFmZufdX4tIHZnzr7EmsyyKxl0O0QCPREf4kho=;
	h=To:Subject:From:Message-Id:Date; b=pa8I7fes7EUWdtfR0uQMAHmAlsB6uYQBIUUg+k44ENKFfH5v3eQR9cSFayXGK3d16IdmcXED5gywDsamZHonasHn70hniO7afWGBhHmzaDQRnLdYAJshraZmzCFiNnksrokGZ3Rg4qPHNXmf7BpJmX2f+EXY83Nd7ro1bUMWdXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhnjLEvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhnjLEvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ADC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716632062;
	bh=ks1Z4iFmZufdX4tIHZnzr7EmsyyKxl0O0QCPREf4kho=;
	h=To:Subject:From:Date:From;
	b=FhnjLEvuluF+FERmC5eXZZuvp2DelwO+z4yIaHYcSE1gb47q4uttSmAjTtxoYW3Gv
	 JFFKNYONSmT9kz64GiNbmNLblhyhohjI0H0uMRSwQ0o4afODBQfytX/Lupgu6IVJeN
	 TMNpe26Pa3kITUIGEmYIe0NGru5SHXkwMm/e1t2xc/Cd5mKVsyGkpya7Iq+EYNeU0r
	 8PcLC/UwZeEQnzU3XUSDUvUkMliEbfZdAO187ksYX4cDqUUWIF7qoCs+jrzO4P6QCl
	 9ks0fUq4Qp+BkEtQ9btY95Zx0NKhU7Cg+8SQQfR1hHpUm417frg5q3I29Oq5p0MJWs
	 ICi45m4aBQatg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBCDC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663206276.12082.15017801924136219746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601321e6c87a62c835da21d6654ccf5178f80a5b7410c764ae8eb8a6e1ec1329
Date: Sat, 25 May 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716632062
