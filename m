Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555FA235045
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787002234; cv=none; b=knsuTreyJMreWpV1UlNxPGCMyzX1c7nL+njCZLUFkxU+8lgK4OU/MPzV2OeLp7iiJmoxeOwOYJqjn9eyVc4i4R4QbUR4A8X6Ci8FdRquodwQtuYpzzwpMR3G++FAx+rwlL5YSEB9iWSLs3njnPoaPdQV/VOhV6cJxTJQ2Nx8Q18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787002234; c=relaxed/simple;
	bh=jv16INBf8ygxq0nltyar4Cp3qOmdDJux+uyaKuLFmMc=;
	h=To:Subject:From:Message-Id:Date; b=TFrIKwgfFXob1JUunmKrlyyhAMnf3boA8svBTT72Xx8XTBHLZXZ5xcO0SaDTtdflzf77MJTDiOPnvGPf4xEw30M5Trg1FSBlFuFGgxziLM4hB9hICDFIYtzln6MomId1SiNeXYgqpbZJWH3G1obSHQIGJX/rNmQXUAsUN/+hBtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9DJKMqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9DJKMqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3671C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787002233;
	bh=jv16INBf8ygxq0nltyar4Cp3qOmdDJux+uyaKuLFmMc=;
	h=To:Subject:From:Date:From;
	b=i9DJKMqpxw0FS0TdTeEiWmy2E7DP1HP3CvnusHKr5GR1mVSPLkoAleO3DgcLjuFkR
	 V1X3trbzhXRzSWr7ZJPZXekIhDfji2gIgqLvk818MAVcUQj9MyXdXhCrpml5S2zrU1
	 4/Bgj2iMmQ7V7aaRRofvKKU2YsnjAUaInmHtIv3eeQBV5Lt/MfUILSFYxZQOsEqHjX
	 Z0DSfJsqH8kS+eTHgHf9EVEHiySAfq7Nru85cUOy/l9aoKYnQ1PMOcUGM2y0roWiuU
	 6ajThg5DIQmcGr5nRhlhpquVspimjhIkJtj9tf1hP6nG0Y/+Sxsh7yuLE2AG9viJ6v
	 az/h+wQ4GKcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF04C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700223375.15146.9164151995548780399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2afba16ca3437545b4f9a0ba3ace225cd5fc33d98ea88e7167bb88a8cded743
Date: Mon, 17 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787002233
