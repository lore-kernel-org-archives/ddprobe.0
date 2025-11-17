Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5ED2C15B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763397113; cv=none; b=gR1RlIQqZfBbnNKc3gdzlT746UUjQ0KwnG2bZlwgiqCng/fwjAG88FucO/bBCjDvWPTi+liB0QUSJ70NCYaq9DMveFMpFKWfkmKflwFXzdnT8P4eSpHpKn2R/BuTOdpZjR3DUPW/HuKtBEHjYnrZG8AaQRM4OAzEIXOUBDJJAlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763397113; c=relaxed/simple;
	bh=gPfZ8ir19tNrKi2uJyMEXBW8wT4uatC9Y2AaBHVSReo=;
	h=To:Subject:From:Message-Id:Date; b=CabBZ1FuXVAdtJrmZQDOtVcJYiJzWfk3H9at257NB0RPxCMvLXrZDZhKk/XwkCPNKYCijQtQgkb0uGtQm3e5O7WOFOFtc/7f/VhZorxD8ls4e0e1vVqW6Ny/k6MQzMEdzlIMz+P2EgYF7Hbq4dXsCDdZVGwXe5y1LGygLcjr0f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuP6TL7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuP6TL7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB48C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763397113;
	bh=gPfZ8ir19tNrKi2uJyMEXBW8wT4uatC9Y2AaBHVSReo=;
	h=To:Subject:From:Date:From;
	b=BuP6TL7qcw7VZpvwBt67phchnttQAuJ5r7d/9xX5Fr3uVDkJtRATfIysQhljfZ4Co
	 YrgpXqqgeB4ur1h+FDtXyxX3U8KGj93B5t7KD0SRPDp8mfilBgJ3CICo7jSipvpudi
	 n+8NL193cehq03MnQfHu9U6WPEcP38+Z155nIOMssgeIIDXO3+08uTf2DtIsXbxnVL
	 I2yO91rHlO5vIf76mJcu5bVaBQTYawb+0tg+QgMXGA3KcG60uzOpTu3UbNAIIirLgY
	 zeRSs9dSBqCAYANfva1fCw8ACDa/uoXSTE9OyKRbKkH802cO3li8QHaHOcfLgC5e19
	 JvPf0cx5Vxthw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F24CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339711358.6760.13068876882185465583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf36c549935b685e4f613aa5e2a234ad0212a5f2769391becf4ff2f4f1b6167
Date: Mon, 17 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763397113
