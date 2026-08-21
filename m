Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D892C0F8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787278234; cv=none; b=qmFiHbDJvGiAiHxArOZu3BjsJTD54nTWUSDuCBQgKnf/M/TLuAZZMwsV4s/KxqFiK8VbnncHYJgiH2+7e5FmA3KdHWQikfrdvdKd1FpkKDKeyXyqfvEz6156RDaDwGQL8hMkgN2Nmu212K+OgFJdWQ2NvhB9fRXoxS1NF9uX9tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787278234; c=relaxed/simple;
	bh=79Cw3XFd6WnQzycN7XP5st5zydDJGW+tbEiGptqYbG4=;
	h=To:Subject:From:Message-Id:Date; b=qsPVUzKrGWV2MPOSa7EqUAzrVKCOR5mmH75mEsk2J7RGuVSKP3ZvhPe4Idk8rPMB/Vj7RAeVRj/76DXCzCAkSO4XlvllNADCirbpuTvAeS5f5Wbrg3fkXuCwertg7qDorbsaP9jCzWK5itIR/whtsMNVnebFrxEbWNiID8HlbW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbXqow1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbXqow1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FFEC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787278233;
	bh=79Cw3XFd6WnQzycN7XP5st5zydDJGW+tbEiGptqYbG4=;
	h=To:Subject:From:Date:From;
	b=PbXqow1UiOUUuXb0iuSa+zZSxsHFSyTLQREZVbiiT55Q/RSxgRt/kUehBBhKh2sK8
	 y2jaUGW3sh62jKpS3VHZOUQV8neQKEhRfiDDD/gQ0ogHeULwXuYmbwxuagpY3lmZfx
	 9u+ZfpF5LxrL349WWCHWUpKR8QMVwYxBWBIVgMrnPoVwy+p7QhG/4lxM0ezoBjXrc8
	 0baQ8O3zxHzWtLda/aY1sOT3xL89h6Hsi1tY50/1ODHXZdKT0MHq2dwe6N26pytuQj
	 s0uhNZ6b+k2wPqQola2XjO1Uj9l7XI5L3x8IofLLG4yJ6j8XplUD1uH3E1qo69Zu4F
	 xR/xdVRcoRRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9637C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727823374.17716.4128662244306075834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038fabfef825cf8d59c97424c99cced2b130994eb3b7ed2cd9e4d07069c33665
Date: Fri, 21 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787278233
