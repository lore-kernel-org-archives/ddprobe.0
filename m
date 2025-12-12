Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF7F30E0CB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765570374; cv=none; b=KiTb1FAlABycGeYnamALIj6GyzQmT9rmIskQRCmbSgGTOB5YidR1I59ilL3Jn0U2M/158aCfUKjrZ69oiz/AV5lFg7aQdCLyS07CB0FClFpcBzmQPlDq8vOL1s+skWF1n5B18C4nRuCrpoDi5ByVjzr/i97EtxWhMHssqXUmUmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765570374; c=relaxed/simple;
	bh=gkGiXo6jsG8x+mOdEmJZtTRc/lRhQX+RJso31jJY1dI=;
	h=To:Subject:From:Message-Id:Date; b=VH/zpQxER7BUBdrW9e+guVx3EiZsmW2zaE9+gQ46B1GglcQteo8mqGE1AJ11ku54r8Xgt5Kt3K2yB/mDCKNM+Zg45eJzDxWInVpPSn29zirIPoFFH2Dui1cLMLGgtQ+YZ6Z/phsLl3R87peEcT1/vkVmDLgWMNrdGLrIiEy3FaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhr+KBNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhr+KBNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C85C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765570373;
	bh=gkGiXo6jsG8x+mOdEmJZtTRc/lRhQX+RJso31jJY1dI=;
	h=To:Subject:From:Date:From;
	b=bhr+KBNj3DMnOwKmCu2/3YqfoBh3FEb+36NUMN0RPxSBvpMsJ8E9sAzBmNfOSMSjF
	 VaEaf/vjxYwZPjbiOVGhIgLFEmQDEP6iHNRa/nN+Aamb47xkiGph4iTOVP+Ef43QE+
	 7lr+3NrQCczi2z7RUgJjCQqPEdny2QxLM3pNB5GcwVLL/MBVzLce5k/zkOkJGMGM/8
	 yTkTvr9Qwg/ZEDAI244m/9eLHKDpZA03jIDWVG4CCK+lOTIqBYPkp/HQ1V1xL4auH0
	 PoTQVlhZgtlqYU1WusgkjZ6Kp7RVL21qr1gyR67o5XDWrcBhBqJLCzSv+lv/iS2WyC
	 i//C+bErroDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9955FD59D8C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557037361.11687.15075516181501216567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecbf8cb7825ed9f32e0a6e0433b62917c1fd3b11f1de6569b8945602935d7b8
Date: Fri, 12 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765570373
