Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FB9388881
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781652994; cv=none; b=hOq//RbfKMzvu9KBk//ZAEz257lQvnuRaUm5n8I18584fcCjY/TDXYwb4kN7RJPP4JrWYXhx4ZTkDXpppQJYH8SEhsbhxDtX745i0emSlaaDl7zqKd7qwjDC86DzU4PvP1UQmSSKCpgVP2AXJV0bas26azbHWUcbmQPeYIdJC7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781652994; c=relaxed/simple;
	bh=QOWecuWrziKUjAq3M2zoDk5Z4NKRSRovoa7p+m8Ul9M=;
	h=To:Subject:From:Message-Id:Date; b=IEew3ORJZ8pzSYKwl+0dwKYUSng3jBWlT/MUfEZOfgZ5cfrGwmslE/W3FVe4t9t2NNTsium6BLOaOifSkjrFB9EvCbFcZpJiPivM1WVwDma3zgZL3Bk5HGG8ftxyTEyozmIOM1Sr8Bfxc3qp5q8hnlu/w7/MNU4HhPJ05KAS1QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a83HXrFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a83HXrFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96B1C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781652993;
	bh=QOWecuWrziKUjAq3M2zoDk5Z4NKRSRovoa7p+m8Ul9M=;
	h=To:Subject:From:Date:From;
	b=a83HXrFwx8Zi/Ko274GLuCgO87KvvgAqoTO1iLxFZQ3r3GXyPcvSOj8i4Y5HCYols
	 +U66gA1UYyScb717GupmBkBacST8kTnx6e0dSybzmcnXR2HwwOxqcRG5+hArlIS9L8
	 yKYDHLzPF6ABJEK+45Gj+w7WSEt5taoPkhZXHXvn6/F37GsZ0SbHoQhnIJmNjuAVq5
	 14dKZ4qruPLOsBVFWw5xjagwQWAS6URfaJbDD3NWGcbsgMgRupEv1NYMHvinU56k0J
	 RSK1VrgPIbWJaPjmo8xMlJ+GudQIIgw2Uq0dVwX97g9J5YQ6Y4uDe59P25J8Jqhhjj
	 uChPGhcVkAyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF74CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165299372.2035.7656263267224687505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3b8df636f0dc0c734a91c26422903f9368c000489659ae655d6e130a772a1f
Date: Tue, 16 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781652993
