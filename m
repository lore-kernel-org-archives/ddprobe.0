Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370D42741B5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783236514; cv=none; b=JA8KYilKTvn+nUK+roeBhz0NVOGDVLXQ+LQJ7po2PkkuiN1bO18fSXGC9y10Wy8a3ACN7wpfUIhk7G2ClA0IKMC0XY9QXyGJJaE7WHG0wMPVxNUy0DMA2dx9RqBIlRu+rTjzWILiEKX/ANPIRvQBWRgo20+9BTksZjinqa3OL30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783236514; c=relaxed/simple;
	bh=dzadDCLx0x8LFPgjxOpTFDd4nfJuvomdQcS7A97X3fU=;
	h=To:Subject:From:Message-Id:Date; b=HycHZa0JbP14ip8UXrUKFRXT0SHatBmBDbBoXh4bHu62P+DegEsG+Swlo/p45FAqY3KLByNEZbqOfuc9phofeMS7HOgNk15/xzdYm69vKzLqf/l4w4XdDL/xEVi7bgYhL/rh6KfDR1NsxXyf7x5dOAc1q7xloRiqX9Tm9pZkVtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCWm3Jko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCWm3Jko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2A8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783236513;
	bh=dzadDCLx0x8LFPgjxOpTFDd4nfJuvomdQcS7A97X3fU=;
	h=To:Subject:From:Date:From;
	b=dCWm3JkopRFC7gixPkK/D8SoX7ut0AosRwVG/kh2/RZMDyePxSVxcnmakf7A+eWoN
	 InDFbUQh9watPUrnh9+G3ShPk3ZLv/jeseEbi7spSnXM+Qi9qQf6fe+QTOcNzp5bsl
	 8CTKZ3YF84ZStZLyxEySJ4wlW/VNsA3iHgECnOscVVVjxM4bgy4rESRHx1rd6El1ir
	 AB47Y76Bu2UuChpOFJfk+SPW16vGt1wzbJb7z8n+Pvsw9sF4xQZmveLyfjbmYYBNjE
	 uoq1daBXWRkWIYs6hGSZDZ+8mOTR6080PDQbpNAwkoTVLQZXycURPFV52WP2TSiIG5
	 E1fN0xpBQKU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF84C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323651368.19179.16494570159977345373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50837c9c9c9876da5a449ca36a7c23a393983d75418693567636908f480148d
Date: Sun, 05 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783236513
