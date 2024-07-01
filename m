Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4531424A08
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719816263; cv=none; b=WACIlPd09H4E4L7J6xYHJj4vUEaJ6OvPoqCTQ5NsJKFPKFmLzzvS2XyOQ7zs7zfhZsY6H+ixJdMXgt/7NPtFfDegjdm+B1/FS+vIGWEWATUc7urQg/at6QFVwK/dvoZ3AyQzXuu1hGkNNFQmWfEOO3TygEnYGzK2KgWmICy7tYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719816263; c=relaxed/simple;
	bh=2Q41yaqBZPWSC6NtY5lSPHUnn9HvMj3XTVuEiVTJWZA=;
	h=To:Subject:From:Message-Id:Date; b=JuffkGBD335P7kGHOo9JM2t33ewL/DvM/VphKzIOd+ZMq2Bw1/Fze91LxEKOXvWqA+fBmZO59d+Hk0J1zn+LL33gVOMcJ8Nt/MHGuQTmMz/WoFSvYh8ybcUpAEoEi0Lswm9WdnzIOrQVxyS/MTOuyr+mnOQp5QJEJnk4lUHnu7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E76U8na8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E76U8na8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14A7C32781
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719816262;
	bh=2Q41yaqBZPWSC6NtY5lSPHUnn9HvMj3XTVuEiVTJWZA=;
	h=To:Subject:From:Date:From;
	b=E76U8na8jWzb3KtZqX+D4qdbd0Pxd8Jo5hff77a6Xg/ixn9UW+zxb5AAtZR2vLCy2
	 hOWef5DesE4pw3wz5C1JkVX2Js2RS7SqNinjqNSdAp7aEkArK2wIYse8QTwZYjYuOr
	 pKRGaRY2C329oIdpL50iGUWGDuIuUNZ8yE1zwC6NsjrvbLESKtNjNiBGo5wmh09UUL
	 EKTezHq9MSYfbPA22JZ8EzBnmFmFgyQGzbGAnDxX/58aneoUETpfPrJoA3oLJQ0bFq
	 f6y98ODnetl3PBB9LqvidMoKCxTUjywZQN6jQENw0GbghYWpW53C1em7XKMnabZoIT
	 MldHDRz79QhEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6E7C3271E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981626282.14764.3834458922197473769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388082b80a05b7d4f9e02b4a871f29c8fa58fc8313c8b50a59f4956c67c981aa
Date: Mon, 01 Jul 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719816262
