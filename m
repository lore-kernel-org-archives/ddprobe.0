Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1601B6D08
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751970594; cv=none; b=Rok5nNYwdgVaTPGiluNhaZyGEvN+Bp3Umalrn4mLwXf8T3xZgDnj88kAehOw61yIgLz1df9p+aQuyYwieDyGcg0pta4ht4/V8npYcgS+5WBcPLgR/3JH9cP//6EyAaBNFzd/8jr8tTi2pIBt+o05HfIBo7B5WewSViGuakGjtwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751970594; c=relaxed/simple;
	bh=nIciUbZUVysIoDzFXBDYWYRrsvHrrZyiQAPtwkzVIU4=;
	h=To:Subject:From:Message-Id:Date; b=MbD4GA1f251SM/KP3jHHwwvC3AG+dusQxZhR7BMLJYubSDAMU1327jJm4ftRlMsgdHz0S2DZzpuaEr/rZn9mshWlQXfLmx9/6oxi/WDiqrb+lCAHKScAf+PfLRV4Oo/OnoFrCcDN688fh/WbKoYybIjxPQOUOvnw77tZpiyEwlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o69iKQ61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o69iKQ61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F586C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751970593;
	bh=nIciUbZUVysIoDzFXBDYWYRrsvHrrZyiQAPtwkzVIU4=;
	h=To:Subject:From:Date:From;
	b=o69iKQ61DxX1ZI3BMtujp3QuWmE1itdPH33FSoXXGC7B1XAmo+5GwrQjZKslc3n4x
	 loCe0b1WzDPx25VwtENdesEQmSNs0AUbvslnJGikp4Oq49ba3dbOZ4bWa11dfScCD4
	 zwXzGgM6qqp0AHPQ2Z94by88ioMck0JnIoOKIo/7u4z+2vik3nYHdHLSp9x9u2IcuS
	 daG2VAFBgl+mh4g6kpmz3zwIRRLQMmGacvEwlyBp7d/hITbxioVAYQfuYHdWxW4Igj
	 rQDW4WqzEILV3t/Ukmz6mZQIOJif0SjXXapAQB7xwAar9NZGyvf2OVxx1Nrqz3ivgS
	 aoDMLQTz6BS/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90027C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197059358.10236.1030287390624722174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d5e8d85c6687b5bba23358b4fead7efd1d1dbb93b1b9695cdbbb76bbcd6274
Date: Tue, 08 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751970593
