Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4440E39FCE
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745468394; cv=none; b=elFyjm1O2R4JibwN3jR+UzyyNt1tFtbDNpLl8AgGWDV7uTVnuImFFkZNHILCOvHZeQqJPNTVcXrhSJWBXq6ZX2GQO41brOXQujt2c5oaLQZ8ngNG2pqfMmZ3sWPMC7tvmQAZs23yFZCIqZk4GGq7PRFM7qTKud1M1q1vt9LuZZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745468394; c=relaxed/simple;
	bh=GMQ2Q+FASEYu6FBI08NLJ2cKYqjFj8/GU6q1AfoovOE=;
	h=To:Subject:From:Message-Id:Date; b=GpjmdJuu6sa6ZY2ryG9lcL2RJlcSbtI8EXBememCmj6iGJdF/rJf52TAB0AU7XJv0aUFx48p/1QyVjbtzF2q0Q+tfTYHBWzOjERRKnUzCHgrsS1MsCLprFuz+24/axdGItFyx2m+fvZkQj9ow+5uE/JFbetUnQmQ7lZBqBm61Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNABFVnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNABFVnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B028FC4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745468393;
	bh=GMQ2Q+FASEYu6FBI08NLJ2cKYqjFj8/GU6q1AfoovOE=;
	h=To:Subject:From:Date:From;
	b=UNABFVnSUOnQVZdisoWrAK37W7OERxIg/XN/n9FhJP4LlWkiH2BrxYMoPILtKvsHT
	 xSQ/X7ozuwGzQI6ychlqF8XGQvxpHm2aTTPf0IbGIEKPzZEUo4Scn3N87NG6t1ryg5
	 OFvyKoSZPTE7K73pc7xg1NzlHoZty/vn7MugGTEhwGGHnKbKarTycDuOeFENOHhoub
	 9dVtAmEKkINGlTRuid7FTXKGy40eP5/lz3y6sp4WvDWgJ19rbwgglR3NJjbk7RvynF
	 2uhWM+6waxij/68H4EORPdysxhRV28ymUVzdtp6RlI1GR16RvdEabxN+XVYFezXnbX
	 QjA0B1Wwr9UpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D56CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546839363.7341.13769489422944379130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a69bf968d17a57f66d9c2ca5a42029cd888303e55d0fc45ef8f6857462bfe8
Date: Thu, 24 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745468393
