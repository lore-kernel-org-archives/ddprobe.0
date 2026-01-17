Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1223C2C0284
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768646634; cv=none; b=UcF2d/VDdurmP1eU9ymT+l2eIUedavOl3knnyWumM+lQB2KbCF/19DvSvzn0RvPP2Sy8G/Tmb7BtHpCof0bg6kakD7dU23reQy4cx4jsL0rURUBtWbHUSaW2xuiS1EP/X2oDfmgGDx4hoFlxaIo2NE2jFLJ8XSCrLPpGROGKQvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768646634; c=relaxed/simple;
	bh=u9KiB+Ft3k3+8e78bGWcGBNS7rAtgUA9d0F0pfbDVGc=;
	h=To:Subject:From:Message-Id:Date; b=uCBTas7zjW6OLVopDwUz1qsURzcJxF2jcziBA8t55/5k+QEpo1DQVIJMvodHWUqm1YAH+gNQklA518JntKG7PJYGyYs3dh+14HoJUSC6ugBHXJy1kyHXQO2h6WnhHQFtBD8jP6C/euNq8sMuI6t6eHFxFa174U0pI/93SeYOgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMmV4qR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMmV4qR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB2C19421
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768646633;
	bh=u9KiB+Ft3k3+8e78bGWcGBNS7rAtgUA9d0F0pfbDVGc=;
	h=To:Subject:From:Date:From;
	b=QMmV4qR0c32Uoqgi/JjKrJkg0DKLPU9YzuoZXH6b8stl41NYygyHYBNn8BAm3sm53
	 rRshFEsrr7eCp36b5A0AeZYnubjYrPo41Ckrs785cVIzz2OXyxfMQUeeF/d3LtI1n/
	 3KwGCf8ozmkp9sywrQhXEYdeqZL8GUV1uIcNz3BuluTajE9ZciSbxjRJLCqDhQX715
	 HGzzBiQ4jbtuQ62Vel3EbzoDWfN+Aaw89CUM2uoShZVfkj9pAmTYlCDMA2K94Ey1M9
	 rxe4R9ERsPrma2yz4vXdSlAJO0L06fokM6ufSsIiUC+dT1fJEV9KfMLssv5aAYyRHk
	 eoBQJoADXt1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050FC98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864663358.21999.2672106626456983432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a01c3926f1ef7eb35f2971a317cb722f85d628fa773498cfa0e9f2b45fcfeb
Date: Sat, 17 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768646633
