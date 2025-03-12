Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436EF1662F1
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741806534; cv=none; b=NUnfECbQo8kwf8qUulLhrX7D7jflZ7bSz3K62FglaHXRFOcG99c2WO77ks+9FlrE3AmZs4vTxEVSgwyZB4k5StesBSA733C59IVSwDZkvNqL8S1MKnuOTzI2SGkH2TF5NwFPdgCy+ztjlUFnf51yhCasnyfOYS4/249IQo2CtwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741806534; c=relaxed/simple;
	bh=6ytBEC7nsDq0IWRCNhkqIQrm5mZ0nNGrOjMn32iD20Q=;
	h=To:Subject:From:Message-Id:Date; b=Ck4SEV/oiB4NlVjLjVKixOp7X/ItKspBJCN7v+J6FshiSB09Z7Zt7I2MyEn+LDGC0Z6UTFltHfu9oGP8/9LNnXLjdE9Hp6W+WYdMeTJCetO0dfAL6ifH/WIDF06saIvYvr9QYBQfwx08InuHMJ6L1uWC47bnOGJJHUxXXRKQHvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc4Uo99d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc4Uo99d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12EEC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741806533;
	bh=6ytBEC7nsDq0IWRCNhkqIQrm5mZ0nNGrOjMn32iD20Q=;
	h=To:Subject:From:Date:From;
	b=Dc4Uo99d0Pz2aa1ef6qiZOUdF5QmYD21xvr9aZl0yQ2hT6/TAqeMw2dzm2ALe4ics
	 I9iQ056OUjLvmzKt/OBmiUcLjgsAq+ml8l8d+9g5ipgsRaeHthSOV8UYeIJMEyfH13
	 SybxAc7c1appsLOxZOieiD35qaLWezhZIT4WXxvmlyZOWvVVMQ+HSBN7tzqJ2Veowf
	 K/oS1Gj+fsVe/mDS639KnUKYcf4Zq6f6HwlLUDbIhcheKFj3KSe3oUnrCFhcv3yL6r
	 danvXJMrdynUbljxitLN+rFrFf0eCxadVU9EzcZKwDwd18upt8RRIRyn0i4nx/uBGc
	 LJj810/yCspIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11BBC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180653362.7955.1773537001815146145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e818c9de7f7ea7597617a662239672a0db7754e5020b3938f487c9447bda80d8
Date: Wed, 12 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741806533
