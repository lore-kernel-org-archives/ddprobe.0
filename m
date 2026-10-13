Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3977F3A9615
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791901834; cv=none; b=SluOUmXWsyNxU+eeGFeMXdrNmtPrWLce72rrdNAeRoCstmFHXozbsmhpUIl8LrNKCr+yipA06YQfhFx2gwAgNN20Z4enbnnABanaKuM9al6DIPpYSoI4IMtCy1gtJlGjg6CDcf3wZWbaP6HWAYu9Fsa7OxgG+Q0j+oipv7eDsKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791901834; c=relaxed/simple;
	bh=z1Rv+rNpV3wG3jCyN6AJfy7XXZO6Edzg5L6Aak2qBm4=;
	h=To:Subject:From:Message-Id:Date; b=Tys8YDPrevpdoo/5TAWFdwCfaVLmRRQp4aYEl0RQLLZ9ZsXJH/qcIzbg84TrnCgc8rEdZ9GQohOP3ti55b7BWFDlZ1/84TwqqevdSeaq0gob95nr4Ou4bRWvnrtXEMZh3rZLK4dhCa3xW35azH6SX++KPv2p9qr32e/S8I0omFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/IxKSDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/IxKSDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC071C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791901833;
	bh=z1Rv+rNpV3wG3jCyN6AJfy7XXZO6Edzg5L6Aak2qBm4=;
	h=To:Subject:From:Date:From;
	b=H/IxKSDUyhJnjk3QEaW23JKWiCwqDWB3fn1D2bUE+i+6WI5Ln/UMJo85KAQWePp4W
	 b+Kiid1Zc/4KplivGgCpVBfH6UGEav1LxHk+5bE4oCba5+/yjInMMpsr3/2TdtPRJI
	 TSaaitwDMGM22Pk6Bb2ftH1QsZY/riuNB4hSynE4rX5eNnxBlPMIShspR6wEXvXXyV
	 4L6wlXoWOMmGdGQJrBgTFfU4LK9ZOcpxjQGs+rIIYCS4Gwpos5c+vFGGmFGckwD7Da
	 A32ZR49+RmCo/JrfDAwE2oARHgAWoL7E0Pb160xXKAUzri++kI1FbQ5H54bjBXHxTv
	 d9Q8lPJDuwfCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20F0CC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190183371.21663.4275539016226022136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf1eda24167e64306062ad7f937098089051f563ae7255c21e920a465d0b2de
Date: Tue, 13 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791901833
