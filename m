Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33821D299
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752986995; cv=none; b=Ke2sN/zDncXqeKfCce2NUs73YmiAjsQKaFDCjhNBwJoStKy7u8Nna7JAyOV+yqGFC+oK0RKmVc2PsEmC3hCwdrsn4yjvtgYFS5MsBxKArFIIncF/k2PnON8938rDJpG//pnwWb9vPH4dpsuVcNErwsbsgXB85NB/EW+iR06PZyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752986995; c=relaxed/simple;
	bh=e22VeCEnPgUitFMaa9e+/2r0lIPylvQxsrnzERbv5LQ=;
	h=To:Subject:From:Message-Id:Date; b=SvZb0SJtpbiyltso05DSkJBsbgBiiZ0vLn0HZVtMJ6tnvY7mzJV4a9enbZWUmG1ak8267p+9CbHBpcudcl1Bw8CUSyzDITEnnKjkso1DzhDEfuDZqeYyvw+CuWRkyWHf/oGvE3SFIUpsZ+6H6dqvrgkv7tVp0MMhWgY8mpgshl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlnuzG4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlnuzG4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB990C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752986993;
	bh=e22VeCEnPgUitFMaa9e+/2r0lIPylvQxsrnzERbv5LQ=;
	h=To:Subject:From:Date:From;
	b=PlnuzG4JM33FvLLRv0SpAFp8nInZ44UbXBA6AIdBo3C01oR8xOUwMJuiMsY9SfWcq
	 hJzSpFJErHxXKzazW5duWZBJ57DrVnSzhqoyUUcF6lTDHxXpAOib26r7ICSRDFP63r
	 a9NIwdjxBpN9LWBDbgK7V7dGNxAwEfCoT3RVcrCVehPdwiv/8q+n4HAjwYVOwbYAQi
	 e3Jaa0AI2frYgYoNXVKIRcKu8s+SWqDcoyyL6HXRZPT2XMM0+KGtlMaCIY1zGLAFQV
	 nzD50xRVMaG1uuD1QRWpHmKIbJWDGylLU9xRO80PCrhrojdHN5Y2jwoh/PrjLLEFEn
	 I1UiIGXlKdGTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F08C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298699358.26644.3678354506752908579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19d112bb57374c252ee5302be97773d90713bbe68e93cec3da8f3594182a95f
Date: Sun, 20 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752986993
