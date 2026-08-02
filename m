Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471A23054E4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785692434; cv=none; b=BHDg+2wyL4c8Qx8cBLfy1JLNMRn/jId3iD6jIbSeQDeiPYGJG6xCuj1/wo7kKWfPXyLZ+IfpaxCPPIe9BjN7POVuvlKfKpTXPpTm/FDeUA33OOGGR7iRgeJQe4jntr3mpBeOTtuNXtWM0H6AEtWWX/QbfhVEGpOrn+xB7CdTWvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785692434; c=relaxed/simple;
	bh=rsJ+5wkmI4TUQNLRDt9ds/T7Okh9grJ1dZ6X5+hBdgM=;
	h=To:Subject:From:Message-Id:Date; b=QI7JoKYjfkqmAZiVTa78C9lixccRB9+QN/LYWRsGsR9Y2/oSkqgvvOdn55rrPnO35+budZdpCDYPhe83LRlm+t7m0MpiRV3bmwNFO07X0jMfpent/Kon5lZHxWlMGP1HxfCeJwpHgb1Ip+Vm4oZJrKeecrCH86WERYtxLZz9ZZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+1ZQRL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+1ZQRL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33C1C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785692433;
	bh=rsJ+5wkmI4TUQNLRDt9ds/T7Okh9grJ1dZ6X5+hBdgM=;
	h=To:Subject:From:Date:From;
	b=m+1ZQRL2N0ufLMWBE/bAk/FLgXrf/pE0001rgt6tu51CSPaU6X56emdo55aKVUKPK
	 uqoBGUQ3BPtvu+L4Y2R+U7sXRMC8oE2FagnTM1T0Eba5z0FwpyFQIwYgXBTIJ4uEf5
	 WE5gxJryekfc849g5Qvsswr+uXrfSnofBaAObojoIJh4CUR52NRr1vakVw6TVC/tmR
	 Ijm4pfBpHPhgmrc4+3s/mzgs8XM5qVHMqgggceTaRMSRPr6VNGur2gAMkgBDHHP78+
	 Btyz+dMMCsR3ktueDOAHUgrew2rdCsMr0MFG78ivvl1wbZyucHpIrw2ZX71gBVhE0j
	 K6hcjlZAijV+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C3C55177
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569243368.6493.5168606797519706049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7a52a9d7652349ac948c867219f6201b23bcf5d2d8a2bf178917df30b55523
Date: Sun, 02 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785692433
