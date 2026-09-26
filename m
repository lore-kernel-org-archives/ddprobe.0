Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1675478E38
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790431834; cv=none; b=S2sQJNE7qt0kivm375bFX361yfOW6v6RGPEbLgD8t2CENLB3reZOWG6CQj3OLpNco7aHUizdbup8GwzkBfoYNhNS7gCIlkMVRxON32RE2C/4iqF0vg9oLTXQH6w//VBUSFoh/qI4gJSfDeKCJNfCJoVw0fPEpl5cqqb6VJnrduE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790431834; c=relaxed/simple;
	bh=/W+GtIvOJcS1pJCYPeQ7jWczWokK9vujfYlsXMT9Frw=;
	h=To:Subject:From:Message-Id:Date; b=HHa73s7swnDR1+KfTT6tez440URHzJlc4eRovFDmz3ONdU71s4Syn5PIAnqVZu/HnrDLEO5moZTn4knSeStDhyz9Vaab1/lXn4SqAtG5wqsUIspTVPmNS56MUxO5gp1ULllbw2DEaEjDBQnZCdFxvt6tlT5HKsLkqncrKq5cqk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjwuMaLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjwuMaLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B1DC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790431833;
	bh=/W+GtIvOJcS1pJCYPeQ7jWczWokK9vujfYlsXMT9Frw=;
	h=To:Subject:From:Date:From;
	b=AjwuMaLF4ofZ9RxlTQl6FCajTK4m4mHA76t5eP4zOhpixqjNuSo2hcoZqfewIhpmT
	 HohR1uXb5IqXOnujixqWQaBN+nhIudlTNSrfdDY2GaAG2dwTuHqoP1yw7Wpl+3j5wd
	 GwfKh2VlY1AiiA0pE6rddnNeThT6SnaK0NHMYsWWDOLFsJMpLQlxKayoyprgJvhVcD
	 eUanUkso/coFwmthgst4pTODKFPDWle0lnp4sPXQypoz54L+55JJQ0JxN5m6CMeUbc
	 iVrnLRgSxQZkRfUIViEoCwetV3gW1vh0wQfrp0yknVLi15twG3RwUrPtBKwH7DjtLk
	 9sNetdue38T2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD057C98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043183368.29551.15467040320057793758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9486909bf1fc1267f3e3e2ee5737d69aa17e6b975f52985b9465a4cc11cd93
Date: Sat, 26 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790431833
