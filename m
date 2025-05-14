Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348401D79A5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747193994; cv=none; b=lUrSOYrHMyrnGhgCY+768pyBhWg6eV+40AR3C/mengARQs/q+v4C1HExMCvmAnoJlOrETkbG0WaFYFRVtbGmyXFBlTFTF7l6ExqJf7PTx9auXg/oG/AQK5jI/ymdQzPPqarZ+ZpYM/L/ssMANWXWJ6Gt7nA93BMv6Q/uFsouMCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747193994; c=relaxed/simple;
	bh=p7bkhv5+Sh7b+CXnDBbGCt/tQhSbMN0sH4wlpXou8Is=;
	h=To:Subject:From:Message-Id:Date; b=e7wEHMRojlYuZ9IHUza3zl326WG+9RAK5NKRxaeWLGCs4xj9w+KG9ICRwGqf53rvJXDLVOrRS9RfN6wrHwkmoZiMQc1VdsgozrUkAHZh6hJm7NLAuNDe7CRILNUZgUv1XrIrTw8FGHZV1vSiGfnjUoYAa8NvXx3HT6k/Pcmipp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpaHJBHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpaHJBHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B5C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747193993;
	bh=p7bkhv5+Sh7b+CXnDBbGCt/tQhSbMN0sH4wlpXou8Is=;
	h=To:Subject:From:Date:From;
	b=kpaHJBHx0vtQQGqHDlpldb5/5F8XYEFwdETH2If04vM+tBlyaZsmY8gAKWmBeuhG8
	 ThKPWU0JbtXAlEfUu0g67PBDdvU/QB3TW3XDgBjgnvJTMJXa8+3f3Dd4K5OTiVZqoq
	 TsoDPR2XATmg7c/vNk2Qm41nTfKeUviu5HP42nl/qmSLMj8wfw0meRnaiBOS8HV9PE
	 RaVu1vVi/HQty88v6DwU6YqHS7PcN+z5NERMbvla+8zuLM7NbuixtUseHhZzRjEw3s
	 8jk6U7cmz84pbIkBhdoFsAsHwud+uRc9W6o2cOuW3VVBitHLFdTZbAy3lgGetHr4cZ
	 Pf2VVSuMucjSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAAC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719399357.31939.15799505830052653563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3117cf09259e9980eb5a43f68c07f0b71f14fadcc2f41b6bc67cd854111895f
Date: Wed, 14 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747193993
