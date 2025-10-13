Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1EB2F8BDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760344794; cv=none; b=BPaYsvzgkugsF44OYgF4axj8k9k4pbe/ZINKUO29cwdMlL1/JkMCmiXKpdx7dY7ejoIc97yO52vHIk2RhtktLDlCk4c+XZ7dL60h8IdflgZ9VJ/YYsvxF2EMswA15PuFZJVkIXSDhFl7x9UPnLDuokczNbfeMCxnsuJold0NoZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760344794; c=relaxed/simple;
	bh=S9AbuDv0phE0zIelZwQwzyiwmRdxRJnMDtoMknPcWjA=;
	h=To:Subject:From:Message-Id:Date; b=DMvkSgfDfXkykFcBRvKCS5oShJfuQWc2WZPPG6m6NExrS2dgUZ1ZzHQVklQIKkCohLwoy7IuMtGY2DCvj6w/xeG9f3vOK/02HhjINGvZR8CniCMP+zBIqfW0iUnX0Pb28etXkcdt6biZTi5vpWiFjmxRaf2L1/lmW+S4GarZij0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D52wx1/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D52wx1/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C7C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760344793;
	bh=S9AbuDv0phE0zIelZwQwzyiwmRdxRJnMDtoMknPcWjA=;
	h=To:Subject:From:Date:From;
	b=D52wx1/G6bNhXjxdA8NYDW5qolCldQ9kYBn3Y9jh+G7WAIxycZ5VPCg8gbAhsLREj
	 Y9F5coSNLM7VleSYPUgy1EWfHzgOiodGE7LT8PFkDfSmUEOrPdTmuaNlNGkeN8fOOE
	 LaG9RCSmL/A4MnQzWhsG906jV9pdoqUM9nXzJeQBH/rT4BYFQYSf4M763/EipOYHcf
	 s6lp68vdazsgivaZSYg+GBIX+9uTcpgEF8GSTlBqPLwrqoc7hzgo1X8eWVq++O9v0g
	 jK33wgiJcd1Hpomn3+gKo2P+3zbLDbdUJiniQPRJ71uJd8eFixaNnxFwjFPl9gHXDa
	 5rNFiPifi9XTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE7CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034479357.6627.4888991402211767642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251fa1ee9af8cbc716b39dda42967ff4a945e6e4642486a925f759d04938e528
Date: Mon, 13 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760344793
