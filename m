Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74ECD12F585
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791077434; cv=none; b=X/64GbrmgNdURStKKZPLL6Rw9dNJJAN9JNrlh/STmE8kGNBVny1Doyjto/98dM5k9IZbGXyF2lNXxtuFD7cxBK1k74d6KkU5Tji87fGCqcG25+OB/MQ/sk3vgq3GeE4viu3eb2UsYb8oTR9R4DrAnHNco6afFI5ZqWbeAh28w0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791077434; c=relaxed/simple;
	bh=yqxbugZtSOiYjhXFDBCwYl3Ox2jabfR+PSf3WXznJ08=;
	h=To:Subject:From:Message-Id:Date; b=lJ/q285aub+ZFc8v/09FMxtY1voMpb/yzdQ7/K3wnfA2U+J6+JbnpG8c7Vl0ytY0c2lbIfurMgCVcV+H0ZDmdY8Edc9GhWFvMEXzOwO7Eghd/ZHJwlrXfi0WVrZGw4nvzcrSQdsmOax8CvZgo2E3yqjzL5+alNf6FXDp7zfR4Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeG+gUiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeG+gUiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0A9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791077433;
	bh=yqxbugZtSOiYjhXFDBCwYl3Ox2jabfR+PSf3WXznJ08=;
	h=To:Subject:From:Date:From;
	b=BeG+gUiJEQlR3Y6dX/FYbPtnmWXfbdpRailDIVjyKl+4VNwuJO5olxm7pcYWiMRjW
	 C89a2U9XB8DlmZZqbXIBcZUMXHvuJp57npjtf7YKopW+OH8x2Qb+JWnsKqPK3INxWw
	 bBPZsPAYHoi/rSNvE6dDyG2/hmCixNQvcU9FLe84fEyzim3xbe/LvKuvvn57d3wpT+
	 rnvsSpqemD/5v2pVyLIUI044Z3PMkhIq2ElLFe0qaoNM+Al9IiO8qq7KVS/HVxVJQx
	 OR/UFdIJEHM9ollOFn6LVGng8yCIjz2gwzO/icDZM112OyNrxF0Vd3hsQC5NT1hOTy
	 xoqwGpDYUF1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CBDCA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107743375.10221.10333744923651857804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09af2e60c801ad61e3dad529fb5573f6e72b0e1873b69010317321964c94251e
Date: Sun, 04 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791077433
