Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3033A12FF69
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761957594; cv=none; b=i9VtsE4DdU2CsZBM4j4GE0kUVD7IEzYibGzQ0d+74XMnzAlDo/EktGx0sEOshIAza/U9ba5D2mVnV8RQPenmhoG+4IP7SJIOAVJGJJ5G/sGK99osovU7WsJsPKJC0RRBIZB3g5FTW57+gPMXQt6AeeoSj+doXDbXKKgiBZOgV5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761957594; c=relaxed/simple;
	bh=HSOBNxJSlJaPO5i/A/W1NwSx3QPgfJrxR/KglQGZLf0=;
	h=To:Subject:From:Message-Id:Date; b=gMVd4NHu12RBiI03AAjrw/bEONDWFkoyyWZtHFGJkRvHuHxeKLO8gM5J4TBeF31eMWHnegaHlnhDHVKYM2Pzl+sCIqZdtC7qkFj5BJq08IaRq+VxT9FTJwi5FOGzZaF8scqkV6ylwb70tO8o+0maAms0m6USRQ1bByn3cmdVZ6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkViBzjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkViBzjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761957593;
	bh=HSOBNxJSlJaPO5i/A/W1NwSx3QPgfJrxR/KglQGZLf0=;
	h=To:Subject:From:Date:From;
	b=NkViBzjtyX88ErV0xlLNTOwwlrSnrijl3ImLvq4+bvuM7Z6gfwdvFMEmASA3Zosms
	 wAN11CIczlWRHbDwrfTsNWZEX/RYOR1H/fKnMl7x2zitqlQm2+B74NxgtvUt4MhWSS
	 4LsLl+46Dhs9fcYTYMKKsvNuEvqFKlzk/9qRtGAIoInDiDtnvVidMkAS3wWfJtGnYI
	 ZRSC2mLtK8ELhmosTapPTKDZB6NBzssDjqsF5jaeuc2yhuWA2Bi2VAShll97ICbLFh
	 VogG6qJ0UrvtsufMTKCTIx86QWIjdTW0O61gG0PXEetNt8ckI/zfygRPjA1Mm0xyR4
	 oqHxQOdsY9/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B0CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195759358.15831.1967395636344259629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5668fd111117d5a3642a3a14a833613b1b0aeb1ced944bc8df79bb6bcda6107b
Date: Sat, 01 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761957593
