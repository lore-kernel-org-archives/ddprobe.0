Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51385296BB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790518834; cv=none; b=oTb6UHViZ+3H9fJyfYp7Rh84n/auYoXm7QrM1ZMhaoc6ijFg0a3ObTQhXzLq6TCcBn4x5FIRj5BLlFg+zF02VqBpf2ut6mUse8qFnt17g38Vf+AfF5SbCS6RWV2MT2QPOjo3kqnz6DvaamC1RAueuSpOTBwjnDJUWLV/PnE55AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790518834; c=relaxed/simple;
	bh=ogmIICAH8/En252N6cwAh5yCB0L97ghWB5Sh8LXBiiA=;
	h=To:Subject:From:Message-Id:Date; b=FRWOdFwoIWMNbWGemycwc+vQSMaRfmwqLhqhQrbjnaFZB1UjQ/GKC8K8nqg5/ixWGQH8vLTIFomo64d4Cj6yadpTP1vXuEwLn2QXcyGH26NZn5/aNvD0UUFv5l7lN3XK9vA2pfenr3eGSQjYL0SjjODu91qoOHpLQtVlAg0lRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnjwSOfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnjwSOfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEACC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790518833;
	bh=ogmIICAH8/En252N6cwAh5yCB0L97ghWB5Sh8LXBiiA=;
	h=To:Subject:From:Date:From;
	b=GnjwSOfS6SiRn7c64HDB/PIO4gTb4c6Vbei2EUlA7tw/ukRt9GdbGxeDAm2nDUoKI
	 GAZ0zxSz1fORKnRg18hpNgfwdRwYt4AX7nbuq1sUMsI9uDHVSAwE388bpXEe6ClKCr
	 Owi6MK6k7wXuZ/SHwPNpdYx10cT2656V4kDarUGAr1HE58V/Fo6ctlCfy/D+5Y5nIb
	 iU8VytHBuKCESz7fmkn7BB8fy4lA7dUOCHJ22mt5MZbQkePj9i2R9e9pYtfBbW5fqN
	 m1ldfHGxAiH8d/kTzmD0EMjnB9dxIeHqlgLQDwZ2kTLTeev6SWeHf5VskFh7As8Yuu
	 sWPDLXhyzj43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3FC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051883369.19093.4191452173425899928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54894cd9608e43d9e7b0a2d718694c28c194d44320910ba2c0d120f191acb47c
Date: Sun, 27 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790518833
