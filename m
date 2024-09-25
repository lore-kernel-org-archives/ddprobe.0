Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24692153BEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727251554; cv=none; b=hoSMbfeIHx7lo/0vTM9hWaHQkF8q+UYD10i3SCdnxSibXPWak1YBJ86UqDURIZUMn8cW7RbeMiVGx5WVkjuFqAIT7eNVMmszd42Tzgtm2hKZXIxExvdKyex5C1HBnkX/jDeUVBN3Qf2HEQF5goPuMeneS8vJIQ39pIpA1DdQJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727251554; c=relaxed/simple;
	bh=bpD6GMZ18cr7k9RPWfB/R+oxOyTwliaAT7kcbH2zWyQ=;
	h=To:Subject:From:Message-Id:Date; b=k7wPQqj9XoUXZq2Iv7KQ7F8rWGhNMlgP8A/nk2ZgiFpkDGi2BCpBkKWmt+BqYswriWP/i2r4/+AVC84/A22kTLOR4C5QR7frkRxQvhjzRxJSSCHlSjmTtdPdyo8fZjl+C9wisi7CWKP/koHvBdof/DKa4/HY4u83KMSY8z9UMms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T24vZNER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T24vZNER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD2C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727251553;
	bh=bpD6GMZ18cr7k9RPWfB/R+oxOyTwliaAT7kcbH2zWyQ=;
	h=To:Subject:From:Date:From;
	b=T24vZNERT8/3GMquPYjDfdGpMSbdWcJp3iPwgKmXJpDB2Z/Kc0bb5nBNP9W5Xm9S6
	 EQxpxbeLQzRdpUCDuhDPkeFmcsy7U3tsff/9Vjn2P1pagMM0Ms/qbu7fl0BQUNiKpi
	 Pl1ZFuay1l7H75ej1QsJYhrP3nmw8JTcoOUmqPlxafR7JGxAXjtNymw7kD7mbiK7Yz
	 CBTZuxAzeWNjJMkBjg0IBbZsxGs1i7ILg1714zXRspP+pmbdYpKjeq1FiMx8Ga7dB1
	 aXqPFY+ShzOcdPgoaPsdja7V+L2Nzj1OryDlBPFMttIgGWVImmx6v0586P/sBtZbmM
	 RHAxx5IY5M09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B73C369A8
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725155360.18293.8601334182954795125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1ce9a4ea132bf2abb7612268f52b33fee4a4adb0e2309ff92cbb24a46a1023
Date: Wed, 25 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727251553
