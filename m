Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F74173
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767402233; cv=none; b=tBY9CWXpeNLanUqpsiNy2MLD+Z7lBqxFskHX+7DyfbF2Ps77gY5XdiowmFO0f4uwqftjtNUzanu7iZ6p71gQQzrlosA0WpvgVBAPKyEpPD1sCZeo0vA+Wh3aCrOCctPSYqiPCgHR+g/xrxdwTYPp5a3A28l374irgTjQj5MA59I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767402233; c=relaxed/simple;
	bh=zvpj/MtzrP8rq1nrUvsLHkxgexI9cddCnvy74cIdjUQ=;
	h=To:Subject:From:Message-Id:Date; b=Gc02XSI3qgiGr1Ej+YyKCr8N+T4Ux2Q/Y8MVs9kwY3lT4rom6CDCZ2OqJ+o9bP9Bg1qAxTfpyaRMlVardALDEccSPND4jnkkvf5SOIj90c1qWVZY8gSP1nLLbkSPe6VlqnP8msKejRcB7gDz2O2oqXClL78AIIerUzlyMX1Gzh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIhy3uV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIhy3uV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B1EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767402233;
	bh=zvpj/MtzrP8rq1nrUvsLHkxgexI9cddCnvy74cIdjUQ=;
	h=To:Subject:From:Date:From;
	b=vIhy3uV11S9nBQN4FJLD/qU+c0V9WuIcBEX7nFonvXWm20UXDtSmlwBdt8gQO/iRa
	 Z2M/2zrMZlpu4pgDc9xEnXf3DxNO36FT8ZNkNblhfA9F2hU7AJ6fssouuN/UKI1e1V
	 Vc0V6TBAon2Xgmp4WFavV1xcEBaokIgjJApS9Im++wIBT45ByzLE1/SR4kdxqiyekZ
	 24S/bX3IakzTl3Bk78RsHj1s25j9ugBpUVd5aZnoWKC6ia7xuWjhknZIDbIyGhpf3j
	 YiQyDlM+hau4j6PJHKCYFYhVWegCWfT8BcIi0ifZ7PAeyzyUiTca5x/mgBEDXzR0eE
	 p6bdSuP/Is4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E7CFC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740223360.6858.8336035466592760382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f09048eab9d31aef5360726f45df6f2fca3af9ea7909d8aa173a2e20b754dc5
Date: Sat, 03 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767402233
