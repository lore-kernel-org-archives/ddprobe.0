Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20B031DD96
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778071655; cv=none; b=D3m1Qm0UotKKE7XQY63TXM6AgGm8fIaDLofN4IdOxxr9XXifXsn9aHhhKlkkCYJlAxwl5gzX7+5Iq/0HiLoPWCl3SIMlV+mM17zQPESMU0ABo4iZwvHJu+ktUotI/gUzVtp3JQOtaYqEg1BUqnQUnm2dWbVBOdW22sYQ5cZ/0RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778071655; c=relaxed/simple;
	bh=YtWY46gKwZ/ckSE8H+B8dClNKEmDd0BNTTkZszJmFIs=;
	h=To:Subject:From:Message-Id:Date; b=C0p0kwBIieC0ew9xcHOwh3gpII4S+5JIlbmiAC3MFkvstrHIelWeFUslhxXa2eYdxxu+N4clg93if4ydHvigUDII0p817pqiWpVS7SVb5tt3YvQRk3hSLhKowi9ddG1fwUffl2gNrvF5Mn1SD1iyIH4XhGS351xzU4m0VAFEjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RERJVMhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RERJVMhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9327C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778071653;
	bh=YtWY46gKwZ/ckSE8H+B8dClNKEmDd0BNTTkZszJmFIs=;
	h=To:Subject:From:Date:From;
	b=RERJVMhrw0YHBFaE5g9XIjENHxcODA7mwx5l/le5npwDNNMB2KJKGkXixFFSxmhSh
	 vCbcPLvuH6jRuSZU4Ol82cS49J2EaA6amMPpXm6Qr+Fx3gfaYevstDijmmVlK0TLnG
	 fM1oEWSpnZbV3O+HrDKSnTu0bEZScqhQLKXU/ggGXRhn2D6gBoA3ilPgYrm0T8apNh
	 yY/HS9j8UXKufcGUtGVHfHC8/5zpSDseCLfKSCQxZxuL7JUy/cRASF3US8dgxtacxn
	 bsJtw/dMV9lU31PGKV46s8nKqxMg/WT6Ey2ILUwNKKnGixh4UYHQDeDu+opE3CddXo
	 hvLrEdn2RaBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D0CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807165368.6145.5189567381653877442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f737afe1c189dcb404918d342a2063acac251248343436a004ce42eb6bb27c38
Date: Wed, 06 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778071653
