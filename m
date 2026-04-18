Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D156283FE6
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776496654; cv=none; b=qav57XV3FTPLFcUQqRJvkStCNK3eq22GiBtJYUhGRA5tQY4KPwJ5sH4+JFOLuYJQCcIJSnyinNEjAKiXA2WCzGNq57KLY0EPmKLxtBEFpwPjivyv2bKQqNsdQerCNsaN4ONDifsqkFfdOcMoWyUZy+T/i5oiorcP/hhwet8yg8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776496654; c=relaxed/simple;
	bh=/G+f+sMSNHG8O8pqrvfxY5k4TpT0DckyWZayyfAa62Y=;
	h=To:Subject:From:Message-Id:Date; b=ERv+H30wrfNjISlnfkDYfECMcSrrzxdtKbxungAFobW5SJYfacbuF24sBpFJ9gWcR83BcVXhPaWnGvHo58pWkqekW6wRuguPnVpnE4SRVJoMS1zieqhpapyIy75QtiGeZ/XLblY+2iiniTEumh9Dtkexbiruvn/yrVTI8+Ylnl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrE6ZhFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrE6ZhFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6450C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776496653;
	bh=/G+f+sMSNHG8O8pqrvfxY5k4TpT0DckyWZayyfAa62Y=;
	h=To:Subject:From:Date:From;
	b=NrE6ZhFRyXOg9+XWIdeQsSDMLhr7UQzRDNVzyKL4noz5fcM2qOfqiqIYm+uTLlHvf
	 vPxjJ8GnVjPelz25BQtkgoVZkRGNUt+mAQ4XhiZGnyeKiRJH4wuQbRQyAn/fJeEeXc
	 6zKi2QZt0SOrk/Leb6+02frbRlW1v7CmhDBKAS+MWyalYkngR2GUIBULr9K3qCgydp
	 QkE+y/E42s4GbZ5R21O6FDckLR3jOntC2/0Lrl7NibMm1wdhQ8t+hLQH/m5swprF7D
	 +I3/zKXwWlgBNKWTfttDoOZ3KuV08U8eNSWIRSSBSKycsLLnjYS6774dU7tn6X1jSe
	 pLGvvFXPz8pGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD32F8E4A2
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649665368.19483.12173961416234727981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5079cfcf95a62f22bc697b3b7f30b524296bcc5ede6eef4034cf627a8f83801e
Date: Sat, 18 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776496653
