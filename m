Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFD033F5A8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777520254; cv=none; b=n15M96GLmApeZbeZsGJlKiKJRPQOquspobsYMcPYFpF76mMxPRbhjgCXKqVxiM9PVdE/rwODA5lH7SUI45lfZJrFQSeZLDUuuaAbc/iM1uuovrOxOf0zw9n1W4XEPe23aDvnH+mDFdxUDuLSI6iqcKCcMtJUqmQ1JLbXEuBnlls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777520254; c=relaxed/simple;
	bh=3kJuhtEoe5MuuZasb+j30OULAQd0W3NnrLy2Pev+aRI=;
	h=To:Subject:From:Message-Id:Date; b=KiGZiU+9kS0YFExRoifzMA8ns3JVFX72iDoaiO+OCXsS7EXfUg6a1tcVHjsF5197O5gVrC5+D8sg9jJcASvC2DwlLRez3adqOh3A4zoLTcpv1odXSf+8LAbg7CvPQfsVCFBoqzG/KTaA5H24rCt0cZ+3hX/5YZNGSJbh/V191eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDpUcTOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDpUcTOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0E1C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777520253;
	bh=3kJuhtEoe5MuuZasb+j30OULAQd0W3NnrLy2Pev+aRI=;
	h=To:Subject:From:Date:From;
	b=hDpUcTOuosUqW64Ph8Yqr7DlcVJ99FZ+/bkLlvhWoM8J9fSYe///AHDxFvY30AIhk
	 /hkBWEWOZkBcOadyFnnSjg9nuVTvq41RjBi1OqD20A57/8jNATPaGDDF76NU+r3U7D
	 P3qQTesVarEb+KceKf0MK5jIyn8Ls0KV6TxXi2HX/79WpMG8OIMG4ZrQ3ZSL5dKXwD
	 6qE8tZz/CJ5bMVMU1aGOXZcjVxz44uKaoVCWbXos7CfAzY9L0bwqvzwdbOJ1cDXol2
	 MZbOoztoNx743qFqPpG01iWmo5J49PskS3ksTbTmdk0KpdnlChsWGRJxE0oUUyAFe5
	 PdSjhJISFuvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FAFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752025369.2807.8054806871212030915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2259da98fee9475872e30803a238db4b0c4afdb6b1b55d145975b4f1dc85f1ac
Date: Thu, 30 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777520253
