Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCB11A83F4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743950394; cv=none; b=JuwIClFf/vB3yHebksXmXJtEq/QbUY+os5sGpNwI63YVmcQOZ1mMsSwEKQwQq0q/0/Nt/Ccie5Wpm8ManSv32jvAiSRoR9iB+pM7tppUjQo0WyXKhPpwoP05YtKxr9UFjVWmKkE4DM+9j/SUB8rXs5nkzhOZAK216N++izOURGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743950394; c=relaxed/simple;
	bh=IxILGTJ8utrNXEZYHBDMeFkdtkqL5xuQfM2dRhSyNtU=;
	h=To:Subject:From:Message-Id:Date; b=VdVp3TgcreBX0et8IM5qyJHTQmdfBYzk/jBKch9UlNU1FnbP+2DkDstwfZvHM9zztk8/umXPDsUp89WqD0EFqjRHA0HzVXqwFgYzRyBYyCBQLkSIHyyN7ERefXH/hZgFf93n+Z7t3cJwI01NC18u2A9YP+HlyKtAsAg/UtaZ9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVZVGsyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVZVGsyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB868C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743950393;
	bh=IxILGTJ8utrNXEZYHBDMeFkdtkqL5xuQfM2dRhSyNtU=;
	h=To:Subject:From:Date:From;
	b=YVZVGsyr7Xnkamx6w4Sfy35iZQes4I5HQ3BnSBvybeQTRkgS8pV4O+HxPHmJSbyYF
	 S5/TB7KmnifoTUMPwBv/eV5QTdLysZX7JO1Smwek+Nn6MLFDLW0D3V5DfdBykZIR1B
	 0wUkO0DdO/MLu5u7EvgVicK8vsXJusZ1+nqEwnIc5MXGBAkKPaWNViqF1lEsX8wfUH
	 49olQgY6x42u+b2hVTTrTbNtIbteJ5YeXWrLMmzVNsM4G4vkvtv5fyHy+N3NIFtzFZ
	 /0v6CwrP12zylwXxwQy6qvT1EI3G4DlpsET+IgRT86q5Y81lXbKsx/pHfqy4VQ21zD
	 W1Z6jmoqFCAxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23A5C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395039362.25461.5525120070831401849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86a4cdf0e6b2a9dae4484b02d4f6ec7d95bbf856e044b6542d3a927789aceee
Date: Sun, 06 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743950393
