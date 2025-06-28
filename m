Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE22222A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751118595; cv=none; b=CGtO6QjfiknjKeCGvOEXoZxcGyIch1XaUNumBh/E8CGjAi2H8iluNMZFtiGoJhykTNSuY2YbM6gMvPQ9gMdZc9zZxmoBmnS7LsdI7eeg22eJ8zO8Po7lWwXwVXL5b0QmumXQSPUV0Z8qxzGyDJE3KIHbcfBiRMRiCquZPaM39vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751118595; c=relaxed/simple;
	bh=2vk6BqdpATdfU06m/xWrcB1BYH8ugWeQyxM+BvuL11o=;
	h=To:Subject:From:Message-Id:Date; b=DoBB2Cgc84RAYNvM6WcxARDf997/wM1SU4Nc6i/g+7dDWoQmYRpx0ylkqOjinawFBhBkQbkprE1PDE6cnyTFSBgCPGuLrv+VNIP5jmhfavmeETAUOsk6xE5khkz+mfPaVb/u6ocqAMWsxsO+5VccFIbgojNJ20IVkMl6ZFeoiEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhzkgbp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhzkgbp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3EC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751118593;
	bh=2vk6BqdpATdfU06m/xWrcB1BYH8ugWeQyxM+BvuL11o=;
	h=To:Subject:From:Date:From;
	b=Vhzkgbp7jC/zuea/Ssprb00PkfsyaLuKc+yWAnbRHKfMG7V4+N62ica2wuYppaFbF
	 R7O9OidR9s4AEaQkuQ25Nb+0hCcdrf5F1OmF+N7PvWYHU4pI0tfUuZn+zuFrDlh+DL
	 y9nMOajExHZfRisvyGmhioelS2/EWAskECVKJsDYed+ZcLB93BDysJ8oleoy2JDDlh
	 tPDupYdX/r0m3X+F/ZNTLwtAGEqvptcgXsTIct8L5vzzBzM9eyqul62d+bJp3N3NXN
	 zHr9KlD0UwpQQtQJNBrg6EjDnY3RICV2IwPdIdnbP4ET8q1IY9gUtnq3+LT5dHAXZM
	 aQVmDDqjYK99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F247C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111859357.23111.890801223693940323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5951a58ae80d4da269e0156c970697f865746ad03e64f232111d6159425cd179
Date: Sat, 28 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751118593
