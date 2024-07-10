Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42547198825
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720639643; cv=none; b=jy/lD0kqKszN238wIAtGT2e1X0/4HxpXo26qazb4I9FuzreCf7vBlijygAvAr2vi8p7q4xDOOMLvZlqbVHTwIidCbUENC9PuhGJkECNnwQyEze1sCfN1Wq1H+MIXeIxYZkU0dk8NMKp7mZIjJUzEun78jsqbDOT1g18qkLE2ydg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720639643; c=relaxed/simple;
	bh=Q9X8f4+uTp5cnrDz+uzgFv2BD/Uf4/qxm4+oun4J+Qs=;
	h=To:Subject:From:Message-Id:Date; b=lVlglawX8L3xi9c6wvJf2FitLwr1b3Ck2fRhgoM2mnfat6bvgHBeXKGSdD3OvGcZb091k8B5hHQFQqv70wRJmCN8tKtauh/ic4AbxFZh8LfkmjQ/y2F9gvNAxGnLgGujBTOX5j2mzYkeMNeyTeyHEKvL8fqPbAYjOpkPms5XA4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nECGGhkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nECGGhkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0374C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720639642;
	bh=Q9X8f4+uTp5cnrDz+uzgFv2BD/Uf4/qxm4+oun4J+Qs=;
	h=To:Subject:From:Date:From;
	b=nECGGhkJQAM3WzaWSj6hjwMKmTGlMVrHpdF6NScAtX/snuNHyC/IrAzSkYbFpqwX5
	 v0mu6D5egt2trj/yGb+1m0lcjDYgeKFFUbc6H6+88pTBgHKk6xUmKmlZE+3egyrupO
	 6yJwCovbJ23W2gl/HdYPbOcHP1PDukhSfLu0XmWhRPCSHhHorPhPCleN4QcwtzhKTU
	 cmpQUUSaVEMbzN/nZhTTLhqyV1Z5gk0k9yBnp8mYCE3iuyu6dR5mmwXeGYPNorGljh
	 r//2h9+XsMQ2Bbw3a258uHhsbRk+Qnx+2XvdOETs+dy2Z50N2t+JJsqMPQyl+VLb+U
	 TbzUYqE++NAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1D4C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063964277.23856.1936155370021105993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1533b8da2c55e949829d3b21a27a60b005dcf2aeed953243819e201ecfdcf66
Date: Wed, 10 Jul 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720639642
