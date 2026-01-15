Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0856823EA88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768447434; cv=none; b=SjBZ58yEZDWBRQYq4PTFnWb+Za+BLctH+xiBgWKM6LWnWahv3PbCt88SkcQhjSsnYukvUbCAoNbAWlOlyQWilspCGhaH+edXGuA693JdWbUrpV1jt8PUL3YOM4vwGW2az7094hdfSySq/y+ZXaIeCgBlS4UE3XgODU1tqXAjDzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768447434; c=relaxed/simple;
	bh=4Ady7s40IKsNzof6nYuNNbby7XhmQtGNmNJ/7QVoLD8=;
	h=To:Subject:From:Message-Id:Date; b=JCs+eyA4setgM+yZB3lBn2Na8oDq7kZHvN2uxTi0KjCZF9YXLlx2TMAQNPEOnyJMeFN2vPWvfbCFOpSFo3cCyjvsFtL1iMiAXkT2AyAFgP/kYqdTrAG+GgbpYK0qIKpu/EpB91P7dh1C5k++OchloD1G+ORnq9UxD7ejosbY82s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqgR3eZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqgR3eZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFA8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768447433;
	bh=4Ady7s40IKsNzof6nYuNNbby7XhmQtGNmNJ/7QVoLD8=;
	h=To:Subject:From:Date:From;
	b=bqgR3eZ42yj/Qq8gGLuCAgVIKlpYmFsmMo7VkekiCSffzQpzKQAxl4mbeL5rQiOVe
	 hksIhmm241A5kippHbm0zCT1ZhXRXMcO9wFruSK4PiDH5+TjBfCeMjETJkDHBMpslZ
	 be8BDGtzvp0l92V890qT3FpRN1j8ff6/nkMWIBtAbr+Kc7i23vxl/dt5NnTMZ6EhZQ
	 UjgN7LvK3eoAdBtmCM6krz1sBJUQChxubrN62HGWSl7mRUea1zaOW7tZLSIQshXgqa
	 /OQyKKDKyrU8y4IqZGrMYY2mZJptdMLNImOWSc49mQeTTP4DCwuzEIiPhfAA87RuJv
	 NLwNJ9Eq4SujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABFD3CCA6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844743357.11672.10319847464714157375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf61b96d0903e56211d0cd139e4124eba27bfadc4b964a460bddd7af45ec276
Date: Thu, 15 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768447433
