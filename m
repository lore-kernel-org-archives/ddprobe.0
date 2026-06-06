Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2130BF67
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780742074; cv=none; b=HOVYvWmQOPTGoB4Yx7RHEhH3IYUydEYJEloAzEJSJ91mVeaVsWbdbEVndmugCcUThMWxDEnoBU0KjnOcZ8AYw6qnipcXyoh9Yv5ccaCuqvx7UO7tvm4SiKCbYDFSAIfkBfu6/+Y+QVOtq3jdAOqo62/RveLYYm0/CG5JjbHdhtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780742074; c=relaxed/simple;
	bh=9MwE3Z4OAaScJiIhOXxDA5JvoeBgPq9bp9fJbYeSUD0=;
	h=To:Subject:From:Message-Id:Date; b=MZQyWrLObb12WJ6QnnRUlIcVCOgR1Ji2bD1fo2N8sjQPwhn1U1XFOtqtoRnllUqf/XGqLZ8bgUZghNx/oqMVRsK7hzvX5dSPr//98SrmN6wHXdT6i4rqheuHg7JEDAGCwluo4pPxNLibaet2ylNFltd7j6KBqfv94U3Yyi/ZYwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFomkuYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFomkuYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71CDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780742073;
	bh=9MwE3Z4OAaScJiIhOXxDA5JvoeBgPq9bp9fJbYeSUD0=;
	h=To:Subject:From:Date:From;
	b=qFomkuYsZxYZnbQ3q9JXmeOT0rckRJYk5iSsmugafVHyxaQylKyn+ICExXqnE1rPP
	 CRMc6mAhzHozztVXpzQ04QVkZASDPeAKbVgDfbxKQHeXg5qYb3bshn4Zao1ILk7tHE
	 Hjk2ZSUiW7nKI6Ca/ji0VuzGQ5A9RY5wyvgYAIp+TwZA23o4CGLolJ9jXiqlfsXLim
	 LVAGO+sZTlrqXksveDjakRnKxSxM1LS3cpVbeIHoyLLm13BeHeWtFN+OsWJyKTLKHF
	 wH1qtJ/mgja4AyBWeF9cW8dnmSsGfx4JTjNYciDMEjQWjA0ca0sB4zbiM6rDWltcyj
	 ux03P4+jjjJDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD47CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074207368.6600.2055008122423274630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa692cc2ed89f4201b98ff00d2d95dcdb19a757d96abe465f6ce4856e6d1c40
Date: Sat, 06 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780742073
