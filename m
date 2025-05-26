Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20191BA33
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748300395; cv=none; b=V0pbl38n4nhWeFDKF9ci846Ai6Bqj9s7pKfJTTqwzyml2IT5ajdD+vu0q/8oixV7ClwXZXMPbP4VqA1Gq2f2OHPdJkqYClAaJpa6Gzs1p+7x7gsKXpx1lgkHoGYG3KugbrpKoo9OnkofN89TL8A2ysOaQuDghMqsUzOVnTYOjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748300395; c=relaxed/simple;
	bh=aLRdiT05G3pnQqIVuFpMJwXz80d/NDxTANrgZD4U3F8=;
	h=To:Subject:From:Message-Id:Date; b=SZzuCfq8sbV8/IW8lum1OdXeTtbe+YE5jBK4dfQmvz9DAer6kyq4P2jtCvnMidIU3vxnEEHFZX2cV3wGp1C4qiBEx43UOSB+MmxHztrsZevcodoOsp8gbsir454rfaztPjw9/10sbz1j5erFwVABc+GhQAaoOb/e7qLkUtIrNY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGJC+84w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGJC+84w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3988C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748300393;
	bh=aLRdiT05G3pnQqIVuFpMJwXz80d/NDxTANrgZD4U3F8=;
	h=To:Subject:From:Date:From;
	b=oGJC+84wltGPbbJZDr8LpbTth+AU0pBuXllgkOaRQZZdEHqq3OG0q5ESlZ+dsB5RH
	 n3SFYhozIOGYqTL5sOhzmXVlu/c0eKscBS0XovOiiOhcjEoeS0gQyvyoCTU33vno1e
	 Wuon5Fx7Ew7VSRLW56phag2ES9bqJkeEZGoJwXXuWgeSDkh2iR5SAScoNBdSIKuscr
	 if9tTpCYO28Ckd+7jKC00wy32NaZsi8/ui2lClaIbw1d7CU7SEy3mSJqmVfn/x5dcN
	 LN4dD4sDdmfDDKKEs891d+L9kWvxBZO4P9IaqV+v2bO+Poc4mS8SdrZg9pd2OZJ87v
	 RySv0AZxKb4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B8EC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830039357.7548.6856402716965168623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbb2de4564b5b4ec2126e6e8e28e098310dd306f8d8c76f746cdda489f3333d
Date: Mon, 26 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748300393
