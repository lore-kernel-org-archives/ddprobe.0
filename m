Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF23E55B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747348194; cv=none; b=C0yo5/JkGPijrvMVmoy8oGvcHelETf6RutG250bQJWn33bdUSs4H6V08hOFjUjMX8vrsNgFmUbXvle7NQXspIi788EnbKrh4u54Rvq8WjrMnQfmXtDTmUZXtfY6TDnttX2FnxKLdYAHL0Y7X5UdXnN7b0YYTq9JMhPiXOTVAx1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747348194; c=relaxed/simple;
	bh=/peZ1EdDcsD/uW5nUeIvybJ7lpA9RGO2F+IDFSE9GgM=;
	h=To:Subject:From:Message-Id:Date; b=YNmcojOmCva5vGp2LQsVPwXl3VqyRipDwki94grPt58B/0KrG0l3CnOW8p6TEgV4vyVdlWhPJgUnyJ/3H4DFQHA87KMXlyghQ86CYe8xagjwFlcB3ZPx4PGQfLD+1sn7NdkXTkhFjJou5DCxidJqc74ywNz1pcgrcxBW/mIg5Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3dxzLGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3dxzLGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59F0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747348193;
	bh=/peZ1EdDcsD/uW5nUeIvybJ7lpA9RGO2F+IDFSE9GgM=;
	h=To:Subject:From:Date:From;
	b=r3dxzLGlW+QGvIxNq+hWONBRnJMLEn927yBgfyxrKAQXEtB3c89zCeyy1QEv4po07
	 M1SYV1mCzUBxm1ExAHw5HfDfXx3LUc+diEKUqLFq/IKRodIbhOoZpWf1XEOSK2+Thx
	 yDHe9sc7vMJEG+2CPLMiCr6aCxNyS+MHSuWWuyZryHBvTleq197kfXtzOelTqDc0w1
	 TzLZFaB33DH/k1IGsKeqEEpIJ1N0yath2iRRocEF9p46YI+llywg6AnO/TWgcgqyW4
	 WiX2xwI0Sf9qbDd2gJVwpjEarkiQrBYnT14bamsLS5s7WcarrxTZ4SEAGQPM6/bNe9
	 O5otoDAnQwepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB1C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734819358.25132.14466982980247020472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d749c3979cae9336127b667a34465ca34ba344f92fe762648a0f9100debd05ba
Date: Thu, 15 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747348193
