Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482AF30505F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759160394; cv=none; b=M8hzgkfsBbLXC13F3eJ6jFZ3TIsyD1RQxPsJ2Dr8SLCh207km+Vizm1mX6idu6gxBxUQvTNgcSMBkRYKfxXYWoMFsAQY8TdM/F+RbGEcdlchngP7NwWdpyyKMwnfIidDQBJMFmWxQZz6Ne8rFg1Anv+t+crBGAje1tEv5wHKSiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759160394; c=relaxed/simple;
	bh=E9BTHd78xGSoPxwvurfbu9lzFfGiT3yH4AeiDmqbDgM=;
	h=To:Subject:From:Message-Id:Date; b=ZhvcBNDvWZqbbKwphdbvGOsMTyX4ehVwa1cPS182QTIZZhGwMg/VcYh2+cKS52Jnb4C7lYP96GXW7gRw7WvHAnQ6ahDU7RImL81OJjiyrwhf7ilhB7qAc0L4RpqQDN99+ceMH9GXK+PQIcUj27+XHABzYBqFHcTHtWugHnZoyN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+fAFOkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+fAFOkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59D3C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759160393;
	bh=E9BTHd78xGSoPxwvurfbu9lzFfGiT3yH4AeiDmqbDgM=;
	h=To:Subject:From:Date:From;
	b=C+fAFOkYec59SckLF1hgCgA/ARGGgtC3g/41CAhk98UynEAR4MJbrI5HcDpfgs6QY
	 ztjtONqub5DzP+GRdtHbQKWFixWhcr+13tLZs7g8g65iRReVdeJPwOh2mQoN0+Q1QL
	 euV53IyhgpFe5WueWrRzY1mYguJteFMWsigP0Ig/6Q6ywUTmsCIz0o9hGq4DfF/7Z6
	 DbBPgiO6jKM/6Qf5rj36nHlPXVslidCm3IX990u4xlSOGSKBeiOOyfkolKbC+Fbv60
	 8gEahyeMVvUUTv9U55QAY56qBIuPkpJ+SCNXcToj8W831ebQKUWmKjFIVe+a7KfWrj
	 qTga5+NxC4ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE3DCAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916039362.16497.836976363644730063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08b931fe39944d01fe30acd87e605938373aa412d05688d5ad2038fff95d2dd
Date: Mon, 29 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759160393
