Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE24286D70
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750091394; cv=none; b=euab16SyoVrPJzvx+dT7TNyH4AJEFQETQt7lLNWybh2l/NdUg2aECjjiIYiR+XyaGIAdJTXxSzyqnwG6pRA813mbzle3YuVd3qBbmdKBN7Nsomo7q2on0lvc7cWEPzYWpubmZZd0LFxLEnCehU8T86J59xEVK+zMMQUgXg9WCzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750091394; c=relaxed/simple;
	bh=k0fo2bpBgjLrNAJNcTmxbAw0qzVMBKxWtU7FmO/P1cg=;
	h=To:Subject:From:Message-Id:Date; b=ag2ttJGQ8pfavGdey+fL+aKC9j71bPkue4/W+w2Zust1YAfqH/6VQBsx0Iey4N9xvb/m98cpsn+ka0wwGn6K9dC32cUCK1itlmULLsCPuEkZ2aOokXg5NnigIgbF/737sltAEPKFdOgj8KjGXhdlxUzMuQ4wiakx8+yF3hTtzMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEU5SJr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEU5SJr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D1C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750091393;
	bh=k0fo2bpBgjLrNAJNcTmxbAw0qzVMBKxWtU7FmO/P1cg=;
	h=To:Subject:From:Date:From;
	b=TEU5SJr0yve8mz0e8n8n7X2cLaVE4HpTHJNo1N2+GPqkEXEjPeGSQgQTCVDMW6yCv
	 wTqDQHivIAnQ4NbvpNMxvmhMEsfezVoaIleVgJjxLFNvzBx89gVab9Mx3nXGBxEGkP
	 KVCSVbBIi1rlyEqQWbdEEToxMmjafQTzEgpRISXiqEVlj69LiywBr5EOJcnFPz8ps2
	 SBTbwQUdHRAKjkMOqtSCtEeMIAaWMVIwmox+JBh4ZRKRokiCO3B20QM7p6fpndI1te
	 hwshrv481QKcORGROa2+gFX1+97wr7k4eodlE0SeiSO6lEV307G4F563UmiS2MnPx1
	 /xDRATKTGDPfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA76C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009139358.13339.8624756430384949953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9230ec884864d212b3265eb30293a17ed1762dbc9510dc073a98d6e0ab7801
Date: Mon, 16 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750091393
