Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0215627FD68
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757956794; cv=none; b=SEBQEJ+Qadzwymv2/KXCwMIvdxAkz7iWPwHLhSstT3JLCHuRs9vBJIrVjHQoKiYAT13GXnkO9ldsh6d5h56CDEt/D9JrF4qOIyc5ZuAec5k/dy4XA6Fid/4hFYg44fxEPhpETSpRppKQvG0Z43FPaxaXq2h4Zr7suJMwa8DxaIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757956794; c=relaxed/simple;
	bh=cLKimeMjtR/Wzriflwwm0YMgiRTeMlWP+D8brMtVWio=;
	h=To:Subject:From:Message-Id:Date; b=bwDECiitZZoAKY2HnrekeaaGT7S4t1nWA1Gs18yNz3pMcWNwn1g12kIglRldU43yY889u+sIQoqunKYgbO84QjgnIN+G7FIWRadkKE3DUVJKt06gcusVTWdReUlsyMgn5EtcPw9d1spHv35tsB05GALrl8earS64INLlC7TST5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBOxv1vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBOxv1vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E5C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757956793;
	bh=cLKimeMjtR/Wzriflwwm0YMgiRTeMlWP+D8brMtVWio=;
	h=To:Subject:From:Date:From;
	b=IBOxv1vxVdOsmdXmomJbfWTJQmfPMJdLFCyxFt3rl+p7qDMebt+rQ/QQDKGYuQcHF
	 14LJW4Y+OjbE6/YtvTTrteNNfoDiqs7h9XF+6zeldll66Dv9f7oZpydFts/MZOMiL1
	 OQCoO5fDZM71v9JPIYhC++A0z9AFMkbK1C5eXrlc3pDq9gwX06j5Idc+2qmI0XNzsH
	 piZIDzWTLtWn/GDijDsaYTXnUTEdTZPpCDTH2nA06QRhNbv3TQwlbMNVzW2XQeZniU
	 g1vD4FuXwyVtgTnsVMbVpUJCIMsVvByELyamByJ4pfdVQSDFwtcSiuMmyMsC5RqMg9
	 BY+P6v37Ph3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C1CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795679358.1648.8817004149833699624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270d9c5339c300f770df855f1be697b4014dad54cbe3a126b42f1ae8bb89dd6a
Date: Mon, 15 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757956793
