Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57F4594A
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760214594; cv=none; b=pa391LqLbSnwmLaoKolKwhbyq0SXzlrv47yD21BCPbL48nwDHjplKt4uJSqgsywVeN+APfXcp5IU6LzDpt/hhrcwEkR9S+yzqYdJWZjbuKZ+pSF1KYXfg8hu3jcrt1fnOCtdT5F1pAfBbisHZrSLCpYiLcTvPUKHZyqwnxRa8qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760214594; c=relaxed/simple;
	bh=nH1OjN+9i0ytuigIZevxNFQd9VSIU+ZERkm1jicis+s=;
	h=To:Subject:From:Message-Id:Date; b=j8vWPsmLWYnKhjLiZE1ECOu1Otp4rNDxoSvkXS8lb1aROFAPmKO8M7Sg+0vXvwE7M0sXF7j++QhH4AQWLFlwDRrAeN5739HT4OCeqARrW55LlVkfrFV1npqwGLE9sFvRlHms4EaF7TiMCpy2Pzs2xpy303y+29wNnyJn7YNOVVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv5ePaqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv5ePaqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7253C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760214593;
	bh=nH1OjN+9i0ytuigIZevxNFQd9VSIU+ZERkm1jicis+s=;
	h=To:Subject:From:Date:From;
	b=nv5ePaqFjTcZB7KNe8zLJ1yH8MxBeG5hTSIBkme4dwmr2CJX/MFk9VfaLLS5cySVI
	 SqJPTAJ/FuEJLNSpEraFooqAJ5ULx+gIKig3OYtnk4Ff86hiWaTxDjmmGmtuKL0n2e
	 eqs62TjHyu0kCvq0WHEsYNLJBNOlSwJocZq3kyVKEsuXvEneYfmZeUxIA52uaP349o
	 eSvlmz2zZ8gBr/spwx1qmFnrXCWaMxmrDhRjtQsiC5T3qItlGC5azaMrr8RdBvhdE4
	 NxFOUpQsesarAc2umprXWF73B6sOEoB6l5Dsn+AG4LX/iGiqVvm19hHA1dzEManIvc
	 o4r3NZ445h6hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92873CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021459357.9910.13325785274461383663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb73034d4c494d29e2c50ef27b925193634bd999fed7b858414e02cf251cdd6
Date: Sat, 11 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760214593
