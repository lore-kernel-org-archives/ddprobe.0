Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF42F3644D1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774424694; cv=none; b=u0ZbgLdwCp8uIMDrXGAB0TBP3c5eDTQJ0RYpTDimw0Xd43MOXvO4oWcX/TaMmGgI531UygYGFpNFO30nKA3aG0GzaUL3ErJ0SdOFandgMl/qJyVNFFfxmMMhOuyTLgsWqh8R8ImqgLuB4NsoL6Srx6bfe5jNwGl3vv5HvoIe7sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774424694; c=relaxed/simple;
	bh=wuzaZhfByBuHmXY54g15fktjpEaEDDWxCgXgwhiYEag=;
	h=To:Subject:From:Message-Id:Date; b=aSU9boXRBLqFpLM1Pb7OR3wYT1NY8uJHLXYLtMRtk6DW/hhifZogMvn4lxQgu4GVEraVmw5btqOhtzW+HfAMiZKc8LTPeFpdyC0+7hYRXxMqywB3xzI/lHhN2k9W2wIV2BR8pU5tGUxRNxjN3uz8/ytXU39cycBMXhA61NM6ROc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULxUQ6gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULxUQ6gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774424693;
	bh=wuzaZhfByBuHmXY54g15fktjpEaEDDWxCgXgwhiYEag=;
	h=To:Subject:From:Date:From;
	b=ULxUQ6gd56AV10OpMZv2oIwI+UKJeubS8+cPVR5uFjL1B9e6WhKY4BsaMwRCf9ajL
	 pRwo0+/jAk8Oe4yh9zOOLP0yTOcsPTrYiqP4bo97HRr7olTi6A2ttGjfanhNslqSil
	 yTLqk5RynmJM9ISDcqwRblr/pbHVZn/K+9pf2x2SyXf5gF3OAAihQJZW6xadzog9W5
	 wiu2GVxC1t8quCnEhskBkSU3bZqiMo5LQk8LPqLfeKlamHRNBjlV+WqiaWXrdbjE7c
	 iB9h7pOVNsJKInZkfUjCmFjdDjHyInVsUmpE1GiuZXvQdL4iDLBcyFs+vpylk1v7Po
	 2344a3JDuD48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91053FEA82F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442469358.2426.11752112263426635065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14412f590bf544b2cf717ea08af29f0cfc31836a2a2b4566adbbb30d2daf2e0
Date: Wed, 25 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774424693
