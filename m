Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4328F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750524595; cv=none; b=qs3g2dSHip2xB8IdyDzTteYwPjQYwDkvPOnvBLH664gZpRg5N5I66DbL2KuY7l6zNht8LUjV/KQlmEUApOYFz1r5Cij54ogt15kJu20vYVDSyXbu/qSRdfWi8RpAOWxjLdvCuWlT5slJ+vxdTpY2nBA1TLGjary2OigJ124Q2cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750524595; c=relaxed/simple;
	bh=nfk8F0nn7EFas+nzlaFNOeC5km0T4ZRIq2ctRdwz1j0=;
	h=To:Subject:From:Message-Id:Date; b=UQMrC1ySiYnqIyrw3O+RUCKPJoBa/WrBdkA6BJIDIeHZhXyiiai0Pof8xlzhPbMZNDJ+vsBwsMr6Le3gUJ4Krg/WewalO0CaoIRHzWdFCPyVvRA1g9j1JaeCBDzv6ZxTQYF4y79JP2puuAKvl0gM7SCYTcLbQtXtN2iJHrSW+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANrviB4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANrviB4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5561C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750524593;
	bh=nfk8F0nn7EFas+nzlaFNOeC5km0T4ZRIq2ctRdwz1j0=;
	h=To:Subject:From:Date:From;
	b=ANrviB4+X1dCSiHUkN2EAlR3gybna2pW0kCoT5giZCYGOVIrXmpNdnlzNB7R5rZ2f
	 9B++gCpfmU06nb5Ddr7NHoiPLanDwMcktL499Zt/gGjqRbXMKKDISvxkj4ogBIqUn2
	 ziIevF4tsMZprVl3TIhfxCufV+0+LLzbcsVjoKXGR8mlfirFQTTTVa5QsmXBXC6Bs5
	 rY5U65MCqIiaMo6t77lR8Fjx9IH6uv9i/LE3dILts6HbUMWM8zMpJ4lCbtOAKb98rX
	 v236D03YIMdKIrsyxhsNB3z+xzcjPih3oFktXLjFMreDz56AeMoW0uYwRzxdpyUWrH
	 orXpps68fF8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F91C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052459357.28868.3508624981805074917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38340dc0136cb0c8419c09afc91c6822b2f4df3dbb63f7222e7fb9dbbcb1768
Date: Sat, 21 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750524593
