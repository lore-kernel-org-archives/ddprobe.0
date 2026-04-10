Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D0934FF59
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775810854; cv=none; b=l5oIxfZWhVeEKmRyUsh45sjlDKqThtJzgyAom1lnKmiCR3LFnpViM0YjPnuzQLnDwppqW5SykqOcuUAh9tDXBye38Bn4YPzyVcfPLz1KZSpoeV7cl/DIamstpPP1bbbOiNWiq5etcTohbbvl7H4jkqYg6ilTH5ahJsMDihGpN0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775810854; c=relaxed/simple;
	bh=TRpCHqp5pghXKmRZuDaPNn+nZhiy93ZiRbxwFBoCYBM=;
	h=To:Subject:From:Message-Id:Date; b=OpvWWuMKknxXzI4CwSpXVj/IDjEnw2fuA+R15q1Qf4k3uf4ste6fdpUru0eZlX41/rll3C79ILlmmnMhY+Fd08uY/0Jkkxsqmi5K6XyevQXbsVqpeAByohRyWyvlftNkvAFnqkjdVcshF+DR6pNqsmiZH5Xzp4eDlC+hLEjS1pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsHKVQE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsHKVQE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CA4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775810853;
	bh=TRpCHqp5pghXKmRZuDaPNn+nZhiy93ZiRbxwFBoCYBM=;
	h=To:Subject:From:Date:From;
	b=SsHKVQE8a6GYCdlm6CPgMRq5TZordhjgL393Umzo5am0NNvRSreJwCwSHyyVEd2HK
	 r5YPMJevXs4jP5asjAQmTurC1+s/oT+iHIgRki8Ppkp2db6Y0Skl0vOHc+i677VAKd
	 dMniwPJKPKIeoB/bpEMsHLBHi6wN5nknvKhPS8io0TNkPX3K5fWO1g3FKccZKZYKTw
	 g1PivNEqkB8EQ0uQOZP04ZFmoFVCdDeC9e48mNmdMyWKrZDJqH2gVnKf7aOjeOh+vQ
	 5V8rZ1LhymprdEQ6vrAiTeJYjIjK2zMei34zPMhno6+t+y4FUMzf68bprlqIccYBw0
	 xaGRw3x/7sB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9448E99056
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581085368.17115.6182927126644445224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465651c19fafa3b050ee670d090b4fe669041806232dcc9170e22e17b5a6a997
Date: Fri, 10 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775810853
