Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A341E8323
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748458794; cv=none; b=Uh1foxndK3P1mUcmwIGnvKkGtFbKDgQOvDWcgUs5dHr6rSKfBzWr1DVowIkH3OfiEj6KMaD/33tThR8yKBwInxpWx8+vvVWhjnDeQQIkopc1LXQQuVMBqo45qGH4f/3/aLP0tU1BHGl2oWNbPlfkroZsr08I1aWy8BXyLvq67Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748458794; c=relaxed/simple;
	bh=oQ6F1Mp1FtjZzIXHlklegezOXK2GJ4L/2DUBwVHP8Ko=;
	h=To:Subject:From:Message-Id:Date; b=anjchdONbNaoQxFoIbxi5dE+JYVijpaCRDPSmVHtVD9xqh7DH4bFi386ruIWqLFAEj2UgdzWxPvifOw+6wh6Imw6o8UFd79qxb3kQNhZa6EFV8MvsFwnaxSwb0/aUYQVSTJ3dut/McdTbKCpG1nlXMKbQ3bBZlbuoPbUrLE+Zfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE14mvf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE14mvf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5452C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748458793;
	bh=oQ6F1Mp1FtjZzIXHlklegezOXK2GJ4L/2DUBwVHP8Ko=;
	h=To:Subject:From:Date:From;
	b=vE14mvf1bw6UwDuvmhRNtBuVgMotCpjMNSF8PPtQY7ysx1ol0jVw346MflRKCSfl6
	 LfBss8qx2C+q7B1TsjYTzkLAEvmPM0TrpnI1Nxi/2XLbRW24OSW+blySa/mtg9LRJ6
	 HPjeyFX8MjKSCCiDU/WdhNaUbmmazgBzW/ftT45xK4kmcNhcHvLc3o7pqSQ3+VyM3y
	 8k6wTSEAbjQkgFMqSZjaeU/KZ2DowsrSzY5Y/Wt27vlaXhJfHYBvpeDOJR4SnoZXrV
	 xC/4M6B0Fh1NOLeNiSqRnh61n3uhM3UVew9NsteVRHAEecLxyGbehuaoLMhCuFrRir
	 yiIT2clE0ujmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FADC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845879357.9881.17034956929136454386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487bff5ce9208c088df90ceddfcd252fa2d5ed5df20e4ab93f92e2c2ebe9c507
Date: Wed, 28 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748458793
