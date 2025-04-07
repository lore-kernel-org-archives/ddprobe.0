Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551DA19CC05
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744013394; cv=none; b=bCk2Mg/vO1D+LPfPhQTL752eVDU4rUrg+Krh6nyeEXRogYqmBRG1VmJJiCzhcW6ddnIltRHkgN430KDyLGN9Ub8aTveexfO2mA53Ufm+Ya877JBMMnIQGrcOmTQOLyicZ9f/ftSSd9TC4nkzrUyarfGzjgiHYdLumy30tI+Xxps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744013394; c=relaxed/simple;
	bh=0IKb+HKxrYpc1NGPDdmrGg0BERjrUmweiqwOPsB6Dkw=;
	h=To:Subject:From:Message-Id:Date; b=r/H6GYpU3q6m/c+7xrO5NrKhcMFOeiNGShLGA5hbyv+ACJkAPZDHX0s1StL/riax2y1FAuxzlHWcH7HCLxghirwi+EzMaItRviQfj+B0XlUhamVfNF7JakR3xKk8fN4+w/21M+/yZJW6yGmZTaAI2AIl7kR+MT5X5hFW8l7FO1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9wQ2vXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9wQ2vXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA43DC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744013393;
	bh=0IKb+HKxrYpc1NGPDdmrGg0BERjrUmweiqwOPsB6Dkw=;
	h=To:Subject:From:Date:From;
	b=u9wQ2vXBMEnTg911jJUugtzn7+cxF9M5DMdmKJTVUJPuWw5Py5Y+QB6moLvsbxC14
	 UCFb2+c2Vo+7xVwigFiTI4UJBuS3qgZY6EQ4/OremC9VVdOfnBNPwaMoyWKijgkH/O
	 ZueRuVaAn1fp+AWA85Sx8YDHFsGKhqYS0isalg784DmB6ESiLs852T5BHTS5aST24Y
	 pAagEp0eh6+uZzeh6xFLstRe1zJOfodg7OaFlE9ezdp0uT+i3WoBPznk1HL5Uy9xV3
	 4r6Wxp/UwcY9/hLMu42CYzUHUa0M4tydfO0FJ1A1wV8k3PylMVXFsieLEdjEE57vQ1
	 swtWKOZ9+5Brw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA69C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401339364.31505.6908100761054330283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2c75853067293d7ca6a93863ebb0c4538fa55a1e0dfa4e75c57d994a9a8e90
Date: Mon, 07 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744013393
