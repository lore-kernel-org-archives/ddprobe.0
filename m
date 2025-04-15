Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC21A0B0E
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744685394; cv=none; b=J+sTWaXyqNgvxUNg/+JTgMvmmsGRCnAqmMcaqeTMR2eFtDIXZf/zMal2rf0E48kHA5Afn90U83kyK+90kDGGpIe81OL2Z7cQKrNMI4iy2r9+kDglgK3azS4L+1WHXuEqA/Q/8fegAyv0Ng4ZGOtLtlJ4BWr3n/BLmVZBxo1mFSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744685394; c=relaxed/simple;
	bh=huo6iDCEdybBRvz6uERHtBtd1whKpGPIbTvLR58rhOU=;
	h=To:Subject:From:Message-Id:Date; b=RqbipGL6BlrvezkuE7jdrlh5pFpYsQywGVB1x8suwUoMR8TmzBMSlK2P88wxKR6EFLZbfWH9qrq4fA1RvEbEBvLrg2vDwXwgbdatPGfTXN9frPBiGrb4ye9LcWPkhc1ZutaA0NxiRoi6lZ9RNo8oYds4bzegVroMvvR6QjfiXzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0gcLBcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0gcLBcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A7DC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744685393;
	bh=huo6iDCEdybBRvz6uERHtBtd1whKpGPIbTvLR58rhOU=;
	h=To:Subject:From:Date:From;
	b=I0gcLBcJzxRam4u3Ttl6xVzXPD+in1PD6iWXFhp7gQaSGcBW3d6fbI2gohR57m0Fx
	 T5QMznexOGe4tnlDbzIK8lrT1NjK2etKlxb6qvQBHZmTcXPDoMWon7ezHQh/axodRu
	 UeHmfzu0d9EOW74HYMDh1uHOz8Ovmb136Y5sHAsLHdNSOIhISfXmNiVzTM+Ik/ixRj
	 YrHdNo85b00c6U5000qwHnDP2bSXN+pzPfjxK+aZf3YZy0237kl41N2Y1ZvCr6qN+o
	 3cXzDJs6xrQeRaP+Xv67G8dY3vGlVpOTHtGV1lgYbV75eoHrKWmsGDheAXiwFcYWng
	 mN+tYvr/PogcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DCC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468539361.26661.13787115504650505148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6025cea10c1cb0b8ae989ce6629694642d7d4f2c2e23f6f2da66e2411722e90
Date: Tue, 15 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744685393
