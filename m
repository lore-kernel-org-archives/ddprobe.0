Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6A228641D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763444514; cv=none; b=SvkwSysA/gZSRLwKLX9gQZFqJaMY5EtuGQH5b9CigZLBCaBunFH4ngcCsLwbcUsLOgHYwt9PWJHK9K/GgSZarFMyKEhPNMC3NDkeStrmxmdifYZrhm288jOqJR9k9JCTsBwfoA97TF1Q4k/b11+PP78Qp8oend0PgGjusOTm3UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763444514; c=relaxed/simple;
	bh=UuxVTbsGoFoeKDFF8ADSRiuDVmLfsxsvCIaUf6Imp4w=;
	h=To:Subject:From:Message-Id:Date; b=ASzhMCcUcp4SUjJf/ojbbFD/jWPGDCmZ4Y5PqI00nSRc+VQunMmK+yMqHfbKkDx900AhtDWAlvhMHm8SiMe3/hUrEGizyk4AWnQrqfdlqN79HzKgpwvfzD/Tl7e9tRmn+LRaFEvsTdTnrSPjXZx/rjbmUuyeUVOnMWElzzAiQQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spsryksY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spsryksY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98BDC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763444513;
	bh=UuxVTbsGoFoeKDFF8ADSRiuDVmLfsxsvCIaUf6Imp4w=;
	h=To:Subject:From:Date:From;
	b=spsryksYFu9OumfnKrvedII4s8/2SqIOqXi8DTyM2tAUTPC0icbKEIcvDwLM/35Zg
	 3O+mKn3Gbvhfdj8uHPc7wqAmtlQvjEhcSQV92f+cUZ5d6LR+lg3Cs7yc8h5VztlKZX
	 WrORd6du9bznr4qQ0e1KkeEsag/rXMItZ9tWeLjtrv244m5AL4J5RRdiNX7m92y5zY
	 1q6vAnt5+zYyBr9UmFqKl1VaRlVu50PjmBnxRrxq5+XpBslJNiPUhwqUC1/znsi8u2
	 JafnbYble5Vdu9sGB2PmZqE4eWOIkyMEfP533oMVP1pwGVZdX0pjwzXhOwdxkQRADZ
	 BLZ56HHM6FDsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D435CED240
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344451363.17828.16431680817259711748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c668027749361dbe8ef82abd155579ba03b2e91c376fe49dc4108be62d7307a5
Date: Tue, 18 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763444513
