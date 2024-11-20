Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D199F1B4F2E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732112753; cv=none; b=ds5zWwHeUx0wbWeceoXFDzKVk62POWHJgVY8d4hg5eUyu1sqgRHjvk07qj2UJqK2BrjZuCrE9oRP4LP4Xj5G8XK1sZuM1FgFRE7ViYCPsqhpsY8w/IvLLHfBKFftiJpZ7FMWHGRTqGmRX8c/1Gc5R/7ZShI1q6f+ZFB3NE8RetA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732112753; c=relaxed/simple;
	bh=z21X3DBKxoIIWs91/157+9tkmbLmn7I7lgJR1w2Nfxg=;
	h=To:Subject:From:Message-Id:Date; b=l6Q4kBPiXn6qEbc+77Z9PNbyvnMF5Pqy9fFdGdh2NEgWHRAWKTvLoAmdPhN/13IGKlo+dCQ4jYssnQhSQPHlSCWiDkiThyDfo1OSVNQRUteOK2E1vXrgldLOGzrMfjs3GA02/6gQWoq/auagrtds6rECQ4rUIqK9mPC7MfKPeoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCqE6Hiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCqE6Hiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB179C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732112753;
	bh=z21X3DBKxoIIWs91/157+9tkmbLmn7I7lgJR1w2Nfxg=;
	h=To:Subject:From:Date:From;
	b=TCqE6HiywqfYbvZJdriGn8CG6sjYw/RZTR4A1SsuMhSf+qd8sFKRiisPFQhqTRDIc
	 NlEzfkQ/31ErUzoUWNst8yqx38Zgu5yFt1UVhWkEqiMvkSKZTDU8okXOWu/OokM1QX
	 YKm/LoprgpvWirxls+L7VpYaHt5LzmQhDiGP5uyPNzsKv042f0NzVqGaGXU7xoqQnF
	 xifYHBMfM9UArnV3mABL8w+ZPlIXhoMUin0OTMeshmcOOy3aPJcWhSzIYRBlIU7W03
	 FnJHPJEtMZ58ULJhGdfTkLr78JL1D3g4xEHZOgowaIT8C7go4TQEJgwYW6Yv8+6uzU
	 RdlmGKoy5a6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B573D6395D
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211275362.11509.13933572423420648094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4707f50146736f6b955883e0350382c728fb6d40c4e2c39c9835e480d4bb1da0
Date: Wed, 20 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732112753
