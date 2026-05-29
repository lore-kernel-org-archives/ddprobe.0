Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E069348C62
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780041154; cv=none; b=Gw+yccGbICvYq5X1yXxTiC18mxHFhwW052IiHaS1DXRpzxgsYvYR0TgMoVQkvBMx2lCP/KgiUxvLl9Zq1VyZZsd1GGEx0VjRSWoy8I39Ifs/sgr6OPaSjFSfyY6pHe6XiDWNdPowsoUv0ttygGd1WuN+qNWrwS/BrFjGuDQWqSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780041154; c=relaxed/simple;
	bh=bWkQoaE7GYt5Ny1ieaqprFck1eyoQCgsFE9jcHSWYvs=;
	h=To:Subject:From:Message-Id:Date; b=VCMS4KLKagmGCpYrPzV4JzkW793T9s+ZvF54HJ9wRZkLNzp3rx5IRSmQe0/gbAl5OCAEU8lYQdO+4hbyh8YtvveuL2YKAb/xAW/KJTf5HLlLKFAtQ+Z2jJn7cBmFkNyE4Hd2kDsUqIdjtXNhL8z+ei7UBcu39QbsRgIfiDqTxEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/o22pmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/o22pmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0205C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780041153;
	bh=bWkQoaE7GYt5Ny1ieaqprFck1eyoQCgsFE9jcHSWYvs=;
	h=To:Subject:From:Date:From;
	b=K/o22pmDovk476RJtS7nJ/TzX6U4YxLRH6Wd95OHA3SfK1cwBpJ29eRmUJBMy2EtH
	 kWkJIAowZhiHvDILS2+wQofAHyPmJa3gABGVpT0vI41u9xd+BMZcvwXJCJN5MOGH7D
	 oM4gInv50YlUvMhdU7itC1LMi3sBIZmM8hRIWMMtXVzQft9rJyGLZubevT0ads3OoU
	 KqdNN2OOc7ELB/obBsagrRJOFHtKuk6WO1Z4/noV9PzDJLSDtinnCEPltME8/artGV
	 Kv3GSl/czhgcB4U2VEoYX0BrHY+UqiFmv7hmayaSMwYhmdaXTB9ROfAedG67ySXNl5
	 KLTl+iSIoPTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C9CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004115368.16451.5419382151037119830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2d9cda6f619ca7dc33d8a0a4d526cf993064f9b90662fd657722082519e332
Date: Fri, 29 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780041153
