Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C44400
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767515634; cv=none; b=GfiahYC+FR5Ca7VcPGRxsmRvB/8LI8XYt6eXx9bA7QJ2aMJPsVYoVSyxqGzd/8MuVuPo2NRzs21jkquWwYVmLkuBi62onBe7DOEvpmeUFX1hHJuIPv7Ubm4eYwrcpQxFOJPYBX+2jHDgUFgFlI7xZ1MVhG4E3MPQNAmbjFeeB+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767515634; c=relaxed/simple;
	bh=PP5c/wgioVzVtIzirZz8CcV5AGqsEdtIRkRqGOOwPrE=;
	h=To:Subject:From:Message-Id:Date; b=DcNdMFKznu5ExfPODGdd+vXdXW3BRb+bOHJalNCP0J2Q9jiWvtjN1MTD5Vlj7t11JxZW2TQSf5bw4MaZbyLAub9I2HnYaDuX96CTvOK0cM88PFtLkehRZDwSLsP3BiA/hcoHCsPlGcjHNPdp9CqqwvWzOdAzHnZzToddS0frRHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj90fENA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj90fENA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767515633;
	bh=PP5c/wgioVzVtIzirZz8CcV5AGqsEdtIRkRqGOOwPrE=;
	h=To:Subject:From:Date:From;
	b=Zj90fENAzCnIzh1rGJge7p8ES5PnE4g6q5tVuzkbu+ugtzreY3eVO9SZ7yduuK6sJ
	 Lb2NVbYhydAZTltTFFx/DSxKlnwn+J4lfML7FvGCxzIUg0xN1v2VmeID476wRUpgbi
	 Kv4/XuZ7fpfXJ4GqghtgBy8QBZGQazeU6eOYm079pVMNrycUSxEIxTxf7OLl2vLGrY
	 pKBJ8hUmdJ49RClqvMxzd2kdVrIdkE9KfLSv0dP2usvazGul1Jolihomns97gQP14E
	 RAmsvXO04ySK25P9xZgqHioXtYfNfwhWyuCMdWj0oMvpap2QgUfJizmrvTzLUTfOEq
	 WKbm4E1h38NQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6EC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751563359.5537.4517354959682011336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6ac33d82855d15887022fafc016e6d697b54f77ac06169b8cb35088b13702d
Date: Sun, 04 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767515633
