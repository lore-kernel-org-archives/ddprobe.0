Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BAA3BED7A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783317514; cv=none; b=kFf5Aa0WqkKBYf5VPexSwIxyWg6VoMmOqr8+bPmlu41XDSmyWiDGOpMVDJZ4Vqj5qM2EOLKEh0shLak7LYkA/FcxdjEdfot8z5cQWr3ka2kiNckl4w2L3+E9hOkupQ+6EjX7aFc8ojlUhcH7JqKuQhxz3DTGll8p8dsRY7Y+l8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783317514; c=relaxed/simple;
	bh=3otp03m0eHzJdnPTNHc5vP2VI/EVvZRmy4OvtEGRZyY=;
	h=To:Subject:From:Message-Id:Date; b=bJQQUCL7v890foFVfMGpwjFoDMXYLHJTnv7NMEl7jLEWrNlTTfgIxiEpmb1zzs3h/hiBwsDO7R4mNfoBYZIZjxj8toXmGHAT89DrtiqaMIOB6CDD+VScrCA6b1yfb/p+7HytQ1QB+SqgTglrxHTlNzNSGrt9pDCDEtaCRqjl1qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkpVrM3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkpVrM3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A12C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783317513;
	bh=3otp03m0eHzJdnPTNHc5vP2VI/EVvZRmy4OvtEGRZyY=;
	h=To:Subject:From:Date:From;
	b=nkpVrM3t1muMuRKAN5rTC3ExnRg4yZEalqmPKRu30NAGhqTaBCMmrAVpzO2X1UxbM
	 7Ak8Z3xvO3C69JL8iq24V+c0GG0VsFDtBlSm8ejgpsp1BUsC9ZHOinUOfmYtsJjLm+
	 U63DhMI3cli5/6Hx9wQfVSPzh+7vXDoQb0LyuF5QvdV3tNT5mBLpELM6bLGnQFFdcR
	 aNWUcwS68MSuSbDz8rRB9v6AGhauyy6ojJb0yF9xwfe8ShVh+/dGdsTEXGw3xFB3kx
	 45fkobjrtAH5J/osFy9nnDa/KYAbCLfop2Ij730yktJNPMX2Tq/RIreT5IlOvN+bb8
	 ux2Iluwf0sMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8349C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331751368.16783.15965189027600029466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83428526f416329a186c1f88ebc8602ab8e2cb0e13ddbf871d5d569f2f932c78
Date: Mon, 06 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783317513
