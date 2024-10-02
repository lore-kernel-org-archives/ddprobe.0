Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4E19E994
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727912154; cv=none; b=JJa04EBHleTQut4+ybYfwL1/29Ocw57NkHsO7U3l0c88IfGOxK89Bj2NTcBs7VePE7wtsumOqtYERQL69BnVUQSPKIkBTP1nBRxBpPNvHMbhzQT2Z9ZO1Nw3bD/5loPO+F21HOsLPSMAbj4Ob5V5iRwzyj0gdzRSfBz/7Be9Ehs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727912154; c=relaxed/simple;
	bh=kytajHtDxNmxRKS5rVhpNE0qdMLSGSlCCmw9d7ALlkk=;
	h=To:Subject:From:Message-Id:Date; b=GOGqDRW5crFKk3m42J2cL7AbI9HWiyjRQd3Lh0lMHNIeRWgsPdIH6YBZ/SfCRYyakTMx/FGkzI8YmFv0s9Bq1CY0DA1XA9LBNJ+WzRBbjrge5damtwwjyzJfESuD4XWcRTsycuatOdf5C7HLDKEucvBeNk5MeDgZKSEbGwblhnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQCSXKUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQCSXKUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3917C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727912153;
	bh=kytajHtDxNmxRKS5rVhpNE0qdMLSGSlCCmw9d7ALlkk=;
	h=To:Subject:From:Date:From;
	b=sQCSXKUWNdTzlxWjr3m0F1Md8gD/FyVV7rnT3TNpGpkYhdQdMOhoNHAAsqU2inPZ0
	 raqRaCz/Pzf93DUyAkMeHWNpmvJ9WIA0lTCdUI7QxJ06e/YniEGmUPf8iNGYWSwT0Y
	 +I6tgMocpieXA6kB+B4uHwrJyOaQ9f1qQwGHEBxknp2GonXrc+CPpXo0mKQ6I6zWYY
	 bJBOtspn4aj71rEYXsbu0wfloNddgB6Uu30izjqddsNaUPYR3/OlTxf6sZrJbnol7F
	 aoeTJyz9OjfCbae5XS0rztbNw1oEHM1cPo2+WhkGsUSiFnLlSaFUmE8UbagCZWDSif
	 7lTBiOCnpf2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B691CF8547
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791215361.4331.13480839903003557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3835cc2d0080edc98c588d5012f80b2e2af7323948dd12e451c634899cdfd2c7
Date: Wed, 02 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727912153
