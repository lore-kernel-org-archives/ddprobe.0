Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4711F3AAF56
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791841234; cv=none; b=nAgcxdpVkTndFi/nf54XGzlQn0R8L+cJejFxe4MCeCiF6ig8d+wAlE4OKUTJWTd8cyP4Vl77fIj1K5G8YQv69/QBF1hwF241CkYyV3/0OgqMSs0wTOEVzHzU85La1DrDMfYr0ErAR26wBgXgiF0EY1gUvsfhSzCU79RmYp7g4xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791841234; c=relaxed/simple;
	bh=rA6DHg+GlhShj8zABOgNYnvSMFLCuoYtgIL9GtPtcn8=;
	h=To:Subject:From:Message-Id:Date; b=I4tCtDr65V6qYPoZjEGLOuYSr1T0ryTDIPTf5mGydlOqe0MBSwBl7R3adjnBnwSXFbCfuEipH2ba2XpTr42HVAJQbIwv6Y1QPCbBnwJRnfHPRilygoAO/lbCyOPNZzn0eYZHWp7aZWEDp+5OT83faiGMr8AAyLLfmezl47TN4h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3A3WwwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3A3WwwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89AAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791841233;
	bh=rA6DHg+GlhShj8zABOgNYnvSMFLCuoYtgIL9GtPtcn8=;
	h=To:Subject:From:Date:From;
	b=A3A3WwwByNJG+XFMoDcw2eROUDlN6SECDygoU5O5ePkRPrzNBDR2T6ZdBQyxkq0hJ
	 NoXhiuDoJ+jO08n/9Ivqx2P4P0ouwYKUM2mv5pwTk6wGbFYQQ7CbpTZNZ5GWicGiPW
	 gdJz/+VEnoKaktM+7Qpkvpry+Xe7T+7McFseaLg+4IH5biPwwBC+Q0kY/MROE4qKvX
	 fxBt0BWG6J+TH0L5GmY8LnkFq4iyRlna1D+MinoL2Xs/2jNTTWvy6gzCJB8uWsNDr2
	 IiTPfDdRyPbRj3lfBSqCnvojDLPvax4WqZmIjYF1716sMh4ujS5z7B/oAQGyUQoF67
	 /3MTYLVSYic3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FBCCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184123370.28007.12984900890620983596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d633e1cd1e73f7cf91c58c0371587b0df44afe8c6cfc28a45c896dea1651de0
Date: Mon, 12 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791841233
