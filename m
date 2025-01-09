Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082A0215791
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736415954; cv=none; b=gdxbxDzrRNqGBvd2qaoTrCMELY9zkSzDAtBr4l15f7YWuSkcm5KP0tc9DhB7LO5Avdsgz+nRlngeELDaH7tWm/vPEBgmJ1DkmISZlJRnQH3zliKNZNW9C/gTFk5WjOLYprJSHI0pSU5pmaQTWTbuVhx3LsTzzCdiM4hwce8dmuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736415954; c=relaxed/simple;
	bh=MmHso71KJ49angUeVcMRdaiJIRZdi8Vz0NVHSCgAUMA=;
	h=To:Subject:From:Message-Id:Date; b=JKRh4cUiPW/d5iJLS3/hvjJytQZ/ELElsYr9ilUf1yhjgQOjB76ILR2jMLaD+1afolZvEiU3FVN6aRapp2oCQDQnBNn2w8UNC3IDLEL5CPseZIOuYndcS9ot80gdIizkHkYrKSn5ZXqYanCAdFXNI4KbDp6QG92+yl7NeU4UOpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iztZvYS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iztZvYS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B5C4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736415953;
	bh=MmHso71KJ49angUeVcMRdaiJIRZdi8Vz0NVHSCgAUMA=;
	h=To:Subject:From:Date:From;
	b=iztZvYS6RCM1aeAdugSeexDS0sFvxITlZ5V9sSJtxNt113/67bPPRYt9u4HOEN+kg
	 LyKJF3+iEMUmuHDrXjeAlsh00O+FyExtYpQmoA10f9AWZpISSeAONRiRBeYlvLsgkt
	 IqaLgQ2Khbv/vOAT7wiSxqZVG8mX66Cub2cCqtkmNgfz1jzAqG6xWqo/v4dMr5CyF4
	 4UUq3Rwzo1Hbq2CdkFkS+fupTc/WZIOKQaZS16lftX546+WITKEK25Pto07tIthlhv
	 wkBUu9MPWvewFX6oBSZ0yaNGvM+KLF1tUhmJ02dfxi+HM+t+3nao8FhS/mKyhmBO5Z
	 XRG3lxkBhRDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91649E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641595358.4154.13048719505980685844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697c5d139a6f7fade0c6c754b875357d092cc45506ee50a1f2f5ae2c0faf9fa8
Date: Thu, 09 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736415953
