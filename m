Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A223ECBE3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929834; cv=none; b=pRiYl22yd+IOHZ7i0QiDCLuQBspGew2XkPwl6qokHWkTZW71wx27uX/yEpociXEcz7ihBi+TdSyUYmsq4nZcfcFyatRRBM7UmUPLtLTrNP6GlWvqlrGJL8dK7UphGMcd57ajrb/mcDBuuvssm0pAv2vmrh1gb/6T0DzJw2qwLD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929834; c=relaxed/simple;
	bh=NqKtgiy88NPVuKrbehfwpeGGCcZBCBVtoWxOR0r0VIc=;
	h=To:Subject:From:Message-Id:Date; b=ATMr6dJZCDIzS2gRU66cwk4qEXahp/nrB2zdFAg8V0vMaH4FviizLsKO312ZZI8fWEuidYr3nZmna934rPKePcmxuFHPfm0NgI5u+zy289GzvwAuzafr01VW0ho1PUKJXp839IFzYXgjqGiDblyXfBx+OzhpksFkWEeRlfAQFeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm6Yiy0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm6Yiy0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11ECC19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768929833;
	bh=NqKtgiy88NPVuKrbehfwpeGGCcZBCBVtoWxOR0r0VIc=;
	h=To:Subject:From:Date:From;
	b=Vm6Yiy0qUZolij84bKW5fuSz5xXTA77a2ZSWXp5yufaNLXKzTLjS9Fa8xuPU/BWd/
	 SKLPFHPYrhTa+sIy3w6prWs8ZqMmM4XMOzS3oaK5CwwiWVgh7CaF/vJPOhFCe0XcXn
	 k8GizPeUf9fT6RwnzloFP6GCFEQugPWb0eZOHzb0b/gDX9UudKTglfUjidA/xDsvEa
	 J/iEMuJplRr+iXMjvlDvFB0nhmGni4l5PcRlIqsEWX4RibNLSh+cMC8Rs1pGm9Rgzh
	 PiHSNOgEmTUpoZ2Sw8SqbFFdad2bYpClCyQQYupNmX8X1cJz3HOg2YHMpctc++88/m
	 TaMVN+FjcHBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059ACA5FB7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892983358.6312.14927833754753276704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590679bb4237cd6ebb2e4e086a30b3938690f82890e41c4058561ce0938033c1
Date: Tue, 20 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768929833
