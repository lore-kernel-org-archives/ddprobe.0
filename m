Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F0C226165
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770123233; cv=none; b=NDgbNYrUIaFcSBiEyD1Bh3SSRKTsyWxnGC9PdzQLjfmdcMqyhrgxn5xAS9cTADYJrFsw9BYDzvnDxCPJ32dR6tlfugfomuLAw3rn5HLZP5EFeXho6SCL7FA9qsK653Fp46oDXj7ZC7JuI6OgwtKr28XVvO1h+Gl0qsF0N5KhDZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770123233; c=relaxed/simple;
	bh=tD0kvNVrcj9iUMVruPykco/PeNj0iSbm9D8WP+Bcd1g=;
	h=To:Subject:From:Message-Id:Date; b=FA3P7pSGwGSsMnFGqvFbWW7jBMAxIDkxrFLerTm5NA2N0jveYzfl8raDNdy+GZeWOojXrMm2LL4Y+ElZ3bb9Ns0dWkmkSR40g68EwicoZLVbIZpW3Kydugg/uu5l/nQgUFeKEVzA3JZra4v4+kiQ6c6JEWp+6PZ2zkPE4RaIQuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCrEIDvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCrEIDvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9807C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770123233;
	bh=tD0kvNVrcj9iUMVruPykco/PeNj0iSbm9D8WP+Bcd1g=;
	h=To:Subject:From:Date:From;
	b=HCrEIDvhlT9+n1zHCNZfe8qOMucJzNLdobdIhumy7SCgIcW/RUxa7w7nL56GmTg5T
	 GUMqBB3KPsz3/uvKI8pZ3Jig5MDGdGW4YeuUO3NzEPsPgSaafMlVF5Jiek9bVE3rZQ
	 by1oWy32X7IU4Zp9Xn2Q+cIGw0vuDsFJyN5ixMSX20EqpjZaEnPrLgKXfccpCXWezf
	 DKtea41VaMNfrVAY7spRxAV4rApJVt6PCT2Rd0GPIAry3d/sW51Klnp9fPNb+KBkXM
	 DHh7y9pLfG4cIBSqVacSUWWmNkL7QwhSgMAyyGRLBT6OK879SohXUpx8+VWabrJFSg
	 DdF4/rGlD+sKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DEE87823
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012323361.29406.10766582273945639008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07da05d698cf099cb3ed84342ab8c8adc2957929017253d8eb2ec9a7ae9b276
Date: Tue, 03 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770123233
