Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A28722A4EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750721994; cv=none; b=WhlApTuTmwO3Hay/wLN9yEnc2pCto6CbJecq2Qe0SLVyVrJ/fJtGRerIsfKz2ge2QC09JFJE9PuCfZF2juej0+rdBbF7Bf+SswadRLAfvdM7lcWIaze+FwQE2v4vJB16Kr/Gov9lCgxR+7zyaoJiUP+BPeTSdjmznr/y+6SME94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750721994; c=relaxed/simple;
	bh=FU7O8FvnVPgaWvanuw9qWWLFCtxQcTeRkJDcjdAbdxY=;
	h=To:Subject:From:Message-Id:Date; b=qhYIOxF/WSoU5o2toi6zuNEkf0igvi7YgIDB692/4hfEjRBPmC/q5qoFOEv213o/gDvtK60kyC8+XSuLTuS+Ts/MNso8iq3SswwlLi5xbVm8gCiGsdHa9rD7DwFYbM8vRfBd6fgwihNnyVrSEf8H9mG052fCvwz9vTga1HKe++o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPa91uyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPa91uyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2101C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750721993;
	bh=FU7O8FvnVPgaWvanuw9qWWLFCtxQcTeRkJDcjdAbdxY=;
	h=To:Subject:From:Date:From;
	b=iPa91uyvdGzf0YomZ2RM6f5UipAtbrxUTE90qqkM3bkaKg8gGhepeRbwEeuLyC5O7
	 axlGmRJi4aO2xsyzz4DCKhxM9tMBDT8HJlRS2g9rIIRJ64CeiMjLf0MuTTYV5Z1m1c
	 4thx+wz1/6qzRdrJkS/fK97PKhaK20w5npSN50Fnjk3X+CFzuKvLP5o4vsN4TtAL45
	 t2HNfNoEKmBiaux+YmAB0B85XAaPfrYWLx2TBlj/FwxY+92cSozQ0wJMqpwDRO8cfn
	 Q0uRARNotquYyhLUjjVdsZI1P9a7aMVkAFOkSnpUPNkRVsOzSNHd2FpRiUeUNXJym3
	 KRI94cQWjB5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D9C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072199357.16187.7698005204737713892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15edd3431aa041f31972ba74c9d2c2340a936d0b151f29a92db62c6f9ebbb5d
Date: Mon, 23 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750721993
