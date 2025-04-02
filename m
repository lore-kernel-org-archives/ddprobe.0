Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F102E3385
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743607794; cv=none; b=rbiLl9OdwKoHhBe5NJOC0w61BoAT5gUV6S5lv6avfZSb3NSG4hnn1Nv596+oRbQ09KTc95uUX8ntvlsS/NwiGZw7WX4zw5ihYxHTkb7QSVf/BHISrk0GNe8ve0ynG7NeuCiswQt97dg+Az48kky3bEOsyGDdglUCED/T8qA5Zpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743607794; c=relaxed/simple;
	bh=vSjhDUew2CT/wh1xeG6VYO61H5Aw0w95R/J1howS6mc=;
	h=To:Subject:From:Message-Id:Date; b=oAfaKfbfscAdNCsfWSsL+z4XEjh2Paz4JNY/pq35/Y0VOS6EvzJNbghMLy1O6JgmUlMsCgmyJO2bjV8mxW29I6PWWfLkRsBU7JYXqy4LoDbBEd7Dbi/PkJONAkSWWRFTiYnnNJ35FA6JKYWvSNYzRB+n5C3TVdmBSgSohWa+YnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouKVG22K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouKVG22K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743607793;
	bh=vSjhDUew2CT/wh1xeG6VYO61H5Aw0w95R/J1howS6mc=;
	h=To:Subject:From:Date:From;
	b=ouKVG22K7hFR4l63F2eaBHYL6gwC1hGsC2FBbN3Vyv79NQh1Y392YvF6bapiNycA6
	 w1pJ0Hk3oWekDGa5CEL3BeRVin4aj+ObHOBqvV1Cymq7j0fDiyobYwBFBpGY0n/h0j
	 iB43+OPu26qRAYEN0eGp3HU6MHdzmaMlOZfaeXQSt5Yg3JLdTQfBKpaeF20uX0RKQi
	 v9f2vg+HA3YBtvzWBzi/mZDNNE2TdqikBV5z6i6NcZA0/yMbNErifA/KYtmosUrz90
	 oQdM/kqEkryUIBaFf8WCd/sozaA+RVJGQHSne70YKDHX9vWu9ZC8LIL5rlWNYoFyxg
	 HRANUFyDYNqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F78C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360779359.23806.14376435984256228546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6174dc1684862ed2da2e92f7f9db31de0c70a1880453a86e2576b71fdf53ca7
Date: Wed, 02 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743607793
