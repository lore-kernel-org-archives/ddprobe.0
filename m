Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6AA221FDE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764141174; cv=none; b=DILVm+fpTrcsBcplKNpZ1Y+ollnTFACr/5woX9OFmjSD8lA9tKJB4arXRT1V/EHrOQn5I/AfQriQisXeqMsTtZonazVpp5vlGWwk3WHuuHRKPQsh/miEELJySlVNezgNoyqlGmm1l41ZMM9ocZtVgYsK4dnNUZgPCE9R6b/9Z70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764141174; c=relaxed/simple;
	bh=Euj7e8LF7bNxvfYfr8IvHDUqtdW+RwonHXBXTMBZA+Y=;
	h=To:Subject:From:Message-Id:Date; b=udnVZ3yiytZxG2Nywte085Qdfy6ypEICTQZyAYzB/qz0CV0NmnUMKL5Ty0llx/0v+7lkag3C6BAjKPlDs/kYTlnRmEZTXFgFq2x8awx51frrydx13sHkFFHloXN9YaB2levH3PogcUueeeWXWZwZKKP6a7I4qgTd/urPNadCh3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+SrwJBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+SrwJBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9005C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764141173;
	bh=Euj7e8LF7bNxvfYfr8IvHDUqtdW+RwonHXBXTMBZA+Y=;
	h=To:Subject:From:Date:From;
	b=k+SrwJBMDdlJaLjEzuREJD3zSXG73FnpIUjXHtug4LmZ1CEuFrOipx/FzBhcZv2N0
	 MUoSo4F5P9XV9K3dkjp8zlo+5XUKEkNkIKcHhHRPMAOekXedfCHVTYBvIPFWbUka/K
	 oMOuX8HnP0kgtNlzEV6dQ3n5YLzjFzE+7rdWbfdl0nKh+L2SwwpF0p+tKFThnzOWZN
	 WeVEoQSZ8Sj4jG07woZHFOVzTF2rRGfQpYQTT4MlQ8N10Rqc4TmEbnBgNgepPSC1az
	 XbT+RFaZqz5Cg2kzTRpwtH6pGnUAtnDvl2mM9jHG/HIbb6gS5ibIN69fY0EkPzgZUY
	 EURkSnndwPjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0680D10384
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414117361.23293.3856322482389776170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1222aceac4c5cbaac48d8f82761a35db1f8b19ab8d6cae3e103738b43cb1171d
Date: Wed, 26 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764141173
