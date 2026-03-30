Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E948D1F4180
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774877094; cv=none; b=IYroVs53+SFpHPu9OkhYAc7oI0AVwgqfeBB55MGT4fwiJCyNdGNM/Cf0ZX6sAxpFD98UIOsON1Znkg9c3+rYPz96KYjSbfxD/BIEMUk3zoP1Tqi5N52Y1eUeqHvL6KcEbSh5dI0tfWZrXSnsCvUfqHbUMopmeA4YPA+KvBF6FzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774877094; c=relaxed/simple;
	bh=czNoLZX5Wbla551RaCDvDauyb7pJCucZs7uVJXMZ0Wc=;
	h=To:Subject:From:Message-Id:Date; b=uEGg/of99mWlWoHGMKJahL8wgkgWIfrub5q55nCNh5E/mDllicDFJxpZg02KXUlqZtuGfvVCJ3Xsf6TQ2MhVm0VEqv2/fa3OnOTnvI5YKbVbD4jJ0rcMprl7o3LuejiC6c8KEKRzQFf2JV2vquKnxarcGDxvNBsYIFAGDOKUar4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPtos1uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPtos1uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D29C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774877093;
	bh=czNoLZX5Wbla551RaCDvDauyb7pJCucZs7uVJXMZ0Wc=;
	h=To:Subject:From:Date:From;
	b=BPtos1uAectAMee2MzPaGgloafiUJb44m8xhXXoWpNO63334oEPJh0gPXBScNPSSY
	 8zUkcA3cEurwl5+Dgb/ssdKjdrflkWEzg99cInLA7CnesV58t4EA9jx6PrMccMXUmb
	 AskOLhJO/9YKaYN5kyvjA1p6FCLu+w++CSAMFI+/EpARkmChRnoPuvdyVrWeItfRrM
	 4PBxoTdQVFO4qFk3NBdmKOaEP/bHTar5kY/tobfxXI7kRPJgAxtSA6ZfryW8JhYdA2
	 Csx3e28qWAwGbEGpXzo0dyEQTgZIj4MI5WypbP7p46cB+A/OxcRfI15G+rrCnMnM9B
	 W7S4ICUCrfDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4610D14B0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487709358.13076.13663599222507454366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ef3d33517759fd535920e064542c30f1937e9edc0ab1d33aeb89eefc135aab
Date: Mon, 30 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774877093
