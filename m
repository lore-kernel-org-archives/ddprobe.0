Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F171C27
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757062194; cv=none; b=aHBlMoJcEcrSdxKGNXo+CllMbas1uAY6xaXxgm4EOrCE76hQjODYrcnHZu990AA31MFBOHixnlUO7c+DnxhCXHVPnzXxlWz8aiBIZM4J+XR7Z+7sKxf8ZObMYM7MuMZIe4M8FLP7NwRBYN0hqpJIPlyg/iK+TopsiLM6sYPNQYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757062194; c=relaxed/simple;
	bh=cpEhli/xR+Gg0vir5owWznHCO/YKDgLvz/A31CdNwhk=;
	h=To:Subject:From:Message-Id:Date; b=Nb69Up3MjchZF8p1KfsgbQRh2sKseanfVCSsdqAoq2tcLtcA7vfHRrNBOVfdzcUX2STWrAS8vsBUtsocE8yWkv742HQFVowvaWHcfEhA12jrIsbUrD+DcZCO4zpA12KQLyThrjokmS+NgrvctqzljAFRqkSluSeUpUgBgLlIXa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgH2eBJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgH2eBJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757062193;
	bh=cpEhli/xR+Gg0vir5owWznHCO/YKDgLvz/A31CdNwhk=;
	h=To:Subject:From:Date:From;
	b=AgH2eBJqZBUhqqrfWE7hN/mul1qkGYT8wHSyJ18gkzQWZith2z7w9SY6UYoWn9xlk
	 qvrTygTLMtRAXCvgKJdtN8RPRbBLv08eh6UO8Om/7idT7LE3/wHrSlyDr4q7FSL2Nm
	 6Ova6dcqwxvs93DaoVskdpGBuvX3LexeZ1DuVRqvcBfIoEsTkTPJiM2bn4owC4e9Z/
	 kXAl6z8Xl/dUw6kOdfmJaI8qW3U2UvmPTXWFnU1Erx+DEpAcEQfACmXOJpq3S4so20
	 b8IrIZwOkv7/PzvpWEYDkIOSB1vtlyPPnucJVyXA27cuOGGuCvAiBVw9qT4v6PV0Jo
	 2FxsLJ+yZChbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095CCA1015
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706219358.22710.18265292120024209104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cf504b1c777149e4bc56b36b645ede7b4325db966de68fe55cf757707a100e
Date: Fri, 05 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757062193
