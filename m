Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6726C3B0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779730954; cv=none; b=j48gEP5JZZHdl5TugtZFP4yYyOwDA34UP1Q1HoLUXbZYkccnzlCV9mELggNZyd1WXv2fov7IiG4QP7GzVTudgJM1RLV7QQ4FsPl2o3bquMX59eKSejsResk1piY+xTmxs6v7dRD7HIHa607ODv6W0j/xOb1tgYbyldXVXcZFhz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779730954; c=relaxed/simple;
	bh=MerK1kXa/kfroROkxZS72hMrkkhKvoX2+yC5uQdPUI0=;
	h=To:Subject:From:Message-Id:Date; b=DJyazrfNu06V76s3+Rr5lwWqxHbjBg9gXGRZDCAmC1VafMH0ztWvVXMeBwLT1F7uG08Ay8hvuEQO0dD3lzWxaGT1mHR393QXNFbm1qSN3HLZp79uBPyGKpAsBrfJ6+QTYk/jWKlWoDULjMlA928AQmkHo5uAX/a3YMVaFO/DRXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTB22OcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTB22OcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81CEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779730953;
	bh=MerK1kXa/kfroROkxZS72hMrkkhKvoX2+yC5uQdPUI0=;
	h=To:Subject:From:Date:From;
	b=PTB22OcMxeHuyloRqTgsNGs3G0azjBMHITi+Sly5CzM3XWYnfDbPI+fU8G8iiElxY
	 5j1wsN6B96QoeMedAiOfsld1sCDjlzKj+f8v4BQY5zqqaUXX8LqJA+AgQFxmqWeS8p
	 mfC0FPCFwmv8Kij5Ib07FDGPF/Ij8stuTzwIzPsN4CgZn+CSX/1Sk19+JY+8EpndhD
	 ZjoRsS11Nv0Jh5RXBO6+Y3tv/pm97BtOcnTMvMP1GxVHw/JjHJkmEfRyXCLOdz0R1o
	 Vi9DyjjcR51SHywsEMFA+4ttYmju01D+FVvRsnJoHt9CYHClgvDom2TNp3Sb0zjvz8
	 4UbLmBbNmU6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF590CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973095371.13243.16128786866898056168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401ae9c54bce44a1e540073ea921b91f5a89e062537b4de3a3bda7cca88e5d54
Date: Mon, 25 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779730953
