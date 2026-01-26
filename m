Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD442264CF
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769453034; cv=none; b=fux5G+9e+RNcWucCXMcQZrroV/JYf+ummcy6COGfmbz/SCJdsYH8EnGEQvOnbax6edzOCpHQvfJJGiUEtDS3PDBifOLfkApM9yr7sIZOvB3zkOxbdcWaIFYZoNRvFCfDJpuGRyDViNVAPEZ/8LwGJUck+BAXpY2xtxJKiPbv97Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769453034; c=relaxed/simple;
	bh=EvqFemJTuUVZdzSnFVbso35SRtqgELFt/Ie5mQSoHSQ=;
	h=To:Subject:From:Message-Id:Date; b=NiD+LvJ4ugG4+PzaidCFrND1SArWY0kzv8ZPRuQAYUFLYNcBo7E2TN+R+Hb8k4VViurSvntTkiyPWsSy235NgJhXrXmwCe1C3teTDmmiKEVy3S6MzmR1E3JijqIiJ2KAwWOhXsO/QUc9oyeXhxkItdIMxyNtZtsx7QstHbnIpNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLRUjj06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLRUjj06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769453033;
	bh=EvqFemJTuUVZdzSnFVbso35SRtqgELFt/Ie5mQSoHSQ=;
	h=To:Subject:From:Date:From;
	b=lLRUjj06G9MQZrc/bejQv9o/cBL6fNVYo228ELl5a2psXfVnx6z+G69EyNn1Zj50n
	 D64b4XLJyIf4mcv11oFe8FH9vambm6UfLDkajYCkhPKLnzC91w6CbBM/fRvpA9xBHV
	 qcy0/1m7cZaXV9UMq7dl7OF4/TDMhFk3z0d4yU0f4+iNngpVTkGS4leRo9IsR2rgZP
	 jbl9WMYSotRzmfe+XyUgslt8tfkh+bQXTdq4U8mnYLcGyHOoP9UlnIiNWY2COtkj8C
	 9uqyHzlKItgcp6z1BN53BnHoDgDJAlliEk6amVM+bRp9KaYG2++cuvdeLyF71i2m3O
	 wAAULF4ZhnrDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DCDD1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945303358.14007.6646607811004325170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd00ca4e345548c4b4f82b5b9d1cf554a74f2f61131b0f47d6a54448ba6cca1e
Date: Mon, 26 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769453033
