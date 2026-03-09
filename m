Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1437B7262E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773027294; cv=none; b=Zzo322EZur0DbTYHvJjeP1QXL830EOT4LyM6s7844yM32VCwus/k0sucHZi+Ovks4jhCjyojfktqi7PunhmWVQsAL+cXupnk6csWjLNts5ePAHiT7G4+/Btr0OFGpdqwK0hwV7K4NoJHajIstFv4shNHVjJ85rxdiU3yC7dd7Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773027294; c=relaxed/simple;
	bh=oq63iEn++nNnjXxcSLd8LAENttMGBhrrTT5ylDyoRJU=;
	h=To:Subject:From:Message-Id:Date; b=co/8VGdPFv9YnzMGgQqYjx1+7mpxa5Sx6OZMJJC/9fjd1us+aJ/0cz1wxcwPOMPZst26NeTu9qQn/WvhpiXDKgyx0OEpFw/IUUo2jvtPnN/FFVlm/9nmLUN2O/cpGEMdiBaHgBaT/Cle+BcFyBPxlKyfJT8IspZfd1Xm2znTRG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi9MwCnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi9MwCnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773027293;
	bh=oq63iEn++nNnjXxcSLd8LAENttMGBhrrTT5ylDyoRJU=;
	h=To:Subject:From:Date:From;
	b=Gi9MwCnrMYLukYu+19CDJKSId9nDv1zQe4colQ406xGIlrXMu2pAJIx7yrrE1WfVG
	 8QEtJmulhGVAweSv1rvOe+MGWjfROmf3LGEvBvhn/ZbrFf8XT1favLeXeGEu2ZkFKV
	 drYqLff+1bHgealHSjMjqFqs+TlvDj81yqDPVQAYErxnxzSTdg2n4gKvKHhQPsfwdA
	 Pxrcs4oQUEMr2oqfNLjKUqcCcr0EfwQW8pvxMxq56/cQlH4tsQCeCP2OdOeypjxsMA
	 vYWDX3nseOoW5GQ5MKVgCIfLWwbagxLAvGem3RMtFSPtfVFw/UDwCQ4a9sS7/VCeST
	 7rw1x/nCc24FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCDEA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302729358.21685.15172630667232963790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac66cc69b308aa240ffe170931326e463ce7069dc663c0a6e7b56dd62206eddc
Date: Mon, 09 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773027293
