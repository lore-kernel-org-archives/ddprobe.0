Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D113D891
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783134514; cv=none; b=UuvnQ2tyvgObWp6AGolgPQhelm8M/6J5dyA0patLfgpCBSKkUYLnZ5B5VcxT9x283kbGv3N16gsMk7u1z25+jSmZP0OoI8zcOi0l7IOv9cHTOhBiRFvH+Q+SWIrz2HVLJ8fUC8MTBi+U6fMNGndcZXUEeACMpzP6HSSejInG3lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783134514; c=relaxed/simple;
	bh=O5YzfJFyLReEcCOi9xC0XMZ5Ae+Uw+Y58gOvewdaWII=;
	h=To:Subject:From:Message-Id:Date; b=qNDvR60K5abhGd1G4d3BonTmpBOgCf3viDSIvU0rq501V29o+2n+eAM/XGY/zx+bxFx8hi4e+GH+dfSAe9VPgNtdZWNHoVBm0DSrTs8VckB0Vl/3uL4pch+gslTUegKpY+tKZa6FLhmYRaTVmLs8NvY7hqIfhOHL5pcSM7s+yhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCIgArWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCIgArWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09FBC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783134513;
	bh=O5YzfJFyLReEcCOi9xC0XMZ5Ae+Uw+Y58gOvewdaWII=;
	h=To:Subject:From:Date:From;
	b=cCIgArWWWWeh6bLWlinoC9p9CCujY8edhBwAZrMjgGjSuIA66ggQ6/UF1+3o1i+cF
	 s/O0mFSmflpea19NGoysNpRvD6dgz2pOnX26s9SovnEYbp9e6zYU8r2xLhzZIfkfq4
	 /pgo5PEa/aDV+ubikEoR7HbRVTjJIcnR9eUJuKgWUyGrBdjrvr9yUv51pPIBAQTAq7
	 rcaLm+NV5hh+jiUq9m7Gmq3pzTSNBgKUgyPjpB9PXGf5p3KZ26DRVop4oV5uwBZhiy
	 eoX9sYBdutEOg81bcyjUi4Wq6tSwJGM1kz4/121ROZrGsVtvY4EJuiQ7P27UM4u/Ww
	 wmBUp+aC2UONw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE07C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313451368.1846.14721790170101934998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed129f1942d54bb20af335d67e3f7f3203a5f2f20fbc14443945689f8c14d3d
Date: Sat, 04 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783134513
