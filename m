Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC07F30BB83
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770323033; cv=none; b=D0sT5FD4TJPciqtFVsaltfS/Nx2nbYmaFX1nSB3q5wZJjl+SCuoP6KFSjhWmEya6kScqYjMZGd6iFjyzQu2APU37ivD7Hgq0qWOtsaKZrpaxshzaaDksTNhJDxt974OZP+bWqVwt5SSECG94kanAL5PFszuc/trlozDE7hpzUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770323033; c=relaxed/simple;
	bh=REpD5TI6OfeJc9n6ds1MpJkTZom9jWNQNrdyBpn42Ss=;
	h=To:Subject:From:Message-Id:Date; b=nl2cFbfCNOx+L45xpudMivBzMYCRdRPwKnG6zlVPoCqJ0Nxz9qzPrrw6CgXuFlGvE6Tw5P9QGp21Ss9uib6JbSkrWPCvYf9W1RafFwQYLMOMsTQW4IRZbSuBgXe2H0y+mASRURiIrQOkhyI5lnanNJOdp8J/Lb2m63lblUcrqv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEI76rtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEI76rtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE167C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770323033;
	bh=REpD5TI6OfeJc9n6ds1MpJkTZom9jWNQNrdyBpn42Ss=;
	h=To:Subject:From:Date:From;
	b=TEI76rtYbpcFNGVvOsvtewTR5wxerraxyrQ+5Wf3LEruruPRZffP1Etw/2y6JTEs7
	 evXXKirUHRUYExKs2DaOuWoXzF6PuCfiQEZenQp2pLYgZgzdMBefKnYZ3ZymBWTjt9
	 8beeLivr3BezO9ZGVzMVk1v+V3K8M/T81q4Prgcsn35OV68snbH5IZyi9hZd1YLPyH
	 b2Ci0RI8jyopwumBhxyw6HmHNYCNXfcYUTRe1nFX5hYX7RF7K2QlTU6ira3dU7asEi
	 OOBT9iTaQ/RF6UF2tjots7mD2r8EhCmQKoo9Ld3njyP8hEwh39HgonYExSdh9XTOK9
	 4j3ucnuiKbSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9758CECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032303360.21965.13384473988794729540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1e98e4f7d2d31fdcc83e1afb31f75e9258efe6090aebd34833e6e2d51658c5
Date: Thu, 05 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770323033
