Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2E4DF5B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726457154; cv=none; b=XgdoFkwgTzn2nTOf5dH31ESNjJ5azri8oUjPY7NJ+8Qt/e9AE0mHYi/lP0LW0+MGmR9LVOQgMnUOvgxhL3CKU9F1ZBYspSOc6U7kpfhHAi54DP3dYB9kTJezzJtWjA/xHsyEnZRsoBbVXGNBWZbAG9Yit2fThnz6VRDyeMYBPDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726457154; c=relaxed/simple;
	bh=gGRLLDPkr7mHnBH0zlb7AErrTiDviEFbNgriSTcESn4=;
	h=To:Subject:From:Message-Id:Date; b=MmzcOpJXmhCmblgJpBlOiY+K19v+F24UsXtxXP/eWGHm1lip1uFQ/TZ4xo8bDFdp8I8C3ft0ePcK525narYslh2i3ma5y32yyPKSyJANb/sUJ46bb5PvheLzaDpQ51Dj31t34E16Q9sEdPkc+6HpJBpXlvGUzT4wXkHZcq94AN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHtB1Wrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHtB1Wrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6866C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726457153;
	bh=gGRLLDPkr7mHnBH0zlb7AErrTiDviEFbNgriSTcESn4=;
	h=To:Subject:From:Date:From;
	b=tHtB1WrqPhLxRD+GWepEUlOLvqkpCJgyd552WYTvBsAu1mh5/LnhLh3M2iNKj0q7A
	 b8/ZegzVp/2z5oP0VzjdecZzlrMGHXQVh27SyJLG2WNMO95btpZzCLqDk0CIs2ql7W
	 Zy5uejOnBcO0qzDzQ2pgZ6zUbXKhurnhcETmmYBxO5QEe4+yH8JsEFMukcaD3DSN3x
	 6Fjv3VmrkQZSi5SEpEZt6MwD6NDo7G3l/FeRfmK8b5P8vzk1ryyjFLqrP5mLSPoJpj
	 8GxzJNJKf4FyUmlD6Bj9qYG6UoA+0aZzVPlMRfBLgR8+OjVU2IkMPlp3fR+RBesAxf
	 iPQ2WADyaIIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0990C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172645715363.27075.10311246617581762368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea380838837503538bf77584051769b88dd38d0fc0d96464598133c8f1c47af
Date: Mon, 16 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726457153
