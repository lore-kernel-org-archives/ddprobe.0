Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D96638B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751243994; cv=none; b=FZTyAJ6T17hqCINVInZm6o+7VQvdLo8YiCC1W+JxXVURLleOO7he4M9tcGunYZsyfid4S+2gZ6Gdx0vsrr1xDzktglG1IcdTVtPwQc2hpaNHOe5usu4Ha8jkuoklw/NDoOKIYddFYp5qLKK0sGTSD73/5INgvEFXfE8cQzlOYbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751243994; c=relaxed/simple;
	bh=k0akDThxoR99ffLP8MEdXpDkhm542gU//NBQAuBFgQE=;
	h=To:Subject:From:Message-Id:Date; b=e/2bYOIJZ6Z60ibq+ICjRvqv42K8+DnZf3nC8cxQZsqLO8fXiPn4Gh/m5cqb2xdOaIAmM0fDvpxayEx9YsoeQqDH3a08senqBDizZ5BjhYBE9C9vuGOtkn6FWjfusisz0fHnoF5Kvc2FlLUiIhpDlBU0ZjCwxMt0xo/O3gZJkoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4B0WBUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4B0WBUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751243993;
	bh=k0akDThxoR99ffLP8MEdXpDkhm542gU//NBQAuBFgQE=;
	h=To:Subject:From:Date:From;
	b=u4B0WBUeJ45i45Kk9X2ALMyvY/udRCfb1yuKHTc8q2PkPR1DQwxDFfn5krB1WS7P9
	 U8aVq9rGyjKuMd93JyYvj2DGYvZKDhuB98wtsnKbEncISdXGnt5qdohQOgj+6QjJnZ
	 3aK5gcZwgwQyCjdnBmSKb4Kp0ZOh82hYUd+Xz709QN44Xv7A+DNm4GnCqM14HcsCtd
	 RzIOrfPYgrTSRVBMDUcFhKgM+snkHgjHXcgq2jQIRKo6tE0CTQXehxpgL+QS18/I6n
	 ADeSH7Hhacfd8HW8b41dAcwyZ5iUGrCqGxjY0T4fHF1Us/HwuafbmOw/ESzfgN6iSm
	 xAWSa+EMvM9/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94759C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124399357.22612.16764680446825006230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e666a2cd86fc28ccd767bd23cd04849ca9b98506de7db63c70045aedb33877
Date: Mon, 30 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751243993
