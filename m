Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F152A95E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743642595; cv=none; b=ALA3sw1WOwEjHzrUkKTR3J3k6hO0dkKPTODiKddzPntbjLT2ljxej3umZrdVLvzBBJet0V942fin6sMiPO+Fz72BRG0GdMA2Z6Rai/m7q5Dv9PaFir9GZtiUtMyHLBJtM0b28ZMrqwehE8mrnVxvF/zzhAYsnVMDQnye0ENYH60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743642595; c=relaxed/simple;
	bh=Hw6n8Xq1ECX6VMNC90tygjRax5VoT6eY/69GuVgmoIE=;
	h=To:Subject:From:Message-Id:Date; b=QnRUUPdRqI/YKi+H+Wy+MFMaqUH0DscTD4g5B4dznGwTRD7FAHky5ob6tsWNGGd+cGwYayv6GcfxbEiFasmhNw7/TWw9x9jusRT/xPXWdg2e3aoQQa0qriVDyju/5CYkHxn1gVmj4zvulHHfoCAXbXS48jNoHwLT0Ges3i9Ch7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuzN+McK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuzN+McK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A3DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743642593;
	bh=Hw6n8Xq1ECX6VMNC90tygjRax5VoT6eY/69GuVgmoIE=;
	h=To:Subject:From:Date:From;
	b=fuzN+McK9lnnNFk1g+n8KQtauRR6g0ctCQ33rypf+qB22bVQRuKBZSCnSIzHTCYxJ
	 WvCZIY7907lsRARaqwD4+s7X+sPq8uO9nWtOXkj+vKh8+csHUlOs1V/CQdyxAbth9L
	 wjN98mTYSRjKVEndBMcOebVAB7VaI97Yr7N3aQb5xD+o3SwEJT4Swte/HAEYaY4uw0
	 4DDUpAUdvJ55qAa0kirY7y4cjQc9J9uGQGhfPU3Ffl8Y3YOzVugQpiMr+E+UgX+SOc
	 SL96smafKKY7WiwqZb/ilCB3S4+WddC+kPv2lU/Yck10O6mHTd0xSj9UnzR8wWYf68
	 pCWj3Cg9bv0Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98934C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364259359.29043.16624201647148129792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fc504b683ea687ca4e79d5c9f52d1a48594347f03b7121f952fba6111d74cd
Date: Thu, 03 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743642593
