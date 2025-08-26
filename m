Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BA29CB2D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756177194; cv=none; b=k7PHT+IDKSLpkac1n02FbpdJ4BafqwcY3NEBeYBHNik+qAN5uMIZOhUb9hmFDApCRJQ7o9UEzPq/w6sbvyEgLSaCNTgmDZ3rmEfQznPSRQyTuSViN2GpUH9AtRHyHg2Rb9D2XGEBqTxl9LKb3WrmBA667Fa56DZipysUw8y4klk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756177194; c=relaxed/simple;
	bh=uydcgjvnN3fiivDa45jmVst2Ke9PHr7b7Qqx2AtCncs=;
	h=To:Subject:From:Message-Id:Date; b=P4FbaFs2j9vKg90u8HItWCJ7uvL2dtIvrymFikwBPNYwjVT0X84xz9hg+vST+2Ky0SZmP6lRzPIATpeV0Cx83VjAqEELkUsEhElkCmRBUlKELu2jenoO2DMsAd2gfZCsl4glotgYYt4tJtemrT3Df0nH5RvVEQWgQnbGK04zDk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUkAHszp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUkAHszp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F74C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756177193;
	bh=uydcgjvnN3fiivDa45jmVst2Ke9PHr7b7Qqx2AtCncs=;
	h=To:Subject:From:Date:From;
	b=HUkAHszpS2G4ZYtGXAbp5NSPJw/ZbtHDm3QScAWqM3kqg/RHKaY4MD8GEHkhvatov
	 cMww5gfi8P9DNvNUxh+xGWKeFORjj/+W8orjRWBHLtbI2r1JldFB2t+3Ehb4n/2/dH
	 LevHUW/5x2lerl6tMabL5xqP4pwSxGftTC+x557nszYIF8D1CvRgm1uUmPf9jNGehb
	 uTw659Japd8Mf9OVkN7OHdqTb5DuhI3CVJMM7YBCv78HFihqUqt1g0DqiXTofEaeDo
	 Lcac1cTQaoRsqAhw8pF5l7e/ObxiOTgb9yD1QROZlUkQuegU5TG0UItVqCCLMiettG
	 0fXmFT+JHM/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3AFCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617719357.10359.4096150489450643650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0979a6bf45f228158ae94d340b4587bdc44cd7fc317f6425e9057bce07b1f235
Date: Tue, 26 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756177193
