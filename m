Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CA138C400
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780617274; cv=none; b=kBmxjBbayt/h4jxIPmfCt+1UnkUO4KfVqGANadkrw42EjXkvDkBjLt8U/79/1lK/AYLukqS8xTOAnXRez7XuZmkalAf0hdHsrqPKCJXgcmHUE69it8OcMDK5yG0fYKPa68rxeIbX11GNMcMLuU+R49TEtgN0aitKbFsM+HQiyjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780617274; c=relaxed/simple;
	bh=xdH+9pz+QraCvQr8OB1FPYT+PFpeYSBHkrRLE1+ztNk=;
	h=To:Subject:From:Message-Id:Date; b=n4oD98qvbcrwzVb86OuM2rsgSBqTXxQaudiDKuxKnZcxPQzgMroqzuV7p7d9nsaMXQHk0rZiVuWOj7oAR2N9FB6Awk9M2aezSlWvClv02KG2xX/HzzJDEHHlz+6iiVHD8/YcSn+CtGahTnntZpmdBfRMfxfYyDHh56+2TizihqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms/WaEei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms/WaEei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42E0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780617273;
	bh=xdH+9pz+QraCvQr8OB1FPYT+PFpeYSBHkrRLE1+ztNk=;
	h=To:Subject:From:Date:From;
	b=ms/WaEeifVZUQE6GTZbNo4u5HMao4d5kM77UKB4CNxc3Pk5dobGWl5P7zHwvdBPko
	 n1+4kDtqL0AXmW1WAaABbnwRL4HR596zaKgFyj7EpAp9uzWNTkNQlXB1mVXVa0fYSf
	 Nvnx2cCsYfas3XY1Z2Vp881hMP59QDKMsvjC9BgZMTDKJZGfi7wso0jPgVMxF1oKcP
	 y2VcrIPHeEdrHzc+KfKG2ITT7uALKNb0UHKy2y7kVh1Qv2Y8w1vXl1tGOzp8u8d73F
	 ee3Z/FgScKVgIFooTq9rMC17x6YF27AoWLLQHmnCBKxwySjigfLCILHrYNE4K/Dcrg
	 y36f/o3jmEsAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82CCD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061727369.15522.9559927965258842272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d40a3b4da2b454969fbaf3c2c0a227b60fb8ff661ee45ee6d7db4661877c8ad
Date: Thu, 04 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780617273
