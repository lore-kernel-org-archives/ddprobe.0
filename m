Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE31DB546
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749152396; cv=none; b=opUmUOSVn0hkA1txUVPr76GVHeCRQQH5gRfq596s1iBidGYMHZBl3p2AHX2uFik6IDa4vWd2BcvoSSNZW/Q67IeQWMw10o7+b2GKq/oR/9NO2/vS73e8iRPh44JpM1RGPz3YNM+nJkdPej46tZ4taE5x+xvoBRX9Wepk3d4w1Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749152396; c=relaxed/simple;
	bh=gpfMcjZbklj9+S89q6j0ubirDjF/teWtS2hjm8obx7g=;
	h=To:Subject:From:Message-Id:Date; b=sq6S3Fmn/pCTUYMtsm6zXTTI+1tO8WyHDnmoVjRYtvCw5jAV+HMPHus6OQv2fhwi1tesQ+9GoBi1kLSGHUt+9VPwqx+euuh4eAo3LoW0Tpmzcyc67SJ737M2WDmDy6AcKOHNlaim/vEiwS9kwfUakr9drPidWYH6TIJtQD8Gvbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HolK1MOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HolK1MOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D857C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749152393;
	bh=gpfMcjZbklj9+S89q6j0ubirDjF/teWtS2hjm8obx7g=;
	h=To:Subject:From:Date:From;
	b=HolK1MOonUh3PE2as4r5aJCazwbgKXeOHUfTqpJKlTiitMgpBEZC4hhojgHkl9zCs
	 9pBA0OPIbotL4TQgcy4AbntIcEn5AKGsLU3uS2WJookiPHkMx6Vvu0CFqJIHF6Ot9W
	 for59mGWorJnAU89XPvy1gaDKnfVCo0CrM6tEsMt5JJYBIgvIxcM9sDLyLF/KItBXT
	 +y6bMxWE13YhggytjbYxxWQM1n00UHj9b/vJmVgSoNYSVsTtkBIBLvAtBnjPyy8ewe
	 1MAlzV1gw6NKPibs6US4PLpX2PrCgO+wvGs1Wzm1rQhC5nCYxKiTycsRjGv5voOX8n
	 XBiR3TczbS6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA68C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915239357.6007.8456325259429503912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248b4742b5bfc5023c4cb25226a2bc45e8968326e28f19c10342330c62f817a6
Date: Thu, 05 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749152393
