Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052D73CBE89
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782822514; cv=none; b=FpS2/jnrAU2jvCgdDhAvGsVvcLAY6XU0OcSSjV1rOw0nC6YYvTXdfST9onWjeTpTRI7QiXU9Y6ZCrOMyVXcfZ1VFRSNc+WuQa/CuZoQRKWYKy12M3lY7b5lSRy/GNUU9WHKbJ++dOLOVlABjqHDYdX4K9wN5WLpPFQT2LegzfcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782822514; c=relaxed/simple;
	bh=QwN76VLGkAmO7kxofVLGElOzeu02tRhsreJBPCDFmIg=;
	h=To:Subject:From:Message-Id:Date; b=cSyen6gqLbrzVmBngdtq+firMCOSdq1v7/oFrolov9jKBWk90q2JlqNWUbeBBmjsOwqpytzGAfWuPjXTms4hushBzyCWc/jw+1B0KUg9hzRPBol4x1izdEAKg5mro91PRQaWWp/hmiUm/ANMwu8DbO5vOlummC0e5iJ3o2GSmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7Mey0W2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7Mey0W2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5674C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782822513;
	bh=QwN76VLGkAmO7kxofVLGElOzeu02tRhsreJBPCDFmIg=;
	h=To:Subject:From:Date:From;
	b=o7Mey0W2R2P6+YrteGTCKgWmUjTYyN7Nz/dgvOxGhYhbXnQoSBfuliUXxolegZCe7
	 1Ks/jNxA9NOdQxvdYHzMcOoYv38FwkfpE1Br0pHWc8cgaFnaeYzqqA9RyB98+TpnXq
	 j/79gx+qTSVR2dR4MnrTRTjEEkqIR7X2yVUydqH47Z98T0Xu3mvBgDBM8OSmf50CFH
	 GyBMIi+9kZIfTSvHBnrvSFZ7Oi/OYLmDLkSiVmhQV8h17TwWudq2FyEYV3LOV/OmRc
	 SXbQF39ckVUlLr915A06NZq34qwso370vse/aYoGzY9RS/H0HUUVCXboGcg0zqBnOs
	 WsAlUAtgJXwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CA5C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282251368.14917.13111922621482792420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c0a940ddf0e1d2f52c6af0cac4b311d722e9092b05ed53debbc5ac213718dd
Date: Tue, 30 Jun 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782822513
