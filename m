Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1034523D7FC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769753034; cv=none; b=HZNTkc69Jsng+Mq1Gmt5gnGqzmicafeEdUzTZKWlgVMgDeNDhRo3Is/a61u1wLU8hHO6cycmiU4pzufxAzZxwBI/bT67N8kRbkdpnLVR0ROe9alvPz/0l93mJ8g6iDiXm+79esmArKxp8OJ/cXZ6uV3iUHoQ4OVYwwMOmT8x/TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769753034; c=relaxed/simple;
	bh=qsu6E7a2wGOX76kZd782obl6h7gDpe3J5uJ3jY+bklg=;
	h=To:Subject:From:Message-Id:Date; b=nYRBaslxITDHuI96pyWACN3bZqbuoUQhCgJfsj4aRotickImnr+MqMR2fogbx3amy4DozSNel86pyJDkF+zwtqolyN6ixXTYjAzEWkEtU/VeOj3mLPewwE1w4L8E/F9JHNdcD2T1TcVx4FxadytKQRyH1i74UAAIa3mNiqMezAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBGGdJNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBGGdJNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E6EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769753033;
	bh=qsu6E7a2wGOX76kZd782obl6h7gDpe3J5uJ3jY+bklg=;
	h=To:Subject:From:Date:From;
	b=qBGGdJNqIhR5Mzgbi3lQ9DAR6rE1wrfha2fjkEqgLvQWPtTOcrzkFHWpjIBBpJfBm
	 x1HOuKoVoyAGkaZBxxjVZD9ZNNbXSh+ijOrLqQRCyGpXh3AjV/7RuVlmKVSI6WrEol
	 sOTsCVbBz2npokcb7aftaNyXU9IZp8dAOeHRkQREHWpsxujjJEPMxF94981mxz+MTG
	 wUM/yWziQQBBB7qbgBPfArA0Qp8lfXArLo6JB6SFH5TxvKOoqE7FLZwPoo0FMamuXz
	 SMU+dP640iF8j8khF8SXViQ3bx1HF6JoKiAp0OkXFMZplb+wenhzmoZdDiZ9bv3JGi
	 O2My+Z+Ho0NNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B2D358D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975303360.17046.6004892523358326434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a0762dd5407900b156306c87bd02f97c715a59cb1af8664926c1f6f142a2ef
Date: Fri, 30 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769753033
