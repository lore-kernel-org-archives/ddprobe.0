Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F41173
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748910594; cv=none; b=gg48mUGn4LKZ8U2YQp5Lku6LU8iNpnhSR6LWGkAJDh1LsbO1nz6YGxwdemvk2h/DbEYP4CQ+zvcT7Tvi5/nbyjKrKMKmwjCI3KW9KBjkPz2QwkqkIfHYUq7qU/g+OA5vRnfZ5arBGRXoORHebQ8H4RcSluVICRlQKk0yGU/hBoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748910594; c=relaxed/simple;
	bh=kKpMl4hskzCC7vT2dvwEBXEUtOyTO4IXdLRW+Jskv58=;
	h=To:Subject:From:Message-Id:Date; b=Fv2k/70FZtHQwnfaaB7osJ+oeUE7bZATpk0YAz6p9DgmVyY6hpXmEnxdVA1EzGaa8f4rBsFAjlyJ5I18Px60U3juFLvF8frDI/zcawY9MKyZEw3Im/l8ULAqqtJ8KUxdqPpzPhOhhVMQWFAX8BbtVMQQw1vMcWiK4jXqN6P6UlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKg0tI9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKg0tI9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748910593;
	bh=kKpMl4hskzCC7vT2dvwEBXEUtOyTO4IXdLRW+Jskv58=;
	h=To:Subject:From:Date:From;
	b=AKg0tI9la2xPBgATfQ5mtCEJjld0w0lXicGB6SW9/HceveIs51IagcCO6Mux11Kxn
	 2XIGxxNYG2YTHNH3dh/BtH8GcLtzTTI6WWd9FIn26GXK17X4+RiyWaHW+yIDIn2dxc
	 rAwOS44In7KAF2RQy8gGSiB7spH9z8aZQFAtvC/tWCMsucDS5TS+cMA4ot9OBpIcwa
	 mdacmgdRk8W3Opj0FFOkcvHyPn4/9qDKQaqTht3QdAgWCzumvHWsW7jpUP688WfwXE
	 fe/GLA99eERmEx0d45anFdQPKv3j/pQC/xvcff2N40/h2t/149AsxOmWEfMIUeRnaM
	 O2fwXgSU+ukfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891059359.17320.8776595866968741971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1f46d657798cdbd92581a4e8dc94c9498d2aa74bb3a64bf8059f2f34b63c67
Date: Tue, 03 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748910593
