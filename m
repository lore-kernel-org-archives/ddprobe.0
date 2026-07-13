Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4C353A9E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783983514; cv=none; b=fWpR7yV5xfqdgpXi4A/iwWaF9gKKy+dJCNW6G9EEaGhe+fSuICyVMDOlzVb0amugh/FG5u2nq4hgAy6QZmeIn0sVNeHQVyXghqpB9i6CQz5eEn4sAFZU53GEh6fD/eEC4MWsUSqJ3jKtpVImdBf6o8M8iG3fV3MtCS9LfCNSIdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783983514; c=relaxed/simple;
	bh=re2cssXzW5p9kr9YtC8bLb2W/eKS/2fATNeTC4wSe60=;
	h=To:Subject:From:Message-Id:Date; b=fUVhh54sBPgbx5+fJeQCb/qCTdWNWPGevd4L5vQutXNwWoDoF6/VA/DMIZyRcqljbLPEoZAO8sQOoBEwSrdxPgc0cgMy6/ypMrQg9Z7eEWQADEibenYLpPjzfofJ3Hrl6a0OSuSTWCXYV0SYBX+uZJ825B+b3Y/LU0wtEPPjFy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcNu0JPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcNu0JPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A71C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783983513;
	bh=re2cssXzW5p9kr9YtC8bLb2W/eKS/2fATNeTC4wSe60=;
	h=To:Subject:From:Date:From;
	b=RcNu0JPSXrdMbMQWsl3fjDniFOQCV1s75CAieDSo1gXNDV5XuYIsaDPscLgx0a3HY
	 H5I/jyUUMofaYnE0w6AxsPkJOWhD+2/pUXVBIdQfeixGzeyIvg/x3gA9Tm6PGYn0zQ
	 WwhQ1MDU7AwyEiQgcLYIxtUfXIRtO9TktPGQSTq6apDp0L0VslegDihiU7gW3Cnxsw
	 LewaQpP1edF3OT91hFYbLLJuLk43huHJEdZ0raBQyrApASTw5T4vCS4/VN3pVLXNbS
	 0SHEqnM9Vs/mSWes+6yEOUdYdfRhb7Sa/90Zhbap0L/z/D026IfxK8KgUeB5irHx2V
	 zXr+Io2iycJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398351368.27921.16297216962095126489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e27aa3774dc60fbdffc33c5de8d4994b056347748c0657a06ae783169552815
Date: Mon, 13 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783983513
