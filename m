Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B4BA3F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760093394; cv=none; b=H+qoxBnDR+hasLzsZR1tv0rFcIrBIYyeKXqaZzbxO3BopKGvVJkd2DxCT9knH/5Dn/cPbk2bisIwDFZZRRBJCj1qRqH6ypBfIkMnGD39V+PVG0oylUFDtzLtxvmmV0RICwzXsfzKWLM/VVyRcRQ3NEOdzsWFuZL7nd3RxeyX2Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760093394; c=relaxed/simple;
	bh=8Q5cQ8sK9zg0XwB9SVpVs+wbZ4vA7tDmQ4+39wEpSLA=;
	h=To:Subject:From:Message-Id:Date; b=Dsjm81DcmfaLxObui/fxqEL82OBqYrsOoewfc7err9l+A3ZTSlaFqTAQEMcxqAgji+qjqLizQ8fyRIzPHqYfwJ42jLyoZy1SYmRR28zIKVAsUo++CKdn8MoHLjEEIcsBHR6rSriV3T/0cOSy32AKk6tAMDTiNbOvlsqm5ducjNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVAv1Uey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVAv1Uey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760093393;
	bh=8Q5cQ8sK9zg0XwB9SVpVs+wbZ4vA7tDmQ4+39wEpSLA=;
	h=To:Subject:From:Date:From;
	b=rVAv1UeyTsFUoPd/4/RVG5v+KYhhOeSGbuS0XA2PTQ2SKdbfCBp0yqJMsWwrUIEWc
	 eI1ooDwuRrvY7mQzeH+gD9pRrRYfMQ9PNmdY9C5jXB1Ez/arFnndHhV3fF49mKppy2
	 twKB/TExgRYiMDRdqtv2W6mFZzgpOQVevqtV9rMWxaFTpGSOPcCYX4lPfvFvTD+tV4
	 PQa2UQw+6juD735ZgiLV6dgHHgPN1wZ9Om0gbFawSQ6UyKtOO+eWUuCyDBOf3lg3YD
	 PrupD6mqaaUrZpV3VPuNlqiiGZFVjjxdW4CDAnKiFpemmZMywK1VmCRGqwz+lnZm4z
	 1Qs3iy2r8x97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F676CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009339357.4020.9732009009167516405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f012347d922f6670391c56be1340401c127637511857aa82b30b4362da6056
Date: Fri, 10 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760093393
