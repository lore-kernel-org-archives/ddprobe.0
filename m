Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B381A724C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783860514; cv=none; b=maOBz/Il/ezlbbkIdVSoBDFt94T1qvP3qrBF+/bzE71yJuh12YoSmrrTDP6SO7he/6VXnRbQ4HPbat1auin3rsjPCJjYAEtgAXgLwQArVD07lKQ+DsI7FHdne2AGdzMbo9i78axfFKmtl8PsErvpV4Qp/FZ4MZRVqI5URwBV9dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783860514; c=relaxed/simple;
	bh=L6pu8VgBKikh47HZEIXsdQkTKioFKn5oYCYprA1Yzy4=;
	h=To:Subject:From:Message-Id:Date; b=pAh+RhxJrN9KB9I/hZGqlFWLcsmwr7d5w5UttUHvVs38wD26EaJQxoMP02R28NrfbPoK6CiYWR6d0L6tFzSiJOZH1QqRVRpL1rX73O5oaP2oPwVjMXoEJ7ppXBtFcIZ45eKePWz3Lae3bIZuKXpnvbaY8nwOkg9NL/lsIgy/lMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9bC0Bqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9bC0Bqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB15C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783860513;
	bh=L6pu8VgBKikh47HZEIXsdQkTKioFKn5oYCYprA1Yzy4=;
	h=To:Subject:From:Date:From;
	b=q9bC0Bqdc3XvfJ0t9021fJRdEj6PnpSSrAONvcGleAY6nNJqfTwYoJI0HNAU5dCRT
	 ghNPx7QDuTrySvWOKxkWx5MjbAcQx1y2bFlMs0ORQht1g8WizG288WYgSg2O1RWDRx
	 evgJ9FhFxXMyn8Pk1QPmfAbTN9vcV09KUzVBsCArrAcAI1RF9rMbDp8lJN/ySuIyJG
	 Teo5AjE0WJR96lbciChlhMsoU0+8orXhmEX8EBp7V2ichUKTQtZoYmge5vIdxbUZsb
	 YyVbtiCSG3iQhhnoc77DG98gtIhb+eeOjEffdNFZ5QdJIaT/aws+lg+aDD+IKS4E7x
	 HeHpgC4xNPpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386051368.26621.13933971696089111567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0ffe1c7c23a384c04609dd1b131be605dc10389cf0695fbf9cb1a0e1179ca2
Date: Sun, 12 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783860513
