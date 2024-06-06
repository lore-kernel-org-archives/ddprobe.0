Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA4619D8B5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717665443; cv=none; b=l1YlbQ/80c4CuC3JfwooUvPjSYfqaAORalgX9vwM0WPBYhJdk/nSHtjwlWB5nE1rdgG9mwPIHK8P0JpyE6RJHyH3OCvbhuMM88W0J/vMqLvSpcwny7ZsZ74lfcvvrOob13XEKHafv/3r4tgX4N8aoQG99BADGdtpry9nYWPlfs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717665443; c=relaxed/simple;
	bh=FVDLdXAClJXIKyMFsZbWiRfcttuo0uNPUBGrFEaYPtQ=;
	h=To:Subject:From:Message-Id:Date; b=p8aFgbJMHkTzmmbBVnEx08a9/3r5rncCcz0JoeQ6qPBRSU8+pZNS/WsWCDU3RGSeUdmt8iRlmkMtoI5GdyLC06mxPPFrumD3SXcbKhfTRlroALNMzqB/s0OqNacbFKZJA7dz8gGHZMY7fEcEI96vNXxbIha++Ipg1KOidsomB0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTQEeuBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTQEeuBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A99C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717665442;
	bh=FVDLdXAClJXIKyMFsZbWiRfcttuo0uNPUBGrFEaYPtQ=;
	h=To:Subject:From:Date:From;
	b=lTQEeuBPB0S25PKJji4VyNTbkLW65bh0p2K4LZjajGTxWYWsoUKku/O+nuX0v3dAQ
	 8KpqbyFeHVuC32k/E+qvlKIzhNDRcFcIEkPGznXe9ecbTFxE7+vbzX+pmLXmsVT9Zj
	 54Kt5RUBbcnVx728THHo2kuG17+y8mTYUAUeQKXm2Jb576aRbkTiq0b/32rZF3vso6
	 bSfukqx4m7Qv/3xVYolBf7RA71atFqKqamVtgrIGzuct0nuEDdqS/oNYuT1g+w4ORq
	 1gHg9vmniFzV2mYsr1ns8ReQU+lFS5wMX13ipc+unnk2L/xXrvnxHScfrdgxLwxUjK
	 piWaLF9w/K25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34DDC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766544279.32115.7411302821866327671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18de36149dd78bf061aa41274e27b082b4f4375a377a9bacc010416d7beb8477
Date: Thu, 06 Jun 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717665442
