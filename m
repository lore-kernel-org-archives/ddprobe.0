Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4233922A4ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742505594; cv=none; b=HPGlMLV0d+WtRuD2g+jg4FKzar/9+CSowqiy4oKIgmIJ/BH6se4EuXYKmuJ1pyRr5brzjnwY2jxJr2ykNtTy39NX6DcMeCwi1UYIGBFBk8YkJ3Q/oPx4w37Z7qAY1Dk5zC6DQotcLnmj3mcb3MoT0ltRHZKE6OocwIiZR12pF8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742505594; c=relaxed/simple;
	bh=1yZIKf6pq93PNBdfdbyO+7Y6CjycFUAEqDMI8lYSXlo=;
	h=To:Subject:From:Message-Id:Date; b=QoCMY0peDbqYijFBGfLffPGIGUli7dS+rSEfvNaFSi6oVL92TIRLlqkbz8CTJdvbsxxdkMpALLT0Muk6azCbQidCCt8C+Rm8LW4MsniZUqthhiHdK3+qR9B1zZilYO59HWgcxp+cR+EbJpsWVuomZjJJhAvCtwjxjNYBFqTSS8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwHQrxFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwHQrxFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D3CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742505593;
	bh=1yZIKf6pq93PNBdfdbyO+7Y6CjycFUAEqDMI8lYSXlo=;
	h=To:Subject:From:Date:From;
	b=fwHQrxFJu24sNsrAG84yILmcSQfq93IBBBW/9CpURf7n1vioYCQ7ygv5A+1JtExLZ
	 x75IJBbyrUHEl07AH0/EpZ96ThvIC9J/ZP9O/o1Id19JVuHfrby8XiGmeDiNZ2Gpv4
	 P2QZaO00HwvzIsNumzLTQovJ/a6mTUKD5Urc2ZYyWPOC/rpWm8fE7G/xYZVqVqLpuT
	 sHIA4LINWN0Wfaq/DjVY6UcACjpzRpYVqtcBQyCRjFccxipqIiCH0MFDooBZiMc6IJ
	 xrhCR3wXcRTHKI82+MRodDkeagGkXLBg3Gw+UX5eylwdUBfZL1a1VY+TsG17V2xcF4
	 1ydFtCXPfOEog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7704C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250559365.23479.3133382123974990718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1eb8cd4e0e92f19a6c7f45726233504f6aa291bd79f0d2ac44e3b4dacbda16
Date: Thu, 20 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742505593
