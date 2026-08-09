Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CE1222565
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786304434; cv=none; b=BRR9M4E8hPjyswOZ/PP0+MLgXrWqyKMnC9uJ8V/YgfiNCFC71KnJoLa3dFoWXa538lnYeLfoDz5SmTTdoRtGH7/yhk0TIQ4cTA4Y8/0l7402+yeMPNBXrh1nsLe5H+XCz4Qdmshx/IG4yCHZe5tS+OWK8WjXmqVwonLZ00raqHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786304434; c=relaxed/simple;
	bh=eb3vtqo9nyMaOhDbxMaNyGEXLy/c1HmWC19gWUs4mSQ=;
	h=To:Subject:From:Message-Id:Date; b=sKyq88pWzReTwGGhQjcab1lNPPUyFITzSiirA2AmysqywyVk32sgD0pECPeAQSZLpAJP7TPaYm1LindOkwfvXbm2+NWOooxFSVweEjNRj1hhcDMD1E/pR6le3L2XbW2AHlZnnFfo0y51WQiOVQ2o3jZ5nBdu9T7RqeHpTP1cvw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgUBFaRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgUBFaRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC00C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786304433;
	bh=eb3vtqo9nyMaOhDbxMaNyGEXLy/c1HmWC19gWUs4mSQ=;
	h=To:Subject:From:Date:From;
	b=NgUBFaRQl8nzr0JcbU6pXYA9FAJKSRtOT53jhkjfgyHoXHYZ9r04F/sMTS3rgISDz
	 opKlN7dG2hpsm6v+qXlDdKBa1i107WHzq0qEPOl9T6czdAoS201DtZjJHieZA6xCTx
	 2P8Kstlbnuc2F+72ogra5uzSPkp6KsXIfntMSsS2bqMGEg0xSyNDPKCixPQjklwL+R
	 OPkh0wnDfq24ANiFzlaV4DVwuGqR4Bn/Yy3jz3VX4MxGVSx9T9HNBvD4wTldIoE86y
	 coEnJAOi4wtv4AwNyAPurudCYUKpY+i+87IgxMQT0az5OpK0XQmmp2F8jSP2VvGTq7
	 pVfWJ5960me3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BBC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630443368.28938.8973474140187455538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a193880586d32efb339d76ee865e52c329773b6d35ca32fdd0bc09fb52f196
Date: Sun, 09 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786304433
