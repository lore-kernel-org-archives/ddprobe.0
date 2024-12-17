Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF9B20EB
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734408954; cv=none; b=vFFrVvztfOhc3+9eh0jHoca61b/z1Rg3e+SM2h13OM+NQW0MkEhTtnW8moWesWJb/KrL3qHSZnYp0yy7FnSbYqkZIvi+Ul5r4Pf/bCH0z+OHQ5KmnBfwkCRtPJTTOzLRbC/LQCKsPST4JhRGTlPfA+/2KEH/xtb1SuzrQLv7zPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734408954; c=relaxed/simple;
	bh=oVO2s62S4lyEn8Hzjm7PF1IK53nhjgu0bPK+3EYzCts=;
	h=To:Subject:From:Message-Id:Date; b=nHbYlcnXgnMkaB59P4ZVCPDu4FJ0aqUut5Zd2FG0P6njn17lj6RRssBXVRp4YzWNPGUPO6KbvzaJqH/Yj8vNrJOd4OsH6Oooif2fvcnoa1Y58smYxQB9EYl8jGgZdXC+a26dsPKAcvgKr7UhNfMMsrtlmQkMLUsyc1FKiA3NYVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdflOI17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdflOI17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B716EC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734408953;
	bh=oVO2s62S4lyEn8Hzjm7PF1IK53nhjgu0bPK+3EYzCts=;
	h=To:Subject:From:Date:From;
	b=sdflOI17dvjo88J6GLpFQeERgevRJZ/btZknjEQzwXn3I+GzDxegEMUDvamOXYi0q
	 hgb0bn2bo+DpGvD156ZEV9sSLltFiIPrTGSVdHtfIgd0TVapMXYqRVTFZeI01fiqRJ
	 B6usRpEGNUagBdcsBw0DGo5Zs2vvUo26XNkKbHP5pgo/IJWJzEHzylijASa5fO/P1a
	 6D1WK8eyYzaX0c56K5zgv/gJIlYddbyFTp3O/SYdtJIXD/zHo7nGN0Oxq4vF1Na2Ky
	 qu89DmlyasSCStf8nNnAZxBNlX8gpYUHmrx0GNgjeNhW+EfjZzFjYEn8pyETclNe7/
	 FITw4lMAoJPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF4CE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440895361.15590.10718232457972977742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616cded8d5b74a52f9a8687db189d2c444dfc15bad0f981532d256afbf07d62c
Date: Tue, 17 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734408953
