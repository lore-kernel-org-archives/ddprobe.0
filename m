Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECB71DF271
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736204754; cv=none; b=NIH05IUUR5FLBSUfpNXuIC5jVo5E+uAH+nf6PfgqCLfSLRJ/t9097R4gUpvy1S6CSOL3dEoPmnIacamBmEgH/xfeSh3bZnVDE40Ok0oUa2LyfwK4LR5FENIapuFNiovIlXwf7DDrhgFJNTBCPLrKPoBOZghz88RpWIxhnjs0a4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736204754; c=relaxed/simple;
	bh=zK8vNMPF/GaFp0hnNO9CDlxh9pWsh31ljQ8nQImID9U=;
	h=To:Subject:From:Message-Id:Date; b=mOsVkLGs7FHrPlM6E0LJa+8QkJQS9CxYwc2QBp+68yPGS0uWYE7o8WEHPDa0tZRzKTHIjnWkslXa0MaCrwC//ecRe3cZTiDnJet/Dkt+1j276L4Na+cfvpxX1GlC617LuayzXcn7nlgoww/UOUemMgg5aJi4T5dKA4kDuUmXiKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8v/tgqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8v/tgqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB95DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736204753;
	bh=zK8vNMPF/GaFp0hnNO9CDlxh9pWsh31ljQ8nQImID9U=;
	h=To:Subject:From:Date:From;
	b=c8v/tgqpoNR46JB2IA9yl5J8uTsTqeAbzFqNfD0HmkRD8zc0R+HUMAJTPkl6ZpGPy
	 o0P7185FTfQeVqNr6km+unlO4WO93XFGGob9/DEg2xcd8sPgEbDJLcI7S3D6sKGP34
	 pC00wcSzc+38hmXjm8cUchIpWjlUQvWwgPRG30vFCFled0kkD+1xEznNmAly32cAQQ
	 3LEEHZEOLutx5gAorsy7AQfiL0U82JR1Gj8RVp2dZmSEeo8F5wKgpweE1c7L5oatVJ
	 MN6PujQG5RDxmLu6Cp7u6aqtXDAFhNRAMmNCzilYXhl/lqT9pyEUjGU7n1LnTAV6sv
	 68oF67R/oZxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94149E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620475359.16250.1793826180382796489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc52e5107563281686909a6842d978fd6180d0d75503c119c1b6ef4dc2ef9091
Date: Mon, 06 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736204753
