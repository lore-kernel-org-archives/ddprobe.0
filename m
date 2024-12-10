Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306188C1E
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733793354; cv=none; b=uepXpnbzHYoyFatjObi0gUwMxsyBc/AFUShk4tnoEnXSOqTYHPtTr6VgYk9eqsnEpsGuBruIwZMAUltSZHmfR7hlCjh4Wshs1eDSphSaJJwCIbYGLYbCq1WXa2zAMbwRy6oaFeYHphfoDdBaJbgZbZMY4+bltQORm4dC+UOLJVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733793354; c=relaxed/simple;
	bh=mwGVauci+88Lz1T7Q05LZ8rpk+tFUoN3HF+AXwLbwHI=;
	h=To:Subject:From:Message-Id:Date; b=NTVwHi/G3ubWB7BJSC/0spV7d52fKbD9xt8+umaZTyz4ord+c7SgTff6XqbicHOiD3m/Yrrxke42axBA1hJxkrv6/cge0Kcs/nET5xSKQjy1QUs2mQCgwfJ89bT98zQ2l8yDhDf9ExsYjoARN2lN00v0zUILRHi9RfR4XdOncjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkzVacmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkzVacmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC4CC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733793353;
	bh=mwGVauci+88Lz1T7Q05LZ8rpk+tFUoN3HF+AXwLbwHI=;
	h=To:Subject:From:Date:From;
	b=jkzVacmWQ/7Z2qSoc/Thxf/BM/Xl1Mj+jUizAV2O9g2JCWmcmNrB7wQjcCKsryQbG
	 y4KPSZ2DHSCpVusBTyhPGuXJ6ECGVpnA17m7aiemcgco44Gr3XULTmw+D2OnUke6eU
	 +uKoLLtLvcXjjUYObxlGA3DlKTF6o+ZFELvXTo2713iXaXIK/ibhR6wp06xs8kIiSl
	 66lyt3Azl7RzoKs8250rWsQc/91tQijKHWznielltirdybEGtVBmd9Xe+iT8CtnZuq
	 Stl8SuoFbrQ2W2Cr2aK/V83GCFKgY5FvzQeg8SxAMNTK3U2Q8IYx+yZzWrgeDFQ61C
	 wbx3wyGVP+ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D7E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379335358.22171.13212988620537876092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62eceffcc2b2dbd2b9608997a32048e20fd71b2ca812b1a89d75fcafa622e1d5
Date: Tue, 10 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733793353
