Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5B5356750
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791608434; cv=none; b=nkbEfRSQwRbUZz2YB/Pj0raYuQN2QTnQw8ldrZHjXi1oi/DCcKzJp/vARJJiqvnObq69gAWl/V6ZZXxS0x8vjLDCiHVIAKGAxyKhV1WeC8fjQUGJtiwNknw5Y6nDfNtZRfb3cjt8xLuVJ2y8tc0KrtPxDF+1GoBPV3arr0nhgLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791608434; c=relaxed/simple;
	bh=FbGUTyzLeLe+3ZZS1RDrNNCMp2XR9GUNab/1HWjFqAA=;
	h=To:Subject:From:Message-Id:Date; b=kkJjO2dJLaS9nvoGDcDLY5BBhcdLJQ7prq78gB3FtUnE2iSSOLrSmoTyBkjYLYEhW/KlVreX18+AwLSFiExZm2CCULNXz4VaSkzJH0vcF2kJ934Tz7AnGPNUjK+i/D+NhxlzwTUoR2tZfzVvG/PtxzKEY2j0iaKj6j0VU1Mm6ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOJhBbyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOJhBbyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBF3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791608433;
	bh=FbGUTyzLeLe+3ZZS1RDrNNCMp2XR9GUNab/1HWjFqAA=;
	h=To:Subject:From:Date:From;
	b=oOJhBbyn4OnU96EhL1dhq7CiSJQb0FmyJC4VpWAmsXDvHF69M6GbLKtBlq6lAPoA7
	 ANWHt7Ud1d4BgmEtk4Cj4WzDcFuW9sFJjfhk9WtlThW8Y4OC0xTHFeOsu4ldZjMmTq
	 /KXNkwFJmzZiIB6qUIpjrUWE/jnljdhjIZ9rJbGtR86ZZjvgx0Xvq2OPvtYYLYGvao
	 9RmUVKFZap1OYACKXHXsp/xBEAXSEgVilwvodVfc9gnt0ymghJSv5VPaaqjkDq8i1L
	 79rmdXYfEZX4hgK2eedFetaNtwIEFA4cMWFSU2T6ThcABmSzAIMeSQDKAYllCblxdj
	 8GsutQCm86dPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A27CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160843368.29570.3405865413745363934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5ea6911eaa6a863df8c9a18302e1cc32b235cde1c4df462f42b7968caf298a
Date: Sat, 10 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791608433
