Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565BB249ED
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720367783; cv=none; b=ItPnn34kAhASV3BmvOog61JqmZFO+tyy6+QaxlWtIVPjBPTflxsplW/1tIF1ufRr+JzR3hvWWEBrjlcFsI7CHDnxYfRTxagbGm1ZaG+S/JcIDkg6Z7QjQCAKau0HsPo4ikytbhMjTu5vHCQJKs1VG3FILf3Zuy4Ooq5O77TZjeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720367783; c=relaxed/simple;
	bh=Uxjgjl0sHIQb8EtRuxM59Ugn+PHz1ydAOHxz2PkiDmI=;
	h=To:Subject:From:Message-Id:Date; b=UYNyB1Oyzci+hPgFpsJ4M91B6nufSQILUnTKdCNxoBbXFpG6jP3a6v+RaaYaR/LRQsc4g4VawJ320UynIhXDfVBJ/TqkOiIHfb8SpbKqvLPUJtg0Kcv0vc+rc5Bu5aHkz6PhhDYe4r+8yiBAiVY0reMN1xn5+JkEiTyqfi/iCC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yxy/NApX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yxy/NApX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DFAC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720367782;
	bh=Uxjgjl0sHIQb8EtRuxM59Ugn+PHz1ydAOHxz2PkiDmI=;
	h=To:Subject:From:Date:From;
	b=Yxy/NApXNai2RfzPKaIa1nt/laU3iaozXexRM/tHzK7+OB0d7Dve3cA1jIw0+4p0H
	 +0VSLkwv45AY7c6y2lRgeWiZIAkVSCtwj2iKR9J0Dm2cWpoTWBZBD/ArXLMdicitXc
	 zu6+dkakUCY4VGoKqqdILcaA/NoJSPskTUa4USYrGFlPHmYv+rQ3wnrNI65dBAALgS
	 LBqCau0z/BSZZC5H2bpPy/A0MyrwKLPXJGDh7d855fQRjqlC1p3azvdDPp1ReMhh1H
	 gPvXKLO3VDQCWh/MDLvsgvRHyN9XWwaj2A2643tR9wrSMbjQRZ6q0McLgFn5pVviIY
	 5nk7xE4QwefOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C546FC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036778277.11562.525718279928104105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c664f789af6d1b4e4cef6f492f53c7ce7ea7e434bedd80f30fcb382f080183
Date: Sun, 07 Jul 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720367782
