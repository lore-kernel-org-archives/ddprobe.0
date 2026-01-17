Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AA9500941
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768678434; cv=none; b=hk8XwrCHHKBHLJp31qO7cbhcFQoExTNAL3V+WkVC0odT2QDljBQTbzvsrjRpoIh/BnZE9KGXQ8ulKg8f7KQ3nPquKS3EI+43Owmzlq6IUqHd9CCQwOFuVRuzRRN66lL/Ll3NMhFzHFxlom4W3S8Rd/e0WI1Sp1Ys7AZkcPx3lBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768678434; c=relaxed/simple;
	bh=BcPoG7PdwpEA2XDllyVdFR/2852PUEJl9z8keyuPA38=;
	h=To:Subject:From:Message-Id:Date; b=kWXwPM32409GfUPQ+Iy9ONDCtfg3bJ4gSPOykcno841aWvobzxRo9ePZIgs1BrzvQR2In9/9ejF1yOli6zr+wNpET3l4ksmCZhwhIkQ7SlaX9vpfT7BJXMVvrao9CS8L7QiyG2iGLrsreiol/pVq2DmKYWUqyA810UN8UJz3tF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVh41lyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVh41lyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768678433;
	bh=BcPoG7PdwpEA2XDllyVdFR/2852PUEJl9z8keyuPA38=;
	h=To:Subject:From:Date:From;
	b=GVh41lyhmmS7nsPAa0SZsS94PLFOEOX64fRpii5XyowelsGGupT5DHNf5zEoDWAps
	 rpXc9v9cfWN0u6SkQEjvVZihHbWqO+5FxgP8wUUdjuT12Ie7VmTppODbo+AmU/o0Fj
	 XzsQ6LqXViPZlShLDTcNeZaFxRpmAD0CHzi5OsvtLpNzvbFnV5CmfRAIXAD0Vt16Jl
	 +HnJ/7ri2ArDgd4PTlq7M3hrDgv9/Tf9J/g6qscepvpJ/quyhz5BbYcqBnllkqR3I2
	 e2qPIaCTxn8yS5fdZrCCQpyX15+yT8rlH9Z8E14KTiTODoM9xIeZkLi3LvJ+sxI2aR
	 HcfxekQoCBiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967FFC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867843358.7219.10822929676562352828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ddcbfcb39f245bb924f66cfa1dde48e86df8c53b3a2d4113eb1d7495fd33e2
Date: Sat, 17 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768678433
