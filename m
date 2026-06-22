Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D62B3546CF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782162394; cv=none; b=cw1MEFePjSzCIt4JLMj1mpUBG0MkC7m75P0ioGSZeh8JcWxwm7uWFtTtnW2ldLl7G1HHp59QnKBnQWIW/J9lT5F3b3jUo/ZA60QK8MA88YBXOUiuqJ2pwz0JpBwYuwfxn5Zp/nKropYpBKYGz9t+bNY7CJn4c1tCKbLYrDwIKF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782162394; c=relaxed/simple;
	bh=fhT9Y6yVrE8FDDK3TnJ4vwxfYkD+7+7ZXrEEUzNbAII=;
	h=To:Subject:From:Message-Id:Date; b=NnXOaUd37XXj70Sm2i4kh1MICGuBLUmTS7OyMtNoSRjaqGpilI6QQxE94E/v0n5gxetW+mCxQas22Vm7gCdkrwtyxIyvvt42AyPHFj69n3PDZwDeHYm3s5JTcU+jwzF6xEfLx2w/W5a9aBqtPEmm5yQHjlQNBArb0Lr0kOlUoPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQu1FxED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQu1FxED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC65DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782162393;
	bh=fhT9Y6yVrE8FDDK3TnJ4vwxfYkD+7+7ZXrEEUzNbAII=;
	h=To:Subject:From:Date:From;
	b=dQu1FxEDBSl4TLfr8tnLzPV0C0tKAPf3iWb2AhxOwWUKY8YDjesUP6BtANOiw58Tn
	 +HzlFTPDvKqBVLbUjcE5kof2TvOtDHZhGhvUDGkegHa3ePkd3yJN3BzXVxOA09WWqi
	 Wb5iBWheD/WYdX77SvJxbzL76qIBpHIMKF8LL4wvbnYRKEnsYxk96lgTtWiX98IYzi
	 08gConOG0smTKPl4vouQjZdUoxeve11du76lyA/GIzNBXXyK7Z5yR1hGdgkZenh53f
	 jln0ZaL+gaLlImkWLQC80Wl0eyAjzCenx1rqci/2pCr4nObyUMDklIrEhbXU68ooUo
	 ddSH1U70GfBDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8C9CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216239370.21972.12843808462886574835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee157a2ea7b947a29326f9cfa226f04b27f190b102cc08888deb3cf46c7ba50
Date: Mon, 22 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782162393
