Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68C28643F
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753551594; cv=none; b=YjmsABrDWigaBqC64v1PJkaj0p31pxkZoLBUZTJJFa8bl+RJs+6d/IvQFNyoV0yamRYgLSmalRSvqahPSSIwPIuOjxpvdVLatJupMQLmim10Ju7wWjHOR7UpTzH+XXG05oh4dKa8r67kOrMqoqyZvkhCcFk19qhYJWWDP+xJB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753551594; c=relaxed/simple;
	bh=1UMbjt19hmvskvAg5mihCcKHNTh2DgmuINv1/ntKN88=;
	h=To:Subject:From:Message-Id:Date; b=P5vZvtQDFsTyAWtsEr2ABACvVgsR87x3HpnRG6w6K+R5P4iZoyXQByq9BJSnIh6yhzESfD1Txoz1c+E9M29uHTMHDgzmzHMxgeQKP/6M591Yuj4TWc2uJ1pRvhmb7q+Y4RkvLhdmGl54W2HavWNmWG7jHNhmj565znTqtC72lEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=micv4qny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="micv4qny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D34C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753551593;
	bh=1UMbjt19hmvskvAg5mihCcKHNTh2DgmuINv1/ntKN88=;
	h=To:Subject:From:Date:From;
	b=micv4qnyTmVaYdlNDIHxfmgNdJ5uASDwSUaNCIEk3C7mVsxMAEkmIZORVIVs/CdZO
	 1Hk7tNGjuRavCoYDQP/wRO2aOBBnbhgyMpzqIOQ/iXi84Nk57kTssppBIS1iNebkEO
	 FzEAhwTQHEREGLyPpDXYVAFHAGs3SqzGpMnzZ0tvBpGlwEe0L1hiUxZYUIbEgxmCmz
	 boBa11ovu3B8WU1Iy5jKvVCfzlX6D+E5DD5dk/VvTji3iz5uPvUvdHkMBlzhiRQM/G
	 cj7hYRyc8Aw8G9XAio/P/wC7LnzNAx4arIVpiJjdh3ehy/7YczDp/gwFz0PzwDBmnJ
	 HIBIg6FhbgiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93053C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355159358.8372.12851280068913747685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99df96dcdc6cfbb3ff401eedd091baef27bd9176b0081a7b834e835bd691dbd1
Date: Sat, 26 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753551593
