Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1511A32F742
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756740595; cv=none; b=US70qaQvJLPcrLpKr3YoA1tHPfvoedaifXJ7+oLel2RRJm8ggmPuMstLWfaRjPtpcMXYCYDtCyVq5nc69QIzOpeZPHXWmdaL6EJXMKuVWsAjU4PhadcU84nmPbNPcPeEzZBwcdbGv8RXOhqIFcnVkRhMLZRBrcwhnKQKCfr3Ju4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756740595; c=relaxed/simple;
	bh=2BqCDcYzp+BJb15vCdLCRSmjkeZroFJXAQEfYUUxvKw=;
	h=To:Subject:From:Message-Id:Date; b=Az0fTELgdkQiC23MIlpwbDFN5gPgbKNxE9ZStAkZAJp2Stl5eEuKfsxiwEq8qb+VCPvYfw6FfgaS59o1bkohfsKaKhi+szZ8fy90XkvF92k5pZn46zNJ+TbW36gPcgJTBdn2O+tQQsc8cnQ9IMf/YVDvwOMKiR/FMegOgjrlvZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlXTZrva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlXTZrva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C12C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756740593;
	bh=2BqCDcYzp+BJb15vCdLCRSmjkeZroFJXAQEfYUUxvKw=;
	h=To:Subject:From:Date:From;
	b=FlXTZrvaxYd+kWc7L5P32lM0QYUwKEAcZf/mYSXmNao/HL5FEWstr2sSjlZAA6Sz7
	 54j4I2FQXXixtKmQZ80CixXCbar/3eu6K8A11q71g7WRoZAnZUNmHKtF6Bqy5xu3Ex
	 7rFGaKSb9g+hGSX3ZkItF35Q9noOE7gEd+/WrFd5fREarBZHXP9t+UmyvOrNRz86u+
	 ADjd4CMBH48d4FyrsEKosXfU4x9y/N8xxHyF1lo2+dsRoofGBunCJ4gNfYpVdkj2VE
	 Yxu3sZ5jxVC4DBvZcS47Cv4eWuW9YKikxt5TP0a7vyauv0/VJ6oe20ZpvE+qaYuR8s
	 JdvkuCWktz79w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07ACA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674059357.6723.6706167946278460281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a12b488a285916b2a6f51cf16e7534e44e3528b73e7e87efd2b4046815f9754
Date: Mon, 01 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756740593
