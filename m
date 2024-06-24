Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656391A0B09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719267803; cv=none; b=CtqGEgDEpUX7j7ju5MiY3e334OAxCWUKXXsTTu4073Jx46U4pIVwLIgdo64d3e3K1ariUqrTiU8p8EsP/OsCw4ldlW39BYBGPuBwuM6M0gvOuIAFwm4zzQ7E03eVRW3VLrPS440K5Qk2pD/OucjAYbTjD5/0NOhKjJYqWyRT07Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719267803; c=relaxed/simple;
	bh=vTLXJLPkGZLgHdvirOQVsbs23+PpEXJ4BMFJMjxuxd8=;
	h=To:Subject:From:Message-Id:Date; b=Vsq+ldAegJkSrOLf1Q4X8lj/B+TqswUn3n1+uCFxipQBHbDm1P+h50yMaXaNr9Ku/ACqjwQZKwoKXILF1Wxo4vNF05kS5ZmFUpVaoAgPegb6Fqls6pVys+YZoY0eKlFEW9oIKQkJY8LEmYMqxM9nAdifsaq5NuExTtJbSQJe3io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSaVRVo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSaVRVo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BFFC32781
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719267802;
	bh=vTLXJLPkGZLgHdvirOQVsbs23+PpEXJ4BMFJMjxuxd8=;
	h=To:Subject:From:Date:From;
	b=ZSaVRVo02yAZg0s9G4lgPb3pQ/rvAqXIRUQ+C4x/43gpObviPEknrb6GIre+Z0Zq0
	 JGv6BSiPAb0v8jJ76VSniuYUNzLD3RD/um6ATF9N2ox1RItipdFsDmhaoNKuAZinlL
	 9PDmgusQARG3BM9PcGb4dOIRXpx8lLoHMInQA9yF6SbkB+IoHd3DZb1ziiALDmwnWI
	 DufeyfZrZWKwCQBgDosMHzBHf+Y4WjCGz2VvSwRLl/4T4VlYBVI+ijTdV9db+B7eCP
	 KK6jVXiTx4YFhpHHwrWj3dqWk5P5/QNLFIenWUz6AvHGY26afSMzNu0beK1WPb7B4R
	 mkqqLr4hkQvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B56C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926780280.12775.3852553458403715244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f02b4ba38608ab9376cce2d9ee15bb08ebb8b85f7a1302cc02e8c65b4edc4a
Date: Mon, 24 Jun 2024 22:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719267802
