Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F3A44C7B
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712530097; cv=none; b=jKSj4+Le9ziJyNXgM8tYuH81fyxJT3hWH/6sv/X2m7fESEBUjseDJhB9/qyGLIIlBMgvLPEmGVlX3Z4OW7bYudbsQ0CwtOeFlOl+r2hIaOHdfmGoLT81wdYj65hhrzvjZSX7WFohAVgbAImLpw6L7BHjZyPX3Qlt6q+njvwCkAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712530097; c=relaxed/simple;
	bh=n+N+1sUPhR6MmBEy+vxw2PkvcWUaSzILYDEFoGMvvvs=;
	h=To:Subject:From:Message-Id:Date; b=McQ0Wc46uZieJ+ZoeH1jvqn3ec2TZEC/XZ5qT00uvIjicXkzZybPFUQX6Fb/yoTsW4J9BTKpDcINOWHynf725ZHAFJnuYNBWfRxReK6sYhLfmPc1POFT7bw6olMVHcnzuhX0agoaUsjYs27rt6E5XhTJitbAHUQ1XX5V5YjG0XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLq/XRmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLq/XRmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8211DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712530096;
	bh=n+N+1sUPhR6MmBEy+vxw2PkvcWUaSzILYDEFoGMvvvs=;
	h=To:Subject:From:Date:From;
	b=uLq/XRmo1im224Z6B+/Z88pXlGbuXx7OpTeJTFSBkX/VsGJ588Id2ijYS+HozMlN8
	 ec2mqQmdRcUyiO00ID1sZ9yjELSd+pJnCK2XHYfgEG75P0Y6Md17IeFXbUd3yl5aZY
	 C08WvoFl19N9Q08QNlTeY6jDwNaFpshjvFWlXtiOyE+uO6rUlT8Ymy8EDfu0e1FXIM
	 X1hQiNnYY+LhT29c0TMHBF59SHrTine6UIvltMuv7GuCasVOu4hoCpk6r9xRl3KCdh
	 SKhfIufFattroSvGeWhxjQa7TpsLHCsf0YppTHJcO+bfgQJK+5yGSR6IH2PRfiZgjV
	 KIcM2fvR0eG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A0FCD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253009643.31501.5559018551175737139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff051c1bd19806dce79ffb48fd8dd789e0ab1bd17c96f7ba337b7dc11f4b0129
Date: Sun, 07 Apr 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712530096
