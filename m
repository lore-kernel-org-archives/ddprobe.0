Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2481A221FBD
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777240054; cv=none; b=t79haR2oX4VhRQKMPHi3L0DjP/71HoyiOwIeAnB3LzlW7JMqXAVkTPFE74uI34z6ZeZWThKwpdHpbDH/qHWBdz+iLdv1/sQ0PrrlPM4vUbMdBgIKdHHCZkgltn4CG29V7v+l3o3bQZSjh6xpWWu7tsTnbEI5P4qShwS4AYC9Bpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777240054; c=relaxed/simple;
	bh=tzsX34Qhp4SE2QfP7xI6/cq1+Wph4wkjDDjM2BBMJUU=;
	h=To:Subject:From:Message-Id:Date; b=qNZVjseCE74ToS1whdzE+hy2xPNitjJ5XM67Whl3FKrziK/eqvmq9ad2w8ZBKr+60rlQL/YY1W2eqJPLYAdq8nRLse7ePeGATcNwWQZsmxR4LyN8glo9O2biT2JriUMM/YaksphvOm/9OJnCKTmL17vFetqcDyCJWZ6PPwdzmCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvYfuUpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvYfuUpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE201C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777240053;
	bh=tzsX34Qhp4SE2QfP7xI6/cq1+Wph4wkjDDjM2BBMJUU=;
	h=To:Subject:From:Date:From;
	b=RvYfuUpe2oBpAhOLz8XCDlLen2ZLI8ic2SWWm+CN9EcW5CsjhKPrJMd8YNYB+Vt1o
	 l8UeTSsMMLXLZqiwHJrziU6Ke93W2aFDSDRC4ntBeAQm5JPEbrRnhb3FwXnFaSHbtn
	 AlKAnH7mRm7eomdrk2AgeNpgeXgRQWznWdrsqCH4iNM+bLZM6GC8wWLSU5uZPcLkAR
	 bS28HjmCgumGT423ra+CbTvCdFe4D8x4JSa4XjqfiexR/i3qBMxDLWQQENkACRlJtW
	 quThnat6MrypefNvawEYJ/ME0b/LKmxDRC8jg10ztr3U37VxMCGPt54ngKvGM122/4
	 pOLS9Vovau3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF826FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724005368.31109.10539837005654325631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af23bf212d2d69e7ad1169bd5a71134cfbcd1a194c20e0b066ff32d8d991456
Date: Sun, 26 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777240053
