Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A59279903
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786981234; cv=none; b=GKMWzEJ091aWTOCEPwIeJirx3fc6wEn18hxWO1psPVFdkIbcsyJi9yY4jsh8+NF/EF6euXTketOLOcL9PuQMHlGVl+HH1hBqCgqCVkYPey6HZTHHH1tZa28zo5/zmr80kK3qSPFp5ViT0IWzk+J02RyHXYk1GCwM0yVrIpUHIGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786981234; c=relaxed/simple;
	bh=+JhJyntZlB33pNQQJRtNKsOUh+5E1AY0oC/2/R9yepg=;
	h=To:Subject:From:Message-Id:Date; b=tdijTXfz8SC7PVT1bXFIokDVYDZLfvC3dAJfvJd+bzmrCOm6ZHeO2TBu+T94D/oijSAVE5k1F+ylv+W9C0quw/qPNInZdO8sMKcrAD2qqCG3Vwvlj5xxtrz628h7t46jFGWBZ7/wSiVTGuIUF9fxmZPK6nezXBPiP17btyYQZsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evlgnQN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evlgnQN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C775FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786981233;
	bh=+JhJyntZlB33pNQQJRtNKsOUh+5E1AY0oC/2/R9yepg=;
	h=To:Subject:From:Date:From;
	b=evlgnQN9aVgvn/jpAz8QQ0vpt5uSslgQiDsnnbQedyTeoP/gn0EC5hxJKnW2MXA7h
	 Ua+KXr4OsWORtc92rgJwVi+yvOdLW1kMwAEgbVpP+m7pRVC5y9AVdZGZDPmoEzSztm
	 IBR3BDBChT976+9cP5IzTJ613fI1N6SDgnusQMGBTpnjQ2dpIp1q/LPwogXdRasrUr
	 xMKdQKJ3N5r8E0p2x7+So0qq0O6Oum4zJTASSDrPN9KQkR39GGt7tj9mYo87k/ZzU9
	 U4oolCc0pL0+Y87I5F/OPz5UVhBuWTUwAQw6+31vIyZ1xq8JKwIfyZPB3ugpFZJWgY
	 af+fceLaepKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4964C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698123373.8146.4598941836971150658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc0e37d418e40007117732ff07a4fc3608fd87c908ccf417cecbc1d57818bb5
Date: Mon, 17 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786981233
