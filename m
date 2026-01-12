Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0506532A3C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768207434; cv=none; b=O65v4HMdn/n8uzXG+/k9W/uau51xsOPLb0lhmGmwHU0pI2NBfiJJmNCE+X3W6z2PHRlG/6C5hU42oMNJCGTSuNvYFbLtA+wycwcNLZhyCeWIvlbK2JY4Gs0p6Qtz4/GPFYpKGgUC4F470NqObTrXuirGmnH0YRbtBWV15ZV2QaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768207434; c=relaxed/simple;
	bh=PGVEzsNltKWJ8n9uezAIUGqqGwXOydK4Z3t5vE/dbiQ=;
	h=To:Subject:From:Message-Id:Date; b=nfrGkLjTXcMky4kTpARWelpvsfpJpskmPhj1+eaLQkXAE7bAlu4Bm6TMEH+BhC6pExL6pO3+qAkepCN5O4QujAZdRXbNQGe/y1HnIbrawRhr66GdFoZTornQ1+y88vYWRY4QL03zgzDZfGNKGnHGLpxcQ/zKKydnezt01ZaZLdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAOATkpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAOATkpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9525C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768207433;
	bh=PGVEzsNltKWJ8n9uezAIUGqqGwXOydK4Z3t5vE/dbiQ=;
	h=To:Subject:From:Date:From;
	b=QAOATkpe1LW9N4ImS4ibTLBTbF+79C7Uww/GzOgTNSF7OFXZJvUKGDNMPP69YmEpO
	 IrjGh5SiLChUYm0AXcbhJOhQYwcFuihZO5ZpLGvn50va12ma4uEcKZ3lZTrmI/KhYs
	 6kjvi4WazX8bYv/3xjDL8MFfUpWOwr1r3D6mWNs/DCs0ssQ3+f1yZMoi/I54w1+Csm
	 ozv7ko5065sXpJTCM8fmTxlakXAI/zjcaFxdC+8eyRJiuZMQKtzhcg6cI8d/NpacXD
	 HGonGtD3fWZaHaANYjDaQnLnb9r0YjPzqPeZHDBoxB12hRbMtWl0MLporKeLphGc8G
	 DsPH1Dl5i+Jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A26D25051
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820743361.2115.14174758461603018169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f928ea4383dd5834ae3a7821b2bb7ccf224e3b7ecc4e1c3018dcc2178752a94
Date: Mon, 12 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768207433
