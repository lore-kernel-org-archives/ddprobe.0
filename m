Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDBA23D297
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768453434; cv=none; b=Cy3psq0IRKOjZq3hYpww12NdRpIpSjuuKxHFWdDHeo8dnBQZVb+Ixj861/OzCYy7ulNuK/lv5qL+IbZDtEDKlg3qYZ6wVfCUhOl9l4vgIrMsUrGo6gi6JrzCmAz6QmpnSVwAS0Ou9US6/kw654/naGMq1kkfEIEAalQBFRppvKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768453434; c=relaxed/simple;
	bh=DGDZUibG1uNWkl7xFIoC7mv9t5tmzbL6BSjiaO5vdqk=;
	h=To:Subject:From:Message-Id:Date; b=mueYCkVEJUSyjeWk/yGEeGRanWNAOcLvVw1zbPwW2dX7SR5ggQQn8BdzmUkjV6YkJIXN4pDBBvdyWW2+x1G56drUnE3rI2r4yMKaqY+pEoAPrVLxgxzUhfR2WZF3FFYjWNyS16cmy002ZfhsTOS4/hBMq5TpjFwTJ0b4iLmUDbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vc/KbNev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vc/KbNev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F56FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768453433;
	bh=DGDZUibG1uNWkl7xFIoC7mv9t5tmzbL6BSjiaO5vdqk=;
	h=To:Subject:From:Date:From;
	b=Vc/KbNev4aFfEfJaz3eQcLEyrF2hZHD9CdH6m2dqnvNX5aeDXPAi8YkCW2RP7gEMI
	 5twD4omdIL1lXiBqxOJI2/DYZOnQNLHrzbrvffjBuEJ/VNRvDO+G9SL12zJMfGuHUk
	 Z1AgG8D9qtRI1muCrvhpTJISmCLJaLmAAVSH3d3ZSf/oqbWeoGVaZjfKdBm78ApgxQ
	 X9P9G2XBuCVQVcFrKJTvBeGlr1THy9X8i2QPppkRnwChe5g7U7fAMD5zCfGU0unoMS
	 91MFnnBDZFW92KDH/BCBygyMtzeoRmStkCEbXFtWVZn3/XTDD4e/797PXRdTTZ2dQD
	 t2cYK7iomelAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E22AD3CCB1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845343357.948.12663223971926652177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ea70df3bc0281bd7f978304eab2f9fa80495b78b7ebd7a546ecedb920873e9
Date: Thu, 15 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768453433
