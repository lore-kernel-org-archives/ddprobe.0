Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B5838DF9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770545634; cv=none; b=N4qU2KK/OTylxhiJgSq4cAXL7Qy84uG9wJ15oqrWdx8bQs0bR9KYfEV8hltjZTEf50WB6wQ2BihUwdmGxeUgoYoG4ztEQjA3lhUkNS7ewgQBvsNiD/dVAIsz8Xb6lZzCTR+6ESGqm1N8iYG2FCJkAgKBvrJ/1JBGlxlxzT8KfMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770545634; c=relaxed/simple;
	bh=IunLU9UW99ZgeSFcyDfAxIFHgDGZngBgIuoju9XqcOM=;
	h=To:Subject:From:Message-Id:Date; b=ctt80HEB2xh4oZM2yfYTFu4NKUs92HM6vWjeztMI1A3Yzbs8suDrBseNpQZ5AIdxpnEW1Pi17WdT3kq8+mhp3ojQuNRQAiXfvjV5/BBDpThTRMUfofTZdC3LrKTyXFNEQjVD6x3H5FE7jiN978qXTL8coNr4YioOaocdjFCpEko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifXecoUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifXecoUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C2C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770545633;
	bh=IunLU9UW99ZgeSFcyDfAxIFHgDGZngBgIuoju9XqcOM=;
	h=To:Subject:From:Date:From;
	b=ifXecoUohfB9CNI/76E6OaU9/rBxauknzJAxWQFCXDgnrfB+OUWD8x/BemvfunFRd
	 pSWr4UY65MXKuNAZWOnj7NHo7FBQM60jRHN90ZVR088OzsSkrYb4cGiYgohWo/8ph4
	 QOU8PLZ3C2UoDqcuLkswwOtDtRAKTbZk8VgSwEtWUAr6TmXuUNGmER657AJ/RQdfir
	 BZAukdCV/idZqDsBx0puElcSYSjQLV7FnJ4ajvHia3RZBM+l9FtJ9wd+MTctN0aWN+
	 8h3I8Lf8nxuSVH9hts51es8GHIDvOkWB0rngJ6RygVgny8ti9Hd9AjPGFnsusIyjai
	 R3Mf3kCiU7flg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95218EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054563358.27555.72371842391033007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d9ff2b9269bae70736e4e5480e044a09d063aed951e73519d3bf5c14ad868b
Date: Sun, 08 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770545633
