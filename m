Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406B3F3289
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789414835; cv=none; b=aMO2URtjXjlNUcdU6pYJWRBe1fcQjaFpoHC4nJItaXypfcSshmIVzgkuWXI/nbQFS7XTgEatF78CtqfSRxARpmIsELK0wuSd2mdylwQosySkRRCGVJTCX1lpLA4vpX+UKhx5e8icT63W/5G5pqFtf8IDEmfpQtCnlQXd5JcMlNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789414835; c=relaxed/simple;
	bh=oy6jy3Ghk/c0oE3hsR3sgEvxKv3HlIlPS2pJ/8OZMnc=;
	h=To:Subject:From:Message-Id:Date; b=OnBky5upOS/Z/o1zwsQ4lsbaRJbvVkfY+zyeNt0OERNpaZPZQYRRPbYJ4p3iLGbDugGfafeN9Rly+4jycNEJG+XhpLLivdxh7E7oSvGf5Gou61tItD1waUzx32c71QvnGm/PDFLfsghxuMxFellk2xggi+JF/UIyee803EZOyOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrhVq2lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrhVq2lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7245C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789414833;
	bh=oy6jy3Ghk/c0oE3hsR3sgEvxKv3HlIlPS2pJ/8OZMnc=;
	h=To:Subject:From:Date:From;
	b=HrhVq2lVcas7JNnxh6eZuhW+TUMursNu9tsPPx6C1xOPu6vOI4Ls0T4MSLxp5I77f
	 6+ZG0ajUyNHFiaLNegu04So6PL5iszorVo1rWriND+BEjgM/BAoieEBajvrOXeNDlR
	 mK3Xla5UhSkbC9RTcRSbIEGMKGAR03AvJnhcQLYXza8ndaH/ScHjFR6aJxdgiQ/vSb
	 KcnBwE2TsvXlADM3SF7pzBeWcAuxymdw1FLX+Ed0kgfMJAOnDZs0otSYtxj7yin3AD
	 bim6OJ5MNfZYpdMcgzaIA7R6a4Ji+8XLA+zeBJiCiaGp/zUmrUMEP342AQclqFMcQn
	 mX1hFcOW7l61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B238CC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941483371.31758.11058658161578393484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd3d39b06a6d0c70c9c3ec6a2fc3caa4460996af3b873a9587b9c886ce2c0c2
Date: Mon, 14 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789414833
