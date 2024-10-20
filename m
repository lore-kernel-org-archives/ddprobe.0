Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175D382877
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729423554; cv=none; b=i6FLSG8DtRe3WSbeXDv+0xVa3S6am+qdTA/wDJJJvBZyk0k+iHIZOlXfApy4BMvFBxUpyHLZOpKZafAQUbfp3gKoRDV55fkwF1NtinEqQ2HHo+LoSFYfrNmWIRnzAvDJx3OQzMRdFVe8ImNruWd319miXjNQQyClv6ehyybg1H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729423554; c=relaxed/simple;
	bh=NF2Wy2V5VKcS2Wosn5yfjblao6DHIObzEDmbV9x9x8M=;
	h=To:Subject:From:Message-Id:Date; b=FbYnY0s05sdDoX7TWELDcFu0uTrJ4uQBhSX+twl/3vOjNGEc4aejjEey6G6z3rdh+5SKeND+gQrJ5LRDUm8rPKUFoz3RB8ZTDidinfOpWMLsycWjBc88JiaUJ0zCDxk9Lfc/+Rti7S5lDHkvQ7SG3zW5IJx+S3qXf+foLuX+x/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=refeKKr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="refeKKr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE10C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729423553;
	bh=NF2Wy2V5VKcS2Wosn5yfjblao6DHIObzEDmbV9x9x8M=;
	h=To:Subject:From:Date:From;
	b=refeKKr3peItJ9ETlErDe74OX28TQ2XFVzcGIpj65XMo1juNTKh//c7FTKrrgUQla
	 TTEyjDuveRVPYfd2whtlSfqGfeo6HimuWx0BYR3diVipqfLe3eQtWPII7kZVV1jSP8
	 1D9vaFGcdIgxtwbtrPqIXBvCPX/SZ0XaFYGuxMFUeEr2jzwIkzMrwZRX6NmUhaEh8N
	 f3fvB1bxjScripOwdVkzFaiwSm83UFRnCO5r3+Zrmv005ilr9dqO5KTUsfPNnkh/qE
	 VJoIL3WDZ62BDwk2y6rkNzaxAfC+TbPtfUg+Pxbgxs6aBWL+tZiYh1NADH27mC1j+T
	 w0LoDNAyeD7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A81D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942355359.29168.12587759033161193501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e4d411e39da02be209b3c91adecd8d5271d964a3332c5962968555f0a346ea
Date: Sun, 20 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729423553
