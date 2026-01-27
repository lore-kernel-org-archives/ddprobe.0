Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7840312819
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539433; cv=none; b=p+OmwVOuw6lo0FKehO/6s3qBHmw9ve9ZJz9Q7AQ0NyLJGbtOcfA1n344tAyFkhxpI6b+jK/IedCCbaP2ve7/CHg9fI2AZKlUtTfsY7DT1jeBVp/ApmyrQA9xWDp0cvNtyFTHXwK64Fxkvk0DutZUuZ7MwNkN/Q0KfTHjGCzZ3P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539433; c=relaxed/simple;
	bh=xIiyXv+AQe1elrJzJ8NWidUbGeb7/VCVfWM6jxBV/OI=;
	h=To:Subject:From:Message-Id:Date; b=OZZYdnDXCuH27DFdT/ouZy+MYmdCDcyJyW/wLA1h18iPDopGWsPM1N2b0EGOIJYhzmyQB+bfm22GbcaKoBoNI2Zq0BZE9uCmIppkrlY2C6/j1LG+0O8oiY/Fs4//b2YphBFjaX1WahZx7/6SijrAJkeD3mkXFc4HZVdaIq6QdRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGhY2FZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGhY2FZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8727C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769539433;
	bh=xIiyXv+AQe1elrJzJ8NWidUbGeb7/VCVfWM6jxBV/OI=;
	h=To:Subject:From:Date:From;
	b=GGhY2FZu4/hjAmIUAvXHfnmmaDG6tQlbTCw5GKzYzv55yNfbK0ZDXqLK0j+VrVQ9N
	 xGESXF4dBtexcGLDUv5gUOSayB3PDizGeeSBXnG2p4YnIT7he48jiM00j1KTYhvWoV
	 3X4Q86hoVZChCAhtyBk+BYsrLSFcj1wJp9IwsFyQ9qetCHSfwauZPj37vpTVv61wA1
	 FVQcTLl7h5eFw4u9DMKsNRE3b753MdiqJh8sB3W0RChwy+xNbmMDNccAFPxadTjpFw
	 VWB+3DI6Cp39Od04fZLxEtsLZRDyWH1qUD/NSOfoFS+vgRfIdVPQ74ULQSzH6E3zcK
	 rxE5SU0uvowrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B9D2FED9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953943358.2719.17772452971923934104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b65ca6b157b1cfc8052fc0402db06db0cc285d49927a94c2fb77b78d480c3fd
Date: Tue, 27 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769539433
