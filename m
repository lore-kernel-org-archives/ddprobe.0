Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F198218ADE
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745595594; cv=none; b=hkcln2tBoQFT3eHhsWobeBLitPOWQFXfajCLXMCMFL2mQnxhFoXfse5uEH5XxBU3inPIiYRAloi0ukZbtzjl13Apb0rt03sdoxm8ZL74/eqb1Cg/j0BXTBhA5pULkbeeESd+PdCalegHUG0avN2c3PnPiix17+hfKa4nZnOMy3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745595594; c=relaxed/simple;
	bh=Gy+NNK4ySIQHLIOE2I8FzqRuyWXFAXMkXF4ozXc0394=;
	h=To:Subject:From:Message-Id:Date; b=ZjJ9sv/9pIsfSVVJpuMBM4kncAQZHJxEfP/msz9NOxxR35DYXRmoAoRaVCRHuB4KYL8uFVRQuZuQ4gCWvUjiTCE2qoRX0Vpx1+KPGDa9ipfy5qA9NcNZzp/k9DERUAd89PGIDzOWUCQhMHfWKcZK/teuK1ymtDXO2K+tu9BgiBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjHuIezj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjHuIezj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0648C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745595593;
	bh=Gy+NNK4ySIQHLIOE2I8FzqRuyWXFAXMkXF4ozXc0394=;
	h=To:Subject:From:Date:From;
	b=KjHuIezjhlQmHkvIwQ0E4DjoT3fCzRRSRywZbsFzFPtElVmWmttHMK3Bk70DiR3lh
	 0IZJqxTGVeW7ZbL7HN1k0O0yl9ehG2q03o7soNri5wzkALiqpHfmtABGu5oUkirarK
	 f4/+saMXc0inJpM8qYorZI0sVXB/MQE+PFCQooj0Y9zcHnWIhHlDT1hsi3oJXRU3wq
	 Bmnrdgq8CdvQUT5jshVKvJhLCeRL8JPmuoTWY30t90JSEdg1zqTdFBn0xYyLjxPkp/
	 k1/13CsXSEwa8WYtzObyDmz7nzZCpiiyR54oaU6Wg29r0BQe/9znJtz/KXjl0XWdTm
	 3vk99RLnvDVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0D4C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559559357.488.7060573666981818358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2dd16f1c1d6671dfe2c1b993c1220619415a6f2b912f102de8803fccdf6da19
Date: Fri, 25 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745595593
