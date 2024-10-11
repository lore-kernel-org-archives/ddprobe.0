Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6C31D0F4E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728672354; cv=none; b=NzxnvLkU8iJ20AHlXudPbPQupF5lXodc5n+olLIKmTnRC+V1vf54v67TpDtxiHm/nFbN5umEfcWCCeCXPqT48tcRVLoz7lrvX2K+gqBfjKR0cMlplOt5MNkD0p3VTREOUg4b4QEAqX3HvlJ4jCyZQ4M0tWPGaZt6mICuN8RtGoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728672354; c=relaxed/simple;
	bh=t61gBOqhU9a/AtEgkvBZUEXX3AMmrC0r7uVMkxGj73k=;
	h=To:Subject:From:Message-Id:Date; b=jIkCyWeiYL19JIx3KLhXzpDn5SCe7fIZuSWfOg5NFicOk+5Xfft18v4+y4YrRkhSYsVA9F4WAZkg2uLyP/raAOYGsKRWzcOnmVPmlDbbx0o4LXXS/fFhu4mZqstkv94UixHkWPU23SBMsrWK9U9Peknj/GAvaxpJYAKjS3iTCN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0TZmrKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0TZmrKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF53C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728672353;
	bh=t61gBOqhU9a/AtEgkvBZUEXX3AMmrC0r7uVMkxGj73k=;
	h=To:Subject:From:Date:From;
	b=e0TZmrKnNOnUmj6hgAzScQdCZNfdWcUrrng/h+pwmxvL5m3650pLL7Rxy4cumAcz4
	 Kh02CIMYZX1jUdO9vHrbsAV5q7vOdonNEch2Up1aWMWaNlQnqBeCFzuaMvRlCDSaRl
	 ULlPLXG7k3qxtStw8cbynQaryDipEkSFPiGFnmirr7r46yw7gbCCCB5rocxN02+/wK
	 rHHOShT7fFkdzr/cmnob51cZqcwoHUR+WRPrjUbHv35hgyYWg15StqbfTOPfV0CP8g
	 kgPoGhEEU+GhRx33v8U+3HQLqAbEThQyNSEnTyImCfy518RyGxRimy38WudOWd9DVf
	 pQwICsa8Gn44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D04D0EE19
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867235358.21293.1813796312657254368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7b7fbf14d660a7a67b1f5b0f33df0b64299e23345f5cf4128f8eca046f0930
Date: Fri, 11 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728672353
