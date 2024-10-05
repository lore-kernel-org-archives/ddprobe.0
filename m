Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4969E13635B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728170754; cv=none; b=QB9XaMsnK7yNTLx6A+ZVeufewD5afpkVC2UDoat4f543O329U4B5mO0f4NCt4MWd7DqauRtgqVFyrg/MLXS9KwNPx+l07wVs9CF8z75YR/FtGUt4hDZyHHZgW8XgwjzCV/SVEeytachlPhz+GOcaR+ROiDxVHnJ4f9QKg2BRjkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728170754; c=relaxed/simple;
	bh=6JuwN1B6gtc0Lx6FcFB1wDcxIMU/L7US259L0RuHDhA=;
	h=To:Subject:From:Message-Id:Date; b=PSKLOQYg/yHu5jkHqD95mjnK41bIUBaIvIagkSdZ2p+/9VsLt3meBOa7BnnnxMjNUjQMIvSPODM9L7dqL2GTiAOe7y7rlJZ3W2cbA4lHpnyI7/qMz7lHx1LbzuZpbstWxUkp72r0bjBgVuG3vNHqdZGEzwlnqrAE8Z1tbbhit94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7/HZeif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7/HZeif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B344DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728170753;
	bh=6JuwN1B6gtc0Lx6FcFB1wDcxIMU/L7US259L0RuHDhA=;
	h=To:Subject:From:Date:From;
	b=g7/HZeifp9tVcsoHdEjB97sRzjBryjf92jq0gekAIQqwoZvsL0ClAm6tu8xURSljY
	 4mRue0Ms+HNSPF3ZywPgBEClLI4yyYACz6Vvy9v/pyXlyk7lSstCbMPb64bwf3QqVM
	 EvCDvUizy/U9rTLm4ySzQCye6IjXC/zRtvjKqVL9UTG0MtHMCYv3EjMf/j6/0+yX5v
	 WNTCpLIJnQCjA3TfC6+8Bw0ldckmN5y2NhzDXyA6WAyzuuavVcSq11pGKYVW4dTejb
	 azbCjiSG6eSXPB7NeoTva7V/4ZG2FS9CivdLF82u8/4EzjdVLMPhmz7JTSXjXkawtI
	 netcyPKtj/qCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A8CFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817075359.23677.5084054418865280949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de678b35a7bccc12d7fc83fda6b6e050b961e2694c635438064f5914f9b1a741
Date: Sat, 05 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728170753
