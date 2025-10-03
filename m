Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8012D9EE1
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759459195; cv=none; b=OSOT7kfpvT8t270gm9zeJaEKOH0eFEu98LWu5FJR36w2yWZxWCpVdZ9p2H5YktlqGNADzdKd9qgIwyH5Ssf+GlT0N01t4Tr0rOe+gVt37ZSUzMJsY9de/p4pGvoUPgPBsXYYiPDuxmrRZ+kidb2YfQgbBsF3bc1cq/uJrexfCLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759459195; c=relaxed/simple;
	bh=ZSHeNxeRsBW+HYdoRLCqQjDrK6cDnUUwzZLJwcRbjn0=;
	h=To:Subject:From:Message-Id:Date; b=pA+L9ffnmhzxZTT25XwtiOD9foBshvTLpM82dKvFg/pHaFg3lSD44Qudd7Z9JKoMWjAt4S32i0Sxia84rL0FTiu/VCijTVMMAOV1zFICE0JjZT5koKuTCzKeTASJP+cYoHp4XCq6KdEqp9YNvzBI5eyQSkqWWCvNQiDeEwRzKVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxSQ19/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxSQ19/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA0C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759459193;
	bh=ZSHeNxeRsBW+HYdoRLCqQjDrK6cDnUUwzZLJwcRbjn0=;
	h=To:Subject:From:Date:From;
	b=KxSQ19/hjZ8/scLknysPzYjbicw35VBkCavivpiKAT1YCIBxPG9pSwOVAFFVKNVeW
	 6fncOvMliRYwvioHMVW8Zb0EFtwFy/eFQp/Iv6msS7AL2oYazZ2HwUEYYC+0dM+9Rn
	 gKfYRCEoBk4+nQibtlcqCITTyy4C4NvwLlS2RqdYVeZ75k8IL/B6vhJcTLtzClrcF8
	 6f+z6qa/p5o3yLqy3CG31vznGtYsH0ydcqbJvFMEbA0T6nKC9Lbi/49XmWDp7mamhc
	 wYNywCo2B/JjXD/xvpOVuQJA80I4xkj+7VX1P2G26Zlu6t5mahW1i3aUMnFkWNk39Q
	 0BBKgwPWAxmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D0CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945919357.27895.6028638216689948048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788598d7c35ff05fc1ebead5cbaceae958416b954f1d6091941ec5b8f9ca4e05
Date: Fri, 03 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759459193
