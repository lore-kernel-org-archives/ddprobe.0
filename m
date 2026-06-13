Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A5530ACE6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333794; cv=none; b=oCnklqvsevd3nSDE+ln9hpNhfa/cyO4qmIt7F7tmsvjd2WbVDBNEBqIJsmHHUQ42zFx+kHeSJX79+VPAG2EjLW8o+SQIeKImnmHr09o6K/cZB5XNwiapFzYr4oJBLd373shR6f+yMmwcFXHpM4toSe4nWgyq+IK1X9eF1w6ka1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333794; c=relaxed/simple;
	bh=2kRyh26h05mOZX5O9FL1u5M8+FXytJq1gb0FPS8yVZ0=;
	h=To:Subject:From:Message-Id:Date; b=IHVfvBwECX8s+K1nmws1vqw/FoZ5yMRZJzn5iWl1LCyYNbB3QNIpZpcOObBFca4wDapDip/d2wp/Rp1Yl74zXmWfgMo+48bzuMzd2eh2wm6MZqu0UKjQHAWuu7UOeUJqmKjt9Bh5vTCzWyMf9zwV2L0Eo+0bsLXgCGo6QKHXitQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKwqaqUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKwqaqUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9FAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781333793;
	bh=2kRyh26h05mOZX5O9FL1u5M8+FXytJq1gb0FPS8yVZ0=;
	h=To:Subject:From:Date:From;
	b=cKwqaqUx914pR2Y1aJZxjlcNJZ5B2eeyoAMt+JNMyIz7NzCz85YvF29+QywModBQv
	 VZYTXrLDOXULcxgouDm6xAUQUgWkgVlNs5M9ROU40rb11Oh3AuCYIgRa3DRgNop1wC
	 Phgk6+Jd91oetWoRbFDo4W+TEv9jiJqbzTpHa0FNvPPS/VNUZ6OWS3EfIXq8A9tVdn
	 g77ms54Hl98r6imDEMiLOTkvTSawmQu8bG32IoKIeq7EG/bnbbMBmb/AjuyBO9+lkD
	 QBFjX0qpTDYPolSCbadsM2iMG28NfP/XnIwg29nb4U99JWubKS1Ahd0e086N6qxLCE
	 zvowUIhhX+P4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0677CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133379369.12392.889735534143915515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9429523d9bcf49d5c6f5ad090b25f7fbc811764caa304b912d2a97eb65426c56
Date: Sat, 13 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781333793
