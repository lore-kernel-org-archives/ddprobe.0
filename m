Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344853FE377
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781535394; cv=none; b=t0UuSOiAAqSWqzRG4ytnmKF1wZTQxHnBQXfVK/Vnn9twmlNdJbGUiW4Utn5iGs9o7kKS1Pf31T4nmu91EfB/5GckdIUslsK9Aextxq/1gG492CRkRX+3hHnMWoK/+nosWMeyr5LNIstF1e5SbRC0vPqD7RIY6m21O+v7a1ubgpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781535394; c=relaxed/simple;
	bh=GGnt52tBWpizCRlcXmjEQc57odb+0GodtcGjFfKirUw=;
	h=To:Subject:From:Message-Id:Date; b=tlc3/Ls++CMnpvJXcIf8fgJztEUCvoSZrSJ8rVz3RK7svbwnNLMjr4im6Sz8t31BgDpcm/vsmbpenPAeV8/fUtoLdrTkCMQ9XbOcFgifQb5CPhtq1oz5h2Wyq+hRV4VOeKGMGGj81o52TgBDh0W7NiWTnnjmcR37ZnlSsnAENbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buZ51HA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buZ51HA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF41DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781535393;
	bh=GGnt52tBWpizCRlcXmjEQc57odb+0GodtcGjFfKirUw=;
	h=To:Subject:From:Date:From;
	b=buZ51HA0gI6fg9omX2CS+MqZdLKEQAzByOWbaUPnU31rFbYJf98HcFMBTy14Ymd3a
	 L/wAP9oRnBaWAyODeH7SqzjhZJt48/jj86Ufzx+9Dxq//5HOUZGCVca74uodcGdG9T
	 NDDHp4E712UpjLsJR7ifblder4Ry+ZkNQKdfVeuaO0ty16Wr6C1zPWACxl/voBBA81
	 PaeLJQ4ZE1ocNICVqbEcQ/0Q4w4t0YtnWl7AkP5pOP3AOtIGhJF01x8r13DtqUhWNt
	 GV9hcwxcNjc3amNr3h8nGtMik2hTN5I4uhqXrVrqcbveGJ/PqQl2BJPnVFy3jrqW7n
	 TeuSODtWlv3Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B508BCD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153539370.423.4817900582615428786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a697deb43d67e600a53336300246c2ccdda6dc2aabaeb6a452f630e41102141c
Date: Mon, 15 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781535393
