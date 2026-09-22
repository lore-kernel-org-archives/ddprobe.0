Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D7D3321C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790051434; cv=none; b=R2oztUlzqQrpechzOECYbMOZIyhmGxhF8CjsOj48w0Ek3KrGtdYCiOQkkm8E/5SOcEa9WifJsp2M5Fj+1IDyTz8TUnRCvrrUWLTu5qV1CHMG05SRIc9fOtaOsaEWO3RyQ+9zdTc5lysJDPVOmaal/qPxirUYK3Em/WNg1kgzno4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790051434; c=relaxed/simple;
	bh=nEOuGJ6c/vo4jkWTTBhVXrgFhLjTDyKSfAM1QZApkLE=;
	h=To:Subject:From:Message-Id:Date; b=tthfUaMUuzY/dZWBExbP+Yn1DqSbyocoe3AC4+gjDyGqzNuoTWSXAV/+kaahl8fj1bh57QYMrhWKEG3recL/8CJnDyXHTEiFwQOnDipmfuwQ3YZWq6TKr3sVSdjGfEBHuJoZtE2/iriAT95pRh8NFLk4kVyQjrTZ6LXBZL8kLJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4hqTfq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4hqTfq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9296C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790051433;
	bh=nEOuGJ6c/vo4jkWTTBhVXrgFhLjTDyKSfAM1QZApkLE=;
	h=To:Subject:From:Date:From;
	b=L4hqTfq0Ut+osr2bt8bpoohqfLRVwnj0v1Pbe9Fe1eVxx2GHvECG4sdtTPMZZny6V
	 MVLBSBmv3FA63JXhdGPPgBl+Xc30vVqH9VfikpgWP6ATQwhrLplSymjlF2dyKcKM4E
	 qP/eCRfzA+4fsYDmNG4KIhZDUsWZTmY1AsDZxIrhcmFylmCLlIoubsurmyFoU4MndA
	 vNDrwL1+PN93XqTBCr4f8DOnWAaJLhqaefzinSFuymXHC5w66SyK6+orn0mxHeLWYX
	 XKZqKETPncrKfyRbPnfz0eIpiVwVUjDMst8YfUdyxGTdjLXh22hWfLm/Bv0DkKN8zJ
	 4IjVygrWvS1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC75C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005143370.11831.6504100663086248421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f79ce2d16a8d12d92a8b55dd071db124c803e41ccf7b171c0815f6e487a75b
Date: Tue, 22 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790051433
