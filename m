Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524173B290
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718869763; cv=none; b=f4vIq2D/Ql0+LdoybrUfVaeLENIJJUpqEWUQgxsxSksxjV3JuxNAoB/t53hUn1j19WBDFvHM8FoDo3n1js+pzU2h7HxXDNTcCa3lT4VZAFw4w9hzafq6TnISMt4nZr0PzLiEHP4C74ctgVsWri2Z3P6HoZsrXKO0cjIdWUf5bnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718869763; c=relaxed/simple;
	bh=MzxXHaoZABt0sEfXZgoeehtsT3IUlbiLb1sPlySUEvk=;
	h=To:Subject:From:Message-Id:Date; b=HeDJfhf48KPWOFJEPNZP05t+ZmkUauBWc97GNMJGSzlrcl6XF4tSjMEsSfJwpqjWsG8sraFq2I0a9CeZnYCbxwmlfWBrOuKbUAmL3CUr3QI9k2amzMac7/0UB/2hEF8MQNCFXNBUMua5GOdkAP6EDfh6d/AXAp9fngxEGzXAQl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS3ybspm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS3ybspm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC12C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718869762;
	bh=MzxXHaoZABt0sEfXZgoeehtsT3IUlbiLb1sPlySUEvk=;
	h=To:Subject:From:Date:From;
	b=HS3ybspmG6hyotewHjfGi2pQa1JT5I7zzU0wxxGe3HnSd+03hMl6RgYhk/e+6I8BY
	 OIV7u3ajpx3S0+0SpTCSr+iAJ8fVRzSGUvDBMBJ7oY374GJtm66Y4m5Zpp7bDuTfX0
	 I+XjfV91F4FF2jMpeMJ7MEbrdMNYQOHBGhNA27fW6D0jccgiL2j33SwhgrX/KY9RPa
	 FHCIC160pwVU4OHj9V84HOApSrW2e8mr8SMuoIhVuUlxuQdHKtIV039YZb4QXp5vJB
	 GXVTaa3XXQW7fGmyTg7xWxwaLs/tUqhxC9+UeWUORM/M2hRj5bofZ2D/pXia8QZ5Wt
	 qU5krdX1f/3Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DCFC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886976280.25945.17785094716135378219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d425900ffdc09f462f432d9c0ae8740c89f0660fdd1db48752aebd863e29322
Date: Thu, 20 Jun 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718869762
