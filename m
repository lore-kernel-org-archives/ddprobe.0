Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3AC2D0C62
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782547114; cv=none; b=oST/amlOYlhnGhrBtTH0N0BVozumQ7bO7M6b3sqagalU+52c/hHzc7wnkzhaCUi3Qzbrm96G52msu6JkD3Wq8+vjc1mf5ZJfMWQZ52SYpcAELhdn7kWoMVpN2XYnegYt9hAV4Wjbl04bIeIqhULSOgZ6yG/Vwd/cpwjqL3gE2c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782547114; c=relaxed/simple;
	bh=HQkPzTlrRiSiMeQbaQ4iU0Mdj/5PKdQF2z3oAW5fmvs=;
	h=To:Subject:From:Message-Id:Date; b=c97+XiPj5G8dZ2jTkIY6BmyoCH+q74mJ++MutgzP8LaquVOyVk5YNvTWfMRFaxXVOgEzjHhoQPok2mtDxhh39NcvvFwDq6sKXq52efDjlts0UIlTzMX/oRN/XISHhah2dc6GoncbkXziSq215PRLKL4Hf1ah9SOj7LHiNFgWMt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpXp81Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpXp81Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7078C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782547113;
	bh=HQkPzTlrRiSiMeQbaQ4iU0Mdj/5PKdQF2z3oAW5fmvs=;
	h=To:Subject:From:Date:From;
	b=DpXp81OzFn5lrYnjVQBOU737ewXGm5IdbQevVPg6/6xDtEzqQbutgRoamW9PPgxDu
	 XEmQ75z0fMKYeuNdpQr/Ed0oUmtbVFyPEHjpc2opoyt8ySAGS6NXaY7XN6c4EuO6Bg
	 RehOT6riPIsfj/P6WpM3DMv4oVETD5YcR8ApJDiOvG/ZsrKlzsieBGoe+OlOVS3+RZ
	 LjGqGLt/RLy2wQ6HjRwGN09HQTo+lWGiAWVw8y/OxSEYPTS3ZoHkhRF1NnFWUp2E48
	 dAsE21MexJ0uWcpzYe/21WPQC62gpqG6PJxOXAddNYrZCWSRT81TnymEfwKEeSpBuJ
	 NKELngSQ78mHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD32AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254711368.15833.3411580549321789256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba58a0f6a5fb9c92b02e57af1ed6ede699126f35f932f2c4afbf5d00550271ca
Date: Sat, 27 Jun 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782547113
