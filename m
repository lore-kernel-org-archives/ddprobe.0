Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE19820899C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742422193; cv=none; b=SQBO3RB2/J3zhm1QlPGqdD6wHpoTnlV8W5kmRxGVWpdes3XNYlQE796baMdPX+MqTpZcnvNfAYKrEl0cPnMSTIVBkfwrHYBkz5Yxf2lcXQp76Es+TkVLCaHvuCdZyuMllUxRUu413qwRHQHIOQ0gVbjqc0fS4YEVqIuAlomWUz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742422193; c=relaxed/simple;
	bh=qlhZ01hVSnf5yBscoSsEFDi5nw+CmPK3dq0KVvPU9w4=;
	h=To:Subject:From:Message-Id:Date; b=Xy4GwTE5qCTS9assp8bOdcEWVfUz9NGzrnv+cvXE0ZujCK3vaV8B5hUGvNiLj8kZORbf1kiR/r1E/1s7uk2R5in8AkeOJq2z5zPJgp/c2crKCDqA/8aIES15S5chc5pO0f0W0Y9l33nU2F5dibL1a/tE3js6eZpfoeJgRjFeyoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFfccjWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFfccjWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27AFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742422193;
	bh=qlhZ01hVSnf5yBscoSsEFDi5nw+CmPK3dq0KVvPU9w4=;
	h=To:Subject:From:Date:From;
	b=AFfccjWkIvCd7hIrxAx9E2g/JqYsO/p/y8aASvENPJaxX7MQ2cU+O/NkxhmZy+s2X
	 TBUYFTaW3K+Hi4SbOLsJOYCujwSGqdUyrmN1EB0vNNkEap9YvDAMffqTcLu2ATKpKS
	 A449n/8UWchrRzT9ID9n/95D/cdg5BzxjOUllpipWZp5tzK5ATta9385jGJP621ynC
	 YoLxWk89kcIKLIXgi2Wfilt50q4USne3ngMZ6OduhOhYj/qbOcDOfSS9DBcq15BKGb
	 pVdBfMIRXBXy9WHzqmHpMgm32KlhNWHrVxvUXdzd4cl2ebiOyl0fDG+CrA1t77BmwU
	 kaFVZEFgoee7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE19C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242219364.20210.13967997106910706616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6e838ceb99fddab5d1f285f0285af3898c655167d758fea41a830132a10888
Date: Wed, 19 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742422193
