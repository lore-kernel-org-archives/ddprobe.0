Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E11C34CDD
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789825834; cv=none; b=S70j3aWkH3SJjobGjFEcKmG2NwpOtl2nKvpAuocEGVh5Ejmib4FCaYTe/N33HCQkjLUOA16UXxyBK7u6smSEE2Mlpjcf0MF1tluu52dXo70xyVU6yyoXtQ7l99iXZjb7apTX4NtL+fcNs8raBhGLk8FQUbQ+7Ow00p97oCCtt2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789825834; c=relaxed/simple;
	bh=zh6rL/PlCTQmQToU9iTlvYq6QZXk5EyvhnWHsqxV9io=;
	h=To:Subject:From:Message-Id:Date; b=TndZ0L7NZfixCVpk8nu6spYfL76U9M+JgeXv4nYJnjFTqwpgmp8ci4WoXfy9oKghdZNotWh0AMoJB6JsF8FjPZIhnZ19E2ZPMud3F60SVdOWLDvOQH/aZil3ASEX2htHTJA9JerGYmBtaGNakEBFA9zeR3yikQoSmeG01a9w7K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJWvHZWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJWvHZWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BC9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789825833;
	bh=zh6rL/PlCTQmQToU9iTlvYq6QZXk5EyvhnWHsqxV9io=;
	h=To:Subject:From:Date:From;
	b=tJWvHZWudcn5qJXTO0+JfTy9kPNnRgnFuW1bxXiTUGjVkfaTEEZ454iyVxgIzaTa1
	 0LMRpEB4KehDNuzxXarQjefJ/5h9k5HQK6Wtn0rp6ZnpaxsFe6C89gTCkHKJEi+a+A
	 +VBR9UsnZgri0Vvu+GC3v7Hx9FxcbmKwNNk6HrO/6s6RQ5E63smYjThZPGsyRk4b6q
	 aC02lK9r2tdEZJHF8XMGm3PcKADtigMqciVrC2qPcdv/tRNKgAYSvKLxZ8N4/Xbxwr
	 TpEBG0zi8VN4kaHEJH40b1MH/7KER9dC9GNXZeWmfe1YuZwFlUCIzAt2Wwol8hudK5
	 hE2cPsTHCbr4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10DC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982583368.31065.5404512669318827258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6315d20143a2b72c39f02952fe1c08eee2cfee68ce383e834b083fdb5cfc199
Date: Sat, 19 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789825833
