Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428673932D4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779640954; cv=none; b=Gau7A+XN1CHdHOMFpPo5oDwHHRJMfXrIK0X3EZGHV9kQscZS6PHiQPtM6Hp7coD2RAxd86E/ciwsOsb4Gt7UKT1IsFOMt+dQ+VX/upp5MKhRJhcdLDEOf/VYWkrdpMmKhoCF+pSStBQt/hfgRukA+IQ8cHJ/C3yr9Bm5MQziRkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779640954; c=relaxed/simple;
	bh=vHawkJ+B4HlZpq8gQDW8tyJXsLQXpE6gQG+NLM1ONNo=;
	h=To:Subject:From:Message-Id:Date; b=ZMWmTChoRgiYj0xyMJ0JXvDArnxETb9CSKdtEPFY5fqnBlpOG5ShIa9A7wUkVDTYpCCmFlrhlYvUOIVxPbXqMn4pise2+3n25473CSETClSfWfjJyRczbi1bxn9aCN9Z7hjrpH/d7lO2jBgtNLp5qj2GWuQNpIuWHqLvSPm9e9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgUWDmDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgUWDmDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62F0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779640953;
	bh=vHawkJ+B4HlZpq8gQDW8tyJXsLQXpE6gQG+NLM1ONNo=;
	h=To:Subject:From:Date:From;
	b=LgUWDmDYWnG/KQeW24uzH8QyUmna6xlRm59uUTjBCtpx+8ssKfFusqMQyWfCg/agY
	 fB5Flv02RCckpIAR2D8EmDenC3MXwH2DJ82r9ef4xQjCMlhMux9duxe0RhZOkTCsq3
	 cRSVa/aJZ4HpFDUQ7/y9PXv1hgK62m4wbYMsuGoQy74tCSCW6nrhx+4duWRy1f9Nnc
	 6sysIcthbJ3JGthgpkuMlzkq4NGPObmc6khdlxGq/cIrHbY2xpsXiYUbJH3vWPgshf
	 rxsR+nm632YIkOrIknsCZBBtoYs6zdHMPfV+fuX3AB4IiWltbQU6RwgfXN/QmDq9aL
	 +cX20Nhx2edrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B0CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964095368.18890.5300002617074126634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c07e356a494fcb19e2772985cd264be4a88b75ed6206082b6c85f6383f1ebe
Date: Sun, 24 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779640953
