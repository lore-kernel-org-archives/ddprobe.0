Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5861A1E1024
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787710834; cv=none; b=mxPMQ5CSJkx4sn/VPbfXEmeufTuJEH187/ezIf18f7xrTLX36dfV372h+2QsSabI1m1qpCmy3Gwoez9bTCdkDLiwk3ryPQqb1CjX6wwdu9ylUHBFyAq0hDzjtG0c97F8nJtJzaYdbgSAm3Rdgd3LYiQ77XgL4opi9p+0OT4I2Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787710834; c=relaxed/simple;
	bh=mThpxHzV0FRiqLElm4eeD9YPR5F52HZ7B4IXGmAEmfQ=;
	h=To:Subject:From:Message-Id:Date; b=s9Vqp24njfCpNzK1VjM6h6KcQg9TyPDlO/f6kFgtflLxCYhy9nGmuwXWtjzb1tXxMt4yoBUdsO8LfqwlVEvBgM+VAWOjulucU7dGrfuUKvk+oUMwrwASWY4Bhmk4hTbvdVY5I1cg0l6h0lgdJyC9A3slhll3xZB4p377IByEkho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlXB1DEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlXB1DEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42EFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787710833;
	bh=mThpxHzV0FRiqLElm4eeD9YPR5F52HZ7B4IXGmAEmfQ=;
	h=To:Subject:From:Date:From;
	b=BlXB1DEQxagLVpG3ms6DSvida0iihengNAfrdddNb6PPUr+XUlY7S8ko77lnum+4A
	 sR6e6HkJUyR1FMU5ne3FZDv86EqAgJqEzeLvaJAFC1H922nqOtISjBemxqSOHyGiGd
	 SheK5DwlJQd1kD08ZszQWehOveN4c0KgHHZKhdnSxQHOZAIy9UDwJxpYV9LYNJofvk
	 Zqh0iDAZu3064+/eNoyK0JkXJC1llpseIrlZFc0kkbPA4LB4K1pyMuftsbQrU6UndZ
	 3ijM9wB4yhjDtNJI2DhNZ1Pf0wQb40Y4+2bIZcAza43j1+1yi9aweiKTyKqdYsrfRI
	 aWYoWX5dNDzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE556C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771083370.31087.7305890893872518558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c435378b4f2249bb35da370866e37a6584cc0913c5fe4f338b04ad4b6a615a
Date: Wed, 26 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787710833
