Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4158642AA1
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747014594; cv=none; b=EiUNKy4ozdXwYsARrPK6LzM62ZZvLPROMr0FO/Q6sqira+AKlvibGpFtfCGEz2AGBbcWu4u2IUcAlwPaMXv6viksX1JSJAkc6eDlFBW7M8ITcJFNK8ew939hbwhMKGVBgH71jDzboCmEj1MakSExvYiMMCHOE006Ow2S7Vq6k3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747014594; c=relaxed/simple;
	bh=96vCyoLBf2ci2Tpz+InmSgH4LIYouMrG9dqYHOrX+7o=;
	h=To:Subject:From:Message-Id:Date; b=goHd3ZrLH4MnV5w84VtWz2XRrJ8+xXscFVmQmE766bT/sx04snhgFQ3kmePiRj2g+rlkFFpAd7yokVIdP71iUX4dV8R9AIDXlj5ZauavRfU++FQsP/YFoB2bdFgl9/tgGafpTwuNdHCjys2PUz3rwY2HiBcsqgEamj+Xw4ovojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlzW7AUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlzW7AUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747014593;
	bh=96vCyoLBf2ci2Tpz+InmSgH4LIYouMrG9dqYHOrX+7o=;
	h=To:Subject:From:Date:From;
	b=GlzW7AUVWgpyzTvSW7tTAJwIexomKifdwZt4ZdP9Lzi4Wz7d8LeP1yNjZY6paR1ZL
	 9jmwR0nwPx5Fnr0VmMDpe7+bz7gvxOS3hG6xKXEiLydhYcIlFwCNhcja+mHIyyfz3b
	 IwfEcX1bFoQ3aSuFbi/WRrwVQfGA1qWjRA542NRvN/z4k7+qUPP6oiT5SIVFli+3l5
	 0CXOBO1QrEysBO7klZudQ44dkSGWX69S4Fwa9zl49bcBa+1kMN9gxLrLq6N2FsE+mp
	 O7xez7qgYNN2bupJUZWTj0VmxhRs8n0Kpehm8Cfyx3+axHz3Erzq44lHhgqXBZBWnn
	 a9/CHvAxM979w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFFC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701459357.24002.16267110288148320660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cf1f5bad1643dce9ae2a9ceceecb2badc1332e7a231fbeccabd8299db92e60
Date: Mon, 12 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747014593
