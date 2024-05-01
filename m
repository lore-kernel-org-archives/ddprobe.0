Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD617F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714546343; cv=none; b=nLTCcMwhAwDmUCzQTO5Z5nqf1P3B/KACX0cGL5XXXwWOjMapfrc5nsvzmhbrxgoUWal0jkZ533BkDZnM09RbIQKnmheaq9AwKZb21eu43lGi29OaneO35/AZclmjYmO+HfimW8djDmjDizymdHzSrTfAiS4+etO1Z2xfxRIkoSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714546343; c=relaxed/simple;
	bh=+C7180jEp5qwhMC2ZU94hNJCfrk5ejjZxWc9DBYdkxI=;
	h=To:Subject:From:Message-Id:Date; b=V+XKGCaBbxsKQcc+euSs8LsmZZ955MxgZ1zB7XLj7BG8tcjVPaEL8gxnlFJMaHAjWXu1w80hdcwET4w8bCPGhaBfVIvne3ovOV8DgVr73riPCB3xDRUdLOicziZGDAZOIdZ4OFLfT3T2kAXae5Qma+M4jtIFLLXlRCmRLwZpi+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOr8jiVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOr8jiVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E5EC4AF18
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714546342;
	bh=+C7180jEp5qwhMC2ZU94hNJCfrk5ejjZxWc9DBYdkxI=;
	h=To:Subject:From:Date:From;
	b=uOr8jiVPvdTLJCHg7HMKK12rgxB1PgLv8v0OpcHRrtsxIEiga6sEJNg2+mmV/VUOf
	 WoL6CLqgGt6QdAj6qINWgh1sCKLEedlbANcGqDDu7m7wjdKoko0li2AjM+DBshkMvm
	 d3cBgqrJ5kuQvDjhY0c98oQPZ52i3qWxZNyXRE9tG3LVfC307Nop6Ket6kkYKwfOea
	 GsH3uryWtOMI0a1bS0peVV4V24ELumYHzkry9Zqtv8qv7LL1wuEeSvrXbAJTeEkVO9
	 +y7bnqJuUkbXaM/J1/bKD2DIE3Wo52hRup17DMnE3jeZ7cFj8Yr9OY/6Ia6GhyigzQ
	 qUBYjWbqIKW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA6CC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454634276.31892.12900383631908794331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3729c49cb8d2f636326348adee45ab03255c6daea5e58d6430a7e1e52e3848a0
Date: Wed, 01 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714546342
