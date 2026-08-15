Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637A630E838
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786770034; cv=none; b=DdzXCOMqRKvL6bORM5ghRIDk/vNA+f6aE7IH04hejaYTp1WfFB83HGFz8YnnewLMeCWOzecNoWc/PTPLp+G8DN4HUNnhVarfCdxDZYYdGIhqn7KkOiAa9jBy0Co92RspvZwhCcCzBxQaIMuRgVTeMNTOrDX2iEb1edbBIA0wTaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786770034; c=relaxed/simple;
	bh=glxAQ4wtGXNe2CU9RhjwC4h9NHFkkj5nxX7DKc+k4qI=;
	h=To:Subject:From:Message-Id:Date; b=IYL8TdNxnZDONPiOjIgtBw1bMDH5l3RGHozpAxoOiJ3OuFY03SySprq4rdzurbV3Z+2IyxScLGIHDGpSn8Jeq+jV6lyYmlyOeQJP6lMolhaO9XGoF8ztGV9wM3V+X3VjigQ8QLaKsdSyMVAAq5xnhtKD3lBzsZoXXQHObUAEWAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux1Fft70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux1Fft70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EFCC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786770033;
	bh=glxAQ4wtGXNe2CU9RhjwC4h9NHFkkj5nxX7DKc+k4qI=;
	h=To:Subject:From:Date:From;
	b=ux1Fft70mQuQfzNyoQxugAVAV2z2LOUyby/fcgNVGjn8YvM8y4fprnVyI8a3iP9ik
	 8JFfDJLpkciW+uQY5ifNQH2jwyB9XXzwC9Vp+IJZZRTBnLptzMiU8uybpDGqjoiT8C
	 HYJozUXfm97cnbcl/2ogjuMfbqCFlT64n/G4P+hJq+pBxRRKFkHFjU1xD+qSlPnRaw
	 jAim+diZVysyzutBtfW5pvRIfnDxH/jbwjkigywpDi/+dwPybVtno2BrJw0CBFuPr+
	 0+EGD/ms5RmqR5cf0EZ0KTPB72fME5VEFhbWs1IWj2tx3QwRHnMVtzySPdjF6+SMng
	 3NJ8mTB47ULcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC6FC5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677003373.2705.13083028841810797939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc0e608e378ae46305f356310876f4fc42107570a745c60e78f5f2f215bbdae
Date: Sat, 15 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786770033
