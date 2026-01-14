Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD09122B5A5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768401233; cv=none; b=mh2S/hSTlU+fooi8F5fLRyZJ7BKtoXX3Qr7c5DpDNwNVYn0bZx8YuhbnTQKf7/SkUNoKckGeRo3CpS31pZMbw7lq15WBxWp8WZiJn5H8BcNCgBjkyJqJZi218W4DW0yFhdnn4iEJpVG1fdTfl0u7gEw4QP7Ak+fLc7uwJZsD5Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768401233; c=relaxed/simple;
	bh=RfPiG2ejMYEGCRTJ40kzkaMc26vbguglKw4GdJEW+dA=;
	h=To:Subject:From:Message-Id:Date; b=B/8d09regEPGh4SJ5A/TyeRsUApFVA75n1J8lhaMmwnX2b0iYnEqZoBSGavyJhcy5V1xLfUsgCKI0uAABhEnYQ364yBM8e4Yn7Rojd7EgdvncNBIGpq/gWuSpv4+2zE+hatLFiU/dH3+qmGxPS4cLaGP8mwebOiJ8PR1Xo/Kx40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLAznHVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLAznHVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768401233;
	bh=RfPiG2ejMYEGCRTJ40kzkaMc26vbguglKw4GdJEW+dA=;
	h=To:Subject:From:Date:From;
	b=CLAznHVZqnlydHTxvJOi9/zntYD/2JHYl0PkSatSK91BZqeCM0Jdkr5X7g09bIB6O
	 6ldHO0hwNYnfuXLO+bWrliJ5IAuidBmARCDdpzw4Mo9rV6cXf6vQN6XTH95T1dzQTW
	 QK1Lc7v7+2u7aqxzz3rDdBeOicJOGbFggLJu9PfCRJe0saQz0TnFy+jHQSity3VLif
	 345Th6q7e+Mq3oWb5JtaKUfyrb9GO0h8+yHVFJXJfl4ldZ19G/bkAdCBuhi8uJDV5F
	 MLaBvS7FUtGuFOLOvn+YujrvjhPwTEvxdRj+15RJoWo6FfFV26GRBW4gpyYq3oXhiW
	 eouXMc8UWDtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8BD37E3A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840123358.26100.7184048337631212307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25686b876dce4a404f1424da90e1f64668f5562c88564d62bc4b0b168ee6f724
Date: Wed, 14 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768401233
