Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFB812E5B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748653794; cv=none; b=iF/xmjwCm+4NwSERN0kj9llfLBhOnN2VLKmR2CnHatvWeHnBVNSiUJI+5Z6OasVVIG1zuItZXfbhHqb7AkTgMkWu9sQjqh1u6hNKXLwd1dQzR2+UwD55+qW/BK7Pb3zBlR6Og+gfm3j1nz3EX3k2pGBt0FbQI1/zZRt+a9lSCmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748653794; c=relaxed/simple;
	bh=HcGA+IP02kvhuwcPSK12vgPPdxo9am/yEC548UmFE5s=;
	h=To:Subject:From:Message-Id:Date; b=DefEw8ySXChqPuP2SZXCLDLlHimVhmlCcrHgLoAzj9liiCYv7VW1XsJLL1dgMwdwBYDi0vksWVAwEclkYlx0vMbn8EECeoIioQOQvq48HCTR4Kn2Yy8wffldkq6xpmPRtvaYoSbEXDvH4w98F0MrTW50VNAjjSLhZ7aW6Qwi2EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujs2LbuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujs2LbuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F737C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748653793;
	bh=HcGA+IP02kvhuwcPSK12vgPPdxo9am/yEC548UmFE5s=;
	h=To:Subject:From:Date:From;
	b=ujs2LbuUt5lbIdiI2jBZlLbVA9cf13eM0KmLvvudlb3b6KMWU8TvCM9lGGEv65aDI
	 SIHKxDISPgBRExPmzwGPeBytrAHDlIf1MvtflWZfX3+nHIwf48L/lZmAhQfcr2dnq8
	 4XM/LdZjaeZfvRTWmv8ckHoQTb9rxCZTIFBthTiA+WkP0aGo0t4OKJkf+p3H0CfUJN
	 MxQ8ySA4SKpTK9alKrRQfq3XhyARL5NZ4FnWLG1Wye8EfbolHCisn92k79NqgqvinZ
	 YMa0y/n9B/D8tvI7jUuOPH7Fdk0cVOwfa1vUUYz5/WqrcMipWZCDfV6k922YqnrMca
	 irQgYiDH6xVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865379357.29063.5842296050226770158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e3c4d9bdbf66c79a8526bfbf8775ed2cf59dae97254be2a4032fa435c1c098
Date: Sat, 31 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748653793
