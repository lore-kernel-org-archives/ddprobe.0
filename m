Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20029379C38
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789059034; cv=none; b=aGb+PCISq9k0H0Bj7aAH7AVUI1ouQj6IDNLxPT7dmYMLVPnbsx9QHBjaC8Z451DTeY4kEzDTQdEOPNmx73QHG+Z7lAwLyxfFU61ezmLKiI+XxK+6RoT4nAl97k4O/ZvskPTaiAPBPwuws3GOOwu07UEQ1yaLkIAECbzZpCTjdfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789059034; c=relaxed/simple;
	bh=da3ECbl09GhbuREHmYsumYtLsu0SM2VE0YqbB3dco5A=;
	h=To:Subject:From:Message-Id:Date; b=k9meBcxu7BPxgVof8kwOhJgJzSkN3fi+MTvufQvfuorIQJpbZ0l3kcEUAVpDyFXunzSsRdsFehEu2hjsGZ1X2OTJWdhRJScBYsKH39Qv4/aBAeV//D+MVXKKyADTtlh3YUWfTngdiPHgXJPEfDiBdp8LWzdBRAAIhbLmBpArITE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfq+vZcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfq+vZcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE278C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789059033;
	bh=da3ECbl09GhbuREHmYsumYtLsu0SM2VE0YqbB3dco5A=;
	h=To:Subject:From:Date:From;
	b=Gfq+vZcM2fsqnAx1VPhzp2KJzDQalVAaXFBNNXv0QYooKPUStCd3K5wyDerglrQ7+
	 MXwQWAXtjkSULaHRkRrS5x/kSgIHVSZd5huok56ZYZJAsFQasESpU9z0U3bTiD2zU5
	 tPjHVm0pGK6urKhExTgspTxl/Abyv5aW3HtCD6WV/NmgJt+95gkNBx7IjpSfU4+mTZ
	 2CDYffzDCSW2Pcb98Zt7W6qCvtpfOpmui0uCA2CH54Pemh73HQKMuCkhi/qyMnFDWy
	 tIDT9+WadTDZRgo55ZUQVf3Sa77c1jbSks1NIW/534K/gzwMm8KM9900J0TFuAl0nJ
	 8WljrIt81Qa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6CC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905903368.3444.222119026681836383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877fdef12cd9859b61d02b8b34dde31a4a39181777946267efc0bf5c6cdc0db2
Date: Thu, 10 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789059033
