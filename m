Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643373A3822
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792295434; cv=none; b=MI2ImxD/Grf5mrxAlsy5NoAOa0AkIkeZta1qWkA5qfRbFO9sx3hohT/r+rGZmVm+KFf9K5GiayHQcabUCwMTsPAmo74rjc0ew3YYRcbezZDWpL0pJ+KDMjpCfmgTAHFSU/UhUHX57uMdJktpKA85VkOuINQm9C7UF3k5xtFg/YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792295434; c=relaxed/simple;
	bh=OSm+cRZKQhiQyJMavhbq17mocG28gYDKu+wvBB1iOoc=;
	h=To:Subject:From:Message-Id:Date; b=lW7hFWF71WAneh0J07cCXUMgWslqxIwUFr2CoaiXoHpHNrBf7rtRf1Nayuoh49Hw9CfE7LzEEuq+mfJIVd9le+cknHCayI4kLgE5U7CqZN0el8DOLt46/4EoPaDBnim/d1mVTkpOP/VakmHAEP9AXeicLJbjWGOxMLdUTXnKMPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suA7/hfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suA7/hfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6E0C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792295433;
	bh=OSm+cRZKQhiQyJMavhbq17mocG28gYDKu+wvBB1iOoc=;
	h=To:Subject:From:Date:From;
	b=suA7/hfrfoDL5OU7r2Y+xl9HLxIU6AUWlxdeZJOgV4Vz8Ntxj5+shSjYJzFgFUhMX
	 tZHY9VqtcK3xRLiBQJcuUtS1pbswQ80jTck6crnUQRqoy3686ZLEII74GDulBaWXe4
	 hJPo8G+qSqojAhX07+UwMJntaGbIVX16UjNvBxZR0ataPgEgQxhnuxJYxf9zTdtuWo
	 mNocM4iwUfNNGWh6vlkBdl7rIxmcayKOIMmCzGobwlAk+hoS5ZKuDMqrGA8m3sdj0S
	 qequp0XMrNIwj1YhnRwhciREE/RUOCI6GfpoRTbAXU1s9xIRQcDcYODHaWurLc9r/x
	 oIay/IRltPhAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B935BCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229543371.30437.5999983589619162126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e31e6c755fa1a0a0888198cca37229d80a20324d3ebe51dbdc1c3cd5f05ebf
Date: Sun, 18 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792295433
