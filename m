Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1BD81AC8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732358154; cv=none; b=cLn7P1hQInOT8nI0UL24QEoqPn4kmJPlX+gbERnInO3ILhJv57gERqgoTanHcOt9e329ZonJkEGroj6iWJBYVPSMC3EugFqapsQQ7sUCSv7QFD3hEaxVEcP1wIVHNVf5uzzsKCXIncIN89c7QKt+ewrgUzZpDZO1MRefvM39R5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732358154; c=relaxed/simple;
	bh=8xNPIQNxx3wl+IWUaODMu6nEjYzrMhtiC64OIuUJogg=;
	h=To:Subject:From:Message-Id:Date; b=VXdlzhogm7sFVSJ7WcTvX+ZmTotkeH9ws4JfdgmUZ3khyxn0wdSakeREKUpQbthOOE3VrgxOo46APqKwdt1r4Fm6VpX9QkRmrXfr8byrY80vifWghToWJGxN0norPp1czqbi236l3+btTLByJ8plSYnJuigYj+5/WPVUlJRJgmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj9ITCIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj9ITCIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD75AC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732358153;
	bh=8xNPIQNxx3wl+IWUaODMu6nEjYzrMhtiC64OIuUJogg=;
	h=To:Subject:From:Date:From;
	b=Wj9ITCIu8RbRqp6QDQ9f6CqQAkEMWjrwRuFeH+dpv05BZ96U9FDXc90Mb/9hvuIAV
	 WEBx+L/JgPf2qTE/3DM2MzP5hcr7Fa6v2W541DdNpBPnOlpx61bevmQsRNg4B+rr1e
	 ujpvwvN8tz95te1MLUP3Ri61sgOaw/fdTrsF0ON0oMeRxlAzje0CI4hvnEQG8K60XV
	 daqL4LQEk5s3W/Zx2LYK/KSFz+0bI34L8rLbyZOMg9dxq6IOFg+nIx4T6U0UN2NToh
	 DT9ToOVXaYaVfFvPijNFtJXGddunTeG3M/p/J/JHmchy0hiW2KtHeVERNQoKQlYCNt
	 AWC3m6b1Uzg0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A863BE6ADF0
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235815362.32370.16861619123352884016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acbebeab630a11508a8da3bce725a940e503d84dfa5b99666c80ad5922cdc578
Date: Sat, 23 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732358153
