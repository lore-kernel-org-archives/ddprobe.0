Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65148189F43
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785093634; cv=none; b=Xj2wYlD6Y91lslx4i1fnYqsJkxBbyoHTFcU/+sb6X87bhr0mmn04zaRneNHitiD6I1wHP7N3ALACDTMFCMZDkp1TkB8TI/e4o7U62n/rVFWamR2oQ6118aaSPYo12NkEO8N2/ytwAA/fs21l7d867HTJcmpIyEbukfBLY7bsAXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785093634; c=relaxed/simple;
	bh=PWkGv+uMdHS9Wz6RCt4BZirpSoZTws85d87D7QHed8Q=;
	h=To:Subject:From:Message-Id:Date; b=fJ9+QMDoFz0hDGs6A4qV5Awhw1Fkrgnyzj3Cb0UGle8iqXNDj1BqKS6ZxA6DgGJpjaxELzBgjv+/0oTvZPSsht7CkcMOJZsu//fh7+LqrmTELH1wP48oOadOV2LqkkAIwavRMTtwrkkQV0771dOnmO5m5z2IpbmRAdNrsSyIZZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJFPWLQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJFPWLQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785093633;
	bh=PWkGv+uMdHS9Wz6RCt4BZirpSoZTws85d87D7QHed8Q=;
	h=To:Subject:From:Date:From;
	b=lJFPWLQy1o3owLhXt/KbH/3R3n3guPfhODO1zuQ/gQA6unnjz3ivfXN6j+B6wOuEG
	 BJs54NX5DlNC6LBVfYwcoc968lO3ZL4KXTs5jHYAZeE/TgvjeAAvHOj6CGYVm976Ml
	 Vqb6RjCyPqJ06MD+Uqi68Y8StlLUepT07yiQ2aHSn5I1ozxo5DZHaslD7s/ZxKUkwo
	 uxay2wuWvr/U6hlYx4htmp97aQr4gFb96ncpXREZWUG9BD/f0NdFQ8kJnkYSEwHggb
	 lM5EvX6dBnS2LrlEDWGLf2DOI32jiXEWdztKVL5Z+Yei6rAWb/BoirDqf7Ld6ORzBV
	 ZwqgytrXn+MaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCDDC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509363368.5689.3519402009672342711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7b11678d7ffd65b393075bea0b5dab549d44a3a0461947040414da08cfe8c0
Date: Sun, 26 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785093633
