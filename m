Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D87D3BBA0A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776423454; cv=none; b=pnXLWsbwXVLmjXHmVrA1A92RLaxlKKsebN2ONURxA2lfd1us+N3VLtoONlB7UeiTw+CJoMBe4hd779JSZoJc4w/+LamRaMxG+vKQjxmoRMPIbmEEJt1dRLtKrGYgPBiuHUd4lYgEjrniVOlPPVTdjniXI9aJwak+kp/i/OjOo1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776423454; c=relaxed/simple;
	bh=ZUxJIpDm18xq4Y85gF4NoVRuxkL3F9/EW9i2Eks7nkQ=;
	h=To:Subject:From:Message-Id:Date; b=f7PtWkGypQYKuQRAONEZyq7yJrmjZSs8S3z0AVX8stB7c6TD4W/U6XeGi5KeqTpjY8Y86QMj++6wJxgiqxWUwXZcX86Yi8GJIWu87TdLDusNfZJAGBJIF1nO9L+/JhCkv2IvXnW+nDQCEXZwAlffGst3MOx9Q33Pgjem5UkekYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTRy+aMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTRy+aMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F01C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776423453;
	bh=ZUxJIpDm18xq4Y85gF4NoVRuxkL3F9/EW9i2Eks7nkQ=;
	h=To:Subject:From:Date:From;
	b=oTRy+aMGXk005IlsrMG4bPzuKWCqIw6Hr44bTI+dCkqnHq3QSEYP14YFUdJDgVJYC
	 CwoTpVfmrKXvzRNVcHD35kt6s66x5fIxSZoS3jKQLEetNJci1yxzMyeZ9bwJA2Bdl9
	 va41/3bxcaJ2y0JUgOkwYixfTb6PIDApE59xV3eSRAb9d5R9pe7niSPGVuYvZjErxP
	 OSApKI2nPSbhdQql9mr5bxBZzjWg707f1/hz63gAApajPJc8x7I3b1FTFoWLbGGQXk
	 5WvfcZoA6zBKWPRTuBvSWjuB89i0vfmHrH2oQ4f927jCLHvGjDtvxLAuU1xmZeMO1L
	 Ba1gxSWQvudXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F80F4368A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642345368.13080.11800656851303382562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af20d39d25c25f0551678df0e09d1bac0f21380740c75d129de5c64a333e17c0
Date: Fri, 17 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776423453
