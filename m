Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBB32DECCB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784452714; cv=none; b=UsBxMSOmIUpzJxg5ViPIRU4vlHe/4kp1ja/OKDKR0tLtjjW8qQNg7FSp4dle74aYjABozNUG27ttTHKt6cTB1GLVFIr6grc6SLw63ltX60+NPrZWebb3q22KXqnZviBYFCHhnePscbT2Cd8QSx1hxRul5U6pXi/I/vwgQjAbiNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784452714; c=relaxed/simple;
	bh=rmEqGUHa5lvh5O+tjyfJ4KuQdy79O5Z4Kg0ZSkpnpDc=;
	h=To:Subject:From:Message-Id:Date; b=X1a1bjdMVqfmXskZQIO7Vvp+iccRbtxFtLhjeLftwMNAiRS+z3i2BzijGMQoo8dSPsO7RkddWFB/xEycTPrA8qgEZnQs/8ivYvZXPiTZ6lChGRhxod3mfZeRnIB0f/2j7NfS69j5O4ITc6F0Pk2XGwIN42YOHRBfBV1ibqaKbZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzJxAPie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzJxAPie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D417FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784452713;
	bh=rmEqGUHa5lvh5O+tjyfJ4KuQdy79O5Z4Kg0ZSkpnpDc=;
	h=To:Subject:From:Date:From;
	b=qzJxAPie2l+aN0cgrQ79siadHdi609xngAu9O+Z9yBrwBNKZYsUZZHuvOoLW1jJw4
	 50CzGIwIQp7c7WAFlXRPTVwTrBF3wPmGP4rq6MeH+xKdcpdPfeZHPnMXKhjiznMOBJ
	 +fOUGPts1sdDijoLjLMyVE9yJ8dPoCaEGJnKRBJRgWmrR170/Y6s3Pejnm3d1qrLMT
	 I+dKrUSpt1hBWhKQ+hnsu0xL4NIXIgE8gZk7Dh1e+r1BmDCDGDEQN5uBAN2xz5eeSE
	 yg1s9J2nz6b45jVf4W2jqdszCLKntL1+PVi7wD5m7bnTpMkxciTw+QI8KcqGmqYAOl
	 XbGw6SGZHFhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF49C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445271368.8666.7704068915149399742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8af43b2d113a2f58ecd59ca53ad52b2fa21a6b20c18ee3a14ac9ee89b58a441
Date: Sun, 19 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784452713
