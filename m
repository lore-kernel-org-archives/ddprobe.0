Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910E2628D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773485094; cv=none; b=ewsNZhrUb9AmU5srZMl92LbuouFnBWpSQED+7nJfXhdPVZ4ez82uU0YHzSKBNzOG/jTs7jGcVY5ig/wWklc2V34VhGkgS+L2P6Xk6/TqhD6WexVePDRqRAvQjjmd0pOt3Xv/iSUdyWd73Rl+KB/m2kAYMdcdgQXWFIgpDpCb2Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773485094; c=relaxed/simple;
	bh=1t9OsteG/Is+K+dW/x7/t8iVpv232BlpisW5SGekplo=;
	h=To:Subject:From:Message-Id:Date; b=ALOUDi/EyxlwCEjzDPc4/BEcW7yXDhj+o/B66ywLIM1dGoZ1KrO/LsKqwfsUbIZIWLExVcT2mLGAurxC+tGHbW1sSIY08VHeHGF4y1Y0JYmXBBsbfcdT8vza015LC6SOzNReDwsHvE9rw/EurQSjA/8GQ+k655RGxnTcbQDhyZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wc9Z27kE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wc9Z27kE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1442C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773485093;
	bh=1t9OsteG/Is+K+dW/x7/t8iVpv232BlpisW5SGekplo=;
	h=To:Subject:From:Date:From;
	b=Wc9Z27kE8NwCGxa71z++0fyilbhJSPtOwhn3XZewHIcoApMdcrqDWZD3nBuXaOKiw
	 kSLPtxEbApsBEWwy1mfyZpzWAPd4ts57DEYM2MylW1nZPf5Yg6M48Lu0rLEnriSg0m
	 ZgeykjITr37pLX4ZHITolGhD0EUhKvkwI24thcEIOBVoD4spSud0tIHhr/l1wdhiv/
	 UTlHQ5NEHE0XHYd4aPeJKDAOJr0yNNxdY78kEXC13EGWuTvF6eHhRdfPqU57NGxSsF
	 NH074Tu1lgv3xpIGylUy4VVtJLffQG20mQTZR41gwZfGFXLiKufNDUcll+YVlt//uW
	 slvYFaGj3KRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E910706CE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348509357.28984.9179302374108874258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806d5ae0a7d935aa70dc00ea9f6f061443a31b064972d253287624fa7b125260
Date: Sat, 14 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773485093
