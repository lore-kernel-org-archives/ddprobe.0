Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3359A4B1E6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747833595; cv=none; b=uG0XCi/MPWDIdr82EzgzFdWYyUJTlQiJ3bi0J+ehpfS43UB7dCEQsweABufWxEdqplrr/jOGHM+i4Fv9rYm/XnbwyaKNrCL/2tFEKIehIj/EGmgh/mEGaLh+cAR64qsaSkRAyMacuxz0bO+IGzl0CAubnF8aOmhlEbaZoLQXWKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747833595; c=relaxed/simple;
	bh=c69g5kB59bIJtinXncPB3HcxVr09QXa0TLEUdCkh4fc=;
	h=To:Subject:From:Message-Id:Date; b=JuVdtTVj9bFfLphTGN1GAF0dNgwSaKF9V7l37vG6sraZzvmWjtYQ2+Hooijzu16N05wOuNIkFpv5wOHcoYfO6Q0YR5VaXP3kiUZw47xbLlmrF0QDUEShdlYGGzQLGdix7I22pziKloc0DpArqIf7POQZkuaA6KEVSTz4y/trXhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0hkgafI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0hkgafI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D847C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747833593;
	bh=c69g5kB59bIJtinXncPB3HcxVr09QXa0TLEUdCkh4fc=;
	h=To:Subject:From:Date:From;
	b=b0hkgafI6JzlAdlylTp50L0WPFuNhllaaeexYzARkGA6nAp2u9B5aSoP1O2kFpHKF
	 ynNkgSfkkL60IEzSMM3a7Ri4mm0TsFTYkdhqkzuFr7wJwMMogEi0knfzT3sm4yPg8N
	 BiKhgJCjFqmpzKYyepuDAKOx9kl1Hvp4qY0wugyIT2GD1ucoQgr3F1yH2nr1etEcXA
	 c1refsciQQqJya5FkvgDyKzJPwJrrCDvnc+6ChfjotjuqOju/jlS/slJrdOiS15RE0
	 Zo7SgoANYo9TH0CgHBBQSyBOb4UKSie7FM7ZNx0z28E/f7UbIk9DDSQGC7YkKCuh/j
	 drz0Rdwi7O9WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD6C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783359357.16997.18001293508650530942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876be86bac429045552c1c6412810528774b9e78438f28369491ed275343ca44
Date: Wed, 21 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747833593
