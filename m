Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50360178CC8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749616194; cv=none; b=CQuj3ES1ExluIAutMLilxNZ3IXfWSDiecAWVOkUM0sckku5Av7LQiRBZLRspAOyoeGzyy8nRlnyKDApS+nQgt+GKdITSUWZxtjlC9bs4SPE95HIqIUy9Rpv+zD4LlD+8wfNTrkrTMe0wjVYc8oU+lfENjn2xVY+PLDW2qjow8UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749616194; c=relaxed/simple;
	bh=6WaclUBLmvfa7FkerFxQyBtvdzxbp1v4JICmxqkOmIw=;
	h=To:Subject:From:Message-Id:Date; b=oeM/XoOIAF35lHTsj7r1OXZI9O2C6zb43jErZwFWnAgsSGSxLoHoAmA1MG1129osTFzZx+M36oNNzO35c1oph56lmnCmRkyErRAP+xc1Jtj+YstURDEjg5BJDUT0X+X8BuuCLCbxziKFGYNR4INDWm1Mhn/mF0Ow7LDcMZrohVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4W9FDjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4W9FDjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D21C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749616193;
	bh=6WaclUBLmvfa7FkerFxQyBtvdzxbp1v4JICmxqkOmIw=;
	h=To:Subject:From:Date:From;
	b=g4W9FDjhga+K2kxYXof8IHr8NEf8Xle9P+RjxudEiNeXJpRQFFODX85IbttaiPhwX
	 3/tQVMqIWcg67YkIC/MkeYSvLfawyqHBTLPFQ6mAQKUnW5fPpzCay9rGavxhBdfK6h
	 asXYGcW+NPv7JioF+IaUhnbUCdYwKI4sNJgz1N7SFg/45NUpQ6NpdT00JFe7E1TrQd
	 G5KHHMFHC2lVfYcc2tvscz/ZF3fUR8Mw4mXkjowrml/b3BtmjbgEAT7f7Hb+ZM/xPT
	 2UfvbwaNA/hkxhCIjJhLyUMoyMNXYJjFatAn5ndOOQmZQZUBtlEOQJqlz+jZfj+JYf
	 VJUVYAvVrL2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DADC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961619360.7488.1897280660461350287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0125f335053847241ab2d9c5cf83290f5ddf00328ca60a05cab20ed99f41aa
Date: Wed, 11 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749616193
