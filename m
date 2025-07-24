Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA90A285045
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753376993; cv=none; b=WfAd6Xmaa+8eUH/+ZA/NIOM8fSgYEoFoUUlU3/VuS+ua1p6mQGavf2zDDtqVSGlamYOYamytCQ1rmvpYSGxUOB/Hl8tXXNhaFZiHMNJCcSbS7gbZf380yksMPT/F+dNq30JSChOKrOdtA2O5b9wSoQinp2Wt3a2snNhcWZaYgNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753376993; c=relaxed/simple;
	bh=JT4S933nYSbuct+48wZEpB+nQDgZPwlkD3IlOgOiWrY=;
	h=To:Subject:From:Message-Id:Date; b=f+0qOHxl7rF//mzxOMYUfPE1me7d3AlEVwZOjnBGJvtjYqglAuvz5bCKM9nrdOSVDMjEabjdXRZB7f0J4FBsk9CjVuaU57lAzUTvf7nS7je4dwNm1I752EFNg6oBOmbM1TQN+CiXAVQuzSSx3iq2HvNp8r0yjGlFOPfql22X1Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3jpVcAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3jpVcAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B17C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753376993;
	bh=JT4S933nYSbuct+48wZEpB+nQDgZPwlkD3IlOgOiWrY=;
	h=To:Subject:From:Date:From;
	b=p3jpVcAi7v12h2eGPjUu/kmQE4gFUvGNteeUBXn7KZIf9pLJZP631BfyLzNEjxfJA
	 fxmX3bkwIetwEeTwWUjxshRTsNhsSDlTcrrNvNv7rdJ8406dqEU5WfhJbEJzIHV47V
	 7b5kjhR5pjmnKPfuJMkyDMDRVFphFgZhSrteOOiARx5BTzpL0Ra4MjjjqEBk4tXjZ6
	 kKAls9EAMaM6uUmDowYVUew6Fx1ReYojvAkM2R1rRF8/IdN9ZM6rmhaW6aehbIAR/s
	 SM7Sub/h+krRNew1CQEIyPd1AC4gIeKfSNDXxrRFwEkfSAmjuJAtsvQScj5qH2QvRu
	 a1YTtyqBOrjGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92749C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337699357.12298.17113278791556666171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0b5e605e0d1910e73659fd793953fc6643f5d9b1685e58879fb4385ab36ac3
Date: Thu, 24 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753376993
