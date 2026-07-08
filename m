Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401503115AF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783483114; cv=none; b=FQMLsqMjJWAcgqv7dBF5utCBGdVZ4QoGKvvD3ba3XqDnbraTFn0TU6/g7LARrh1mKrIcoTC1f0JU4xaPcHF8StEs52PFhsyUmAVP4S+QdCexMkVYY8e+JZvM+HuKG6Yoe2svBravyExUlW7AG0rb7XZBqfVw/6Gsc1sBi2/nGBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783483114; c=relaxed/simple;
	bh=ptRiz6F0eXVCAx7RokqaHHSe5QXQj/AeCyOyiINOLho=;
	h=To:Subject:From:Message-Id:Date; b=UxS1Q4B3wg/sS5ofhneE3UROjU+o76sO1I5ePmZ1Hvn65kcBgQPSb1yeENgnJVKtUZ+ZT973TklTiY+YE4/maCrCSYS+UX3YH++B9fLOKn/nErddRK7MRSW57IvSrA3LAN3rbZwe41vJqR79UmuZtFJpVyEC6loDW5OMwIZacmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj4BnOrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj4BnOrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3DDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783483113;
	bh=ptRiz6F0eXVCAx7RokqaHHSe5QXQj/AeCyOyiINOLho=;
	h=To:Subject:From:Date:From;
	b=Zj4BnOrhFci37lU4DxonpC8QhmUfVf4ka1s9TM2s5rKubT9wiulHJhDp5BaUALMBN
	 KKDcsKzd0/BpyttT697Bo4RT872XjBuB0/GVYjtWm9GbHZ0m/rM4H6ejMkRa5MqtnS
	 IGAIH/TYYuWAed4WuJM/UBrFAU6etqkTosmriYju+L9Z+exT5OFu47noTICFXHFO7Z
	 y7cuA26vCcZ3LS+lFLLnzP7LK0Ga+qB0ARhP/Ilz9XDIYH3J1riQH4vom7vsi1rWjt
	 62pTH8CuJ/2qeO07g4iPVEklM0qTLK/CZhDq1TwvLqfWusxmCC9vfgOIIiJ1LGk+vi
	 4zX0FnKv5BmCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8711C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348311368.3467.1196268669996747905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c2e5320c2f421cb058f6b5482adad1c47199faf5bc7b3dec2c750c727830d2
Date: Wed, 08 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783483113
