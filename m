Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2D221290
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770096834; cv=none; b=K7Gej2T0G1/DkXcYjM1qaD3cA+g479KkS2hq1ahWWwqt/raYAuvOU3dlXteG7an3RP7o08BXNq9j4G9DycmYwjr+AoYAfqwTRR5/ZmN21DabuxpffyzXnEswlxyKeihZrpvbo9pCwhjc3mFirhI7lyER2KfdHVemhNwPzGDFvKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770096834; c=relaxed/simple;
	bh=GkQtzd60enesxjEJfbxuqu9TUAzqhkegL+QZgafaZRM=;
	h=To:Subject:From:Message-Id:Date; b=IrSPzq5E14xllCPeSq3igPT2vDcUJRCsLYgz5Q+xzjhU/yogh6i2dMewkoDWQddgTxH6yGI3ulJWFvffEfElUg+/HwfQhpe/7d6rZYFUNftSlt5/Ky+rrGIURybx5INTIJbVoseOhmfSHdoCXRJEKManhVqTx4NCO0F6vDI4eOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5/HhF3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5/HhF3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61B3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770096833;
	bh=GkQtzd60enesxjEJfbxuqu9TUAzqhkegL+QZgafaZRM=;
	h=To:Subject:From:Date:From;
	b=h5/HhF3bjSUOQspOVmK29UDIUxovrTWiB10B7Z6eS5iFuyeQ7EoOdLk14TMN5UicO
	 MSUdBjpRnDLj1FbcAvKvzplNMce5rRjwP5W/ypUyPB8O77CiF2jIuVQCtKFKOTFtzp
	 iXr36xOgfcLz2NUrMWf5j9TsYfon2Z966g5sBkyddxbQGUjoozt3fjfC5Q1AGuOt9F
	 3q0+6SEOJIycs99NKS1OyN8o83CZbNJoGlw1kqA4ogORIy2llKx8RUtvSMIGU+p+4g
	 mw+qXErg+Yzd1sQbdsFxsUCGyWKL0wQcRK596HO7MjbhAaf6x8C7gVbDqxl9Fxfw3W
	 KJe2vcxADIxjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E85E83056
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009683358.10672.13389649918971095510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bace664e501156775d5f1847f772f7354c52fc528fb5a44efee11004a11d7c8a
Date: Tue, 03 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770096833
