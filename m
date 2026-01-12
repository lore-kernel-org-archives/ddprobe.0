Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B0946C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768178034; cv=none; b=IFlFtwvQnTgxGV8gTQkuH5oxXJa/q4U4bLzwt4qWbJyEuMkD+DVRwdPEZogyW7pwvB5wANgGUhqzo5vMcSSaxOBGqfU5DyK/Jv+F4sfaouAPvG7DndfrJwvDJYXaTZyQH4xRpWVKG2K94tJnQlTAWbDcOKjEHBBfvpyPRNXmkZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768178034; c=relaxed/simple;
	bh=w7OaiQHjPT2M290/TSLU06lnSIZWr4uesOtH/J0IDTw=;
	h=To:Subject:From:Message-Id:Date; b=FlkqlF8+EZCHSW++jziV8owQ4o0l6yqWrutD9f6umMfBAdchZGCN5Y+prQrqtX896q1f1aDCjFaR0PLLodA73MG9MfpiVNF74lU9/TbZvOPPpHdckdATginIfAMdtVVuAe8aB27RW+450o4BdI9gIUsUlraQz9fItZsoPKX0hgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewxKZUDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewxKZUDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768178033;
	bh=w7OaiQHjPT2M290/TSLU06lnSIZWr4uesOtH/J0IDTw=;
	h=To:Subject:From:Date:From;
	b=ewxKZUDvyF98tudYybSo5i5sm1Q2TrKD3MP1/OM9Doiy0MH3K+n/FNNcJaRgbnjg0
	 W8n5ug3WtUnLm3T5JXjprthKa15mcqUgM0WvCcS+yhzvMtcKoNIEzribObmbLor8cs
	 b8x/LZ9hPHcvbn4gKwhqH2pMSkEs3HIOyp8O9cCIZpCa4c8bpluIs336wB5fW5Km1p
	 j+JlT3wkU+NjuG40Mzq/Xryslo6MNVeYznXGHdkK3cya3SY/Ab0AAFhNVsnhqrfpe7
	 3mvniMyMMJ1eM5X3jXm1t9QOFxVYu9iz5wtDB4eQr41eICBpKMA0QCDQOrKSX/csqv
	 P8fu2vo2ReNyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90069D25031
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817803358.8413.1917062013985444957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15746197099828f47778562463f712dcf436ab9968ce801b68d848485ce1a4d5
Date: Mon, 12 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768178033
