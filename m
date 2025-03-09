Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1711CAA93
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741549134; cv=none; b=JTCrA+d9QgDb+WSEY4msnIOBB3DjHEQ2InR27I8jldAM9h14B/XRfCpdfL3Yeid8PKfFf7eHTYZBdRXqw1Qejccg1RUdxNRk8NrPJ/90WODcDdUtg7WI70BGBElHgjdV/T4S94as96K/lDb3/kD2K7QJv7p3Q4mQoYmdElfjf2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741549134; c=relaxed/simple;
	bh=185s5vLjFAbssC81tTXzWOAQ0aalYMONRN9vuj5X8wM=;
	h=To:Subject:From:Message-Id:Date; b=nzRn5HK5CPYioLp5wzt23G6dxvxzXpSvS47GGCD9iOfUx20KKizoMDLv0HOrZGAQiVD4oK8CDreDjUSHoLKlrnvYWUQpZvZOuhRe+xY+J1cpxr+OY359dstVfDpIOBFjzDIv8jJVVJK+a73HM6G81z3e+KvEaA3jNmSUkgEhfM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSzNvnmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSzNvnmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA64C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741549133;
	bh=185s5vLjFAbssC81tTXzWOAQ0aalYMONRN9vuj5X8wM=;
	h=To:Subject:From:Date:From;
	b=pSzNvnmYiSM9UGZm2STCYenGwE1H1vdcDsR7M+qaokxoUbDERL3fu/Txgr+YPGQm+
	 P1sHokEN2gTS58ub5sFX05hbaPOpWyWLMV0UiAbzuZaYkfO8/IDSHS24aHp6zGE7YD
	 lNJ9zNt//1GshEUDVVma29ie1PJpDGftfZMCDaAKXvz6gVOqyMgaPD6xuUgs/lKgvz
	 EnzZImHk7L+VfzsEvls+IYuFQmB6EfxqAYb5iczwnum5UpN60im3XOnZTBGHRBhyn4
	 R2PAYtYbt4G8WS2Gl4HEfgcA195KTbQG0l+YPJxX6TyQ/SNiU6thVc3K4hPDJygKib
	 N1Ne4mefThldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C0C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154913357.32060.16739565950889917512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db77abf3057c31cdd8d67b7da519765f74da89399c2a9b22d3104a883c3ca667
Date: Sun, 09 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741549133
