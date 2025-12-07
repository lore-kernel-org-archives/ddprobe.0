Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD372E9EC3
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765089774; cv=none; b=dwerx00j3+0IK0MerT/R1klMh+XojsBquvv2jrvMCtC/XB6/HBpRdF2KC+nuGEqnwiYNR4ix+aKjHIWWGx0MzBgHYH12sVCF22l7/hP/+KPmZb0fBi6K9r1rqa+JooVHg3Me1ytojuVZZHezfsUjoWIvm04uPPc40qgCMzpCleE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765089774; c=relaxed/simple;
	bh=r2iStMMDg839D61Rqy8Js1d4R0JPiD1+9m8U3zUN/KI=;
	h=To:Subject:From:Message-Id:Date; b=FSz7vBCT67zApREIf9TdLW4ERjamm1iTSPsxrTsL7qZLaMCZsFvZc0RyHPNFYT7Bdziih1FiXCTMLTXEGX71XhzDVypyXYiHJ5KtNL0TMBa173BAgpVDrMZPcQvbK2SVbBu3Qu5F/a6+fu9DDV6tPR0aazE4vjgSJQm5h7IyyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGwksMoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGwksMoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9188C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765089773;
	bh=r2iStMMDg839D61Rqy8Js1d4R0JPiD1+9m8U3zUN/KI=;
	h=To:Subject:From:Date:From;
	b=oGwksMoRVgG40F0KhL86WAdi8FeCOuiIClJBZ/b/fEQP7XnOOgS1WOWQ/m6cldUKr
	 RH69eW8lZR8F4voP5SFQjaiw0pkY/Fo5yVL/TwhtTVpm41SDf/lYGjABiUzolZhLCS
	 iigrOQqIFDVE3ssHg1oykWmul1DJvaKafLQlpIh6qXT6af0GLi+BDaSDbMEvd83xHq
	 8HwDhM33bLlxMvDc1K/0TGCTyfQjgtRsH7JvA8p7DBiMEtRJFfPyNe68LyEnPuh1UF
	 lJAptdyTKkBegFm06ljOZHPuF0xh1tiqPfrC4/5FpBe8T+MkiqL8k/T0fUDNKstySy
	 2/moHmtED40dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DDED1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508977358.31090.16322952153776556232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a09d35d2d30e54dc0f5206b5fb0023d1669e71ae0396365d60def8902e6299
Date: Sun, 07 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765089773
