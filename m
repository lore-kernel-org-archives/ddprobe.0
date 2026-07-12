Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4158E17B425
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783822714; cv=none; b=kl/ftTBmXHB0iAF0h2x+0BzJ/v02fBWSYWUF8KEg9Ws/qc0uZkj3M4p0uDa0Qf/2HBL9hugq81/BDdkT10uji0HkrIgxV/a+BEKGOiYrhElMnl8fExhlW5DqxJcEHHdlxcKqzkZx2DIFlc8VHgniBwY3W+OGoWT6nYg0U/u8/8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783822714; c=relaxed/simple;
	bh=wmOsw/oS3HGEYts/5TcCW59dKazHArHRAd5oLN+u/s0=;
	h=To:Subject:From:Message-Id:Date; b=RCmaCdTWPTn0gyp/NjuNEk9H7clu+c8j5Prgo/F1Mub/3uhF3Fe3yWawl4RfR7CSOx97wxJhoIlXPaORM+kQMPCOW/4PYmpNPvzXZhP3RdAm1hVkOfN8qPfiv7QexAku1Tv8BdNopYnhq5e7LlBRPCX20hfkdwfD5I0FFM9tQqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtAW7luX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtAW7luX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783822713;
	bh=wmOsw/oS3HGEYts/5TcCW59dKazHArHRAd5oLN+u/s0=;
	h=To:Subject:From:Date:From;
	b=PtAW7luXWhblYhGlLTW6cneEROdncIaqGjP1loHCleBGa6jmMCl4xuRoSsUo5Rlc1
	 gbndEKgUDXuEtdsIpdN2GromG7VOrW5aICVJFjITvUySNlY07K7GO1XELfrdYrbri7
	 2etcbSSvEmEyuxU9qwSifh1bS6deEamiJ5VjeyJS/9SNX8pBNYCWC/n5fld1s8gh7x
	 BmRE6ocuT1c/O9zkiFyCVd2Lpwl9abQPKn8/TAFkIjO2CB3wonzqgE1ZoNP1QSknav
	 qAZCADfn8riN1IY/7nQg4YB/dF146zAEAnvg4mmvIi8nySThf2K+WrIFdQh0cP63hZ
	 HA3fbYRf7lMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE51C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382271367.12793.7844853861374732563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ee7064a7aa3abd86a3c193aa23e1ce8c1a4c040ab7c0f8f154381754ccb13d
Date: Sun, 12 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783822713
