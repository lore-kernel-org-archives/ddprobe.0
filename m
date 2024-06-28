Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC4147C71
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719565463; cv=none; b=bLxzsQdcYR9Qmklr2NyIZDbFQbNJhBYMIJBFZwLbUkTM0YlG7ht+lCq4iFndA/vCeIa2pkRaDPxceqqNptPFXRHyJBg8JsD80APLYFkD5hoJEeppzijjM/Cf8az1jJVIh78uaXQLcYIo4XlYIUzzQ0LmodVWmMHyHklkw70ocU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719565463; c=relaxed/simple;
	bh=j3dkBGv3ernixuWpu3Da7JbgOQO6aiH2H2xIoFRLhl8=;
	h=To:Subject:From:Message-Id:Date; b=otZ4vOapPEhyW9VMi9Mu0dgMMgllUm6sUtwPK967JTqcYj8D6mY6zrTCoESz8BxBUKCKgSp/dUdTsmIdCzsN4O9DKt2cbIm8pIFJj6VhRNfy0oUbJDCGFQI1rMM2rnjZnhCpe61JI0Tb43JeHS/L4MDeRmMMWXRkmSloJn4ogE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mm4pRuzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm4pRuzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2BDC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719565462;
	bh=j3dkBGv3ernixuWpu3Da7JbgOQO6aiH2H2xIoFRLhl8=;
	h=To:Subject:From:Date:From;
	b=Mm4pRuzdZAlHdbRrdmZXEiRscwdqs5dZQEsgIe3pPrxuowlpcnvPm/DKwAWKMOrpG
	 jVLI5BjGf60LgwrHX5H8+BwHV1PksuPWrm2U/CW+XsAol8Qje/rUmlC2672UiaGYAe
	 yN/3QiUoxziUCmAy7wzEUKeoM12gSv+Lh+rjT2jmkHoJAY0ohRmCdOpZJxXrSU242k
	 ifcb1yFuoNT6Lh20g7ra+OwSM0Y4Sa8LHX2UHkTiHpUhG6Z+2WX/5p7H6rckadr3FF
	 Ho7prYzrtHdqe8wwRwvVfN93rhDwG7twaeUIJcTJcdYJBTF0zegNowbp1yzQDAIv0R
	 UrLWQRWNKs8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAB6C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956546277.28771.13810423698705613394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a2dededa7293687a47173f9fbf6a1a962fb0d27d72bbac14a99f388e78e4c4
Date: Fri, 28 Jun 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719565462
