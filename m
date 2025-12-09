Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2253626F443
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765307574; cv=none; b=tKKcuNHIirPYNcMh6uq23TXQfG0Y4SpG2O+zDYDEiWia42XxGyIX7E+oFPUDR7aj3Af+27jfMOCu2O4IYBTY2Q86ipABnGeH3gcc0+N8k1LglVyx5RkCZvaTlxp+TjpMVpPBYhPl7EfE20R12iDYYXYHyr3TCCrx/QEvPYEE0RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765307574; c=relaxed/simple;
	bh=mSAHYxGsKI3etl15YNhEj1P/+79uvpjr+RIb8dH0Ta8=;
	h=To:Subject:From:Message-Id:Date; b=KLujua31fkWKw9hMZRZMqcp/XIKEVNala/g6laTw3Fa13KlBqw+zWuM5/4W4DSdAuHxO3dPoKPnFnG4iWjbLzv0c1nWc0hK6ZrlWcYUJFBeHg9DCEIwhOHO88wwGCPn1qswQJd3LoSnezCK/dtcenqEjJ1jNXeSEAyQ7lL/RjEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqvPBY5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqvPBY5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D38C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765307573;
	bh=mSAHYxGsKI3etl15YNhEj1P/+79uvpjr+RIb8dH0Ta8=;
	h=To:Subject:From:Date:From;
	b=jqvPBY5//orgwmQpaMdo1VuiP9QxXcTzPivUpnpHzSyHITM7k/8kSg3qXmVGCeOj8
	 gbEBGD57L6rhMJ982/jmU+ABGGX2zdo1WHVHf1g0KiHE8p9t8OVhEQAILLpxu2V4cu
	 6Gf1K0My8kU+QjFHh020B694Jhmvr4K84siRGPh/21WE6mg8PsDCz7lEzXwyzvHWTj
	 JJwD+GGrhBIDvSKic+N2K4jBhPvgn7Ed5ANeSM2n7JcoqmMrMi5jHyS7p1Q3iRn6Ck
	 L61uOegq4bUJVD3vb5xwiQNo1D8Gp2cigH3SGANrzcS/MMR7z9wceKP10f5kRdJj1W
	 oXeFgA2rJJ62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93796D3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530757358.3172.8755888148810709796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e11ab22a2947e960e75f21c510566791349a2b0bf7d9f445a08f39f0660a8ce
Date: Tue, 09 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765307573
