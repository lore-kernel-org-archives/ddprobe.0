Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27777395AF8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782288394; cv=none; b=lvyJr0SwrbAdf4mtUfcNtyJ1UzjeVpE1a9ajGUB+wVtBse9+SvlT8sI4gbDGnsYXUfTvoGLUwU6rw3uUwAG7fidRvTe2qok6X8az3R82n0BiQGiCk+KGvOniIZGX5LB0OW4VoDyn7WD9R4Ka0OG4ekDBpWqSYtVHaHcDMCW+qIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782288394; c=relaxed/simple;
	bh=2eI0WURSuG2bhGx/OSQvT9LrFfcFFX9CidiTmZzhIq8=;
	h=To:Subject:From:Message-Id:Date; b=QKiE3lH19gHtiJN1k4dFJKI2MJjE9XIVjOVmLGxonlbK9BALzVAj8xZulrPzknRlsjrG6ZiwZaZvegF1pBBY+HGm+YLOxV6ieklIcQVYqZ1zN117Ogr1PbDElnaux1HGooVrfeo5J5IjlsVXaoo4YBRt0e8UYMdHvVP6jSbVHys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ2WNh3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ2WNh3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D5C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782288393;
	bh=2eI0WURSuG2bhGx/OSQvT9LrFfcFFX9CidiTmZzhIq8=;
	h=To:Subject:From:Date:From;
	b=gZ2WNh3CEB69/OSC9O0xa4HrMsPFCU8vXg0F+ap0Vq2ZQmTE3+aSwJvhnDkawn5JQ
	 K4gkTqehG1H60OBLsUQWgAZtCNvorkis5ApOeAhp++hvWD10LrUlPPPlPui0oStuHC
	 n0ztNSzoBQMTIzRzbpoQh0xU/8+wm3EABgQHjIoDy6YuPh6wP7PxhbrlcEw9AZLU8i
	 5Kt8DW1mdXuTgiH36A5jBXHSJZJDbgI/a3+AVtP/Jw780yMVtUhaxPoGm0WNeAbxED
	 U0yWKSuPcEdg73DEWapZS310i7QzlGZHTy6QSih0pZQpR37Qz9SApU8Ns0EHycNHvY
	 PN/3AcYm3odbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6720CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228839373.5888.967815041643252442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f889b7c4f693eecc6ee004fe801459b93894a4e79d9d4136d69839d8f829c5
Date: Wed, 24 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782288393
