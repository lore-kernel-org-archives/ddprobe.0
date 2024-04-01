Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E368BF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711946897; cv=none; b=OWPjTmOJU2L9fMC6XnWYC2VS8y5pfi33XVBEDuXLlFv+Wrxnf5I0cndY/BMcaKC0Irw1zt4OOSANpMC3xJfaEFMONfwBB3a3tz8NNzXGOFeYFOXvE0ezk5w7lHF6N5bwwAEPucLkK6WGZUAHSSLhBAuHReokSDjTUIziM0rIXog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711946897; c=relaxed/simple;
	bh=C4/YVR7rop+Li7zgR7+eNABpP/FhDgWoAPg3cPANRjM=;
	h=To:Subject:From:Message-Id:Date; b=OkLiE68kr6QMxM/Dza974jFYBPX53VzTaCKLu4j6FhZbL9CuKK7Bp9KJ9Mzmr9zhFmTghemFciqF0wlwvPiWTxNdRTxMaJlCA1O18Ge8H2i8u1eziXlCQ4OqlC6ZXpQYe0lgCigWs29+i9Btws/JBalePgdC1lAiJuAUr0sEgAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO7ePFMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO7ePFMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B20FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711946896;
	bh=C4/YVR7rop+Li7zgR7+eNABpP/FhDgWoAPg3cPANRjM=;
	h=To:Subject:From:Date:From;
	b=DO7ePFMM7M3LEjtJES/NGEq9GzsE60WsgubxhwZn0mAUHxoz1JR2vp5yq6T1gUW/0
	 SiLVjkB3lRefn2+eSzw5yYCnZ5f4G2mIJq3grnojVqBp2nkBwMHPng0fYS0LvQuIe4
	 KaL614+DX2Fm5dv6fgAXP8yatG4oBgzjY7PXuCC05lDI7h38cpAMLexqQ03WX0QHj1
	 oL96EVsUvVTORDl8XDoYXJts1iaA/8mxesPHfJXNPr6ZXXD/2kqQFoYdLg3RXsknsq
	 bLHCrkPXLVkRCSBlW9p3ey1t0qpFTzzYTed3nfRjBLqfyfGqqH1P55xEf+DqpabOGq
	 fL5rz7kbsG7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CE2CD1283
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171194689641.30597.7685786569097992692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ee661fce1f388911c887372db47ed9dfbbabc0547467b69a9a175a9d767b8d
Date: Mon, 01 Apr 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711946896
