Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400B0152197
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713808223; cv=none; b=CrcC0g0PM0h1y3qfbYxeG0vB2VD8ZBUhzcWVW37HbXDhVUdasmeD5Hp8hBvdLnGhDSlgf9b9fws57DuSIpgTHO36Y8WwAlg+ttl/aPK9jTXZ4tEelCZxgS4tRLMVr+wqcZ5eTcwGtqybEsE8PdkflldxiY5QlHGWM3ZXoEna15w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713808223; c=relaxed/simple;
	bh=+v4MYWN952rqmXmr5DmJZxv9PfiHH4sS553TxWihkM0=;
	h=To:Subject:From:Message-Id:Date; b=hXLOHylrL7HhtYCcX3mYwhssYNSbVFki/C/tD/FltJ93ayxyXmwFSWY8ZpbwGYIoDHVcNJF645/17Pm+7ZoMS2bACbCiulJeRk6DfaLp2ZB1zv+iLzXY9MtNHwIf9tXu9JmZaztppD0CUF/HaDF5GHRRsqeLMWeMkZGVrb7jJWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlZUhusa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlZUhusa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C12C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713808222;
	bh=+v4MYWN952rqmXmr5DmJZxv9PfiHH4sS553TxWihkM0=;
	h=To:Subject:From:Date:From;
	b=jlZUhusaEPGztBgKvl2gemShJ7/7c7NOoZNt9tDs3nGOccNvkbIY0vgTT0j2vsIZF
	 FxuqOj+4LmMLV1Dyic6MH+VgauE4StGRsmnYgqhCP0NKdSrFv7Ek9ba0en+d5XiFjV
	 HYhVqPC6CxHUuzpQz3znGFBh7ImK1ewavFwBhIGwGVnohzsqnoWfSMVA43FsMMQlj6
	 irEK/4S96SuJmh3i3t3LZ99Ba8ETP9pw6WtxyPAt8R6ntwlLeOTIO0+C95RhtAShIi
	 acYAhKpIN2TG+0kFj/iBem27I93fNVi6EjDpoBrmxTXEr6jAEXTz4vDapwaTo8oRY/
	 09JgjS9pHlnQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20F3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380822278.19918.13488005577501963823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb10e93e6d4cb4eb5c1fe1392938b0b64edf58f23eaf473973ec662a7ac0ee0
Date: Mon, 22 Apr 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713808222
