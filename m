Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E482CA9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717595843; cv=none; b=bUHICklW+iVpouvDbHqCkJuuYk28tCM2BSZIpanhwScWiBE4qlSR1t6t6HrFfZsiZ+5lgeH8FY9uzh2k2lOf6qi5BZrJZlf5qFTbUdk0u44M8DSpjRiNCizUKHw3lHlBWPNUtTsQXRD5ss4a4rNmb2sLTq84nQaOlB7/3b4reL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717595843; c=relaxed/simple;
	bh=RODNN8l93kZS+5EktVjIXsNCxfw9/wDcHygZ5Zn9GSg=;
	h=To:Subject:From:Message-Id:Date; b=cFxl4+krL6542qffezYEovImYgHkSBMAB9lSbh++wcf/q0uzQVfOkvDjTiCCyw6ezWq58oWMoK2vInl27yCeaXpFqGZ1YjCWwJNp6LOz1DzcEOUV+JN0H/hT6R5WraeDblIFBMuzKVu8o7qh4aSUrCeGGEoVyXrQ6AIYnldsU88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLSVmK4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLSVmK4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF71EC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717595842;
	bh=RODNN8l93kZS+5EktVjIXsNCxfw9/wDcHygZ5Zn9GSg=;
	h=To:Subject:From:Date:From;
	b=rLSVmK4PhpQg2fn4Pi1KBynVo1CPTmIz1HAneE7BFK37kOc9/0O6OgFiEK4PurneV
	 g+59ywe4vzfgt18Fwrg8iWXnJtBm7Jvn5lLboDfMT3sa8w9b/4FjmfRHr+Bmt+/14I
	 w0HLUfxuclSbRPFD2F/AczlZ/Rdfg5h//TAMgIpQQGzeoltthbDUfWTrwFBJy7IFpg
	 nRGPG/kGuQF5UNjzrFvyB8wAkjvMuWRH4VrBzrJcgfDFfJTI9j13eCZ7EQQbuDBfwy
	 Ie1cZn7I3dDyQIl0dpsLkNeZqQCdVBGZMYGvlYpRhGziPIsIoA8p/12gzgOqqmMvih
	 lRLkXIxh2Z4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB12C27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759584277.15002.11796568973421439382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d792bd26b81d1cb84ef53635d2feece89c7ac3629cf263820c733a8c93eb5c1
Date: Wed, 05 Jun 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717595842
