Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFFFA47
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734299754; cv=none; b=K6GDjG27HECv2FvH9XTck0lZrDJkehtCdpdXxRAnB0VfX/n+GbcvRJG5GKdudBDHsW2F4tCNeWIO+wqgLMKk4pMt1GzkUzv6ui3Wt04+UZW6SG2yr8If+TT8/IdWocMr1eBytBIL19sEPAHUiHuZWBopg6T15D6daaMiKIhQnVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734299754; c=relaxed/simple;
	bh=CMtwBW1HLLAjJ17iM2MVm2jztOV+QX/bq/ug8VvIQUE=;
	h=To:Subject:From:Message-Id:Date; b=bgTMsE1lKjxFzKlqskcrXvljNZb6Oat6jJbJUowhbXqfxJk8CWhVZr5dFLrvMKx49cBXiy63nVjP8xo0IgwBmXVJNtRq7yGpTQQ01z/C4n81XyXZDVFkXkwS7oo6ba5FA+exPspJ/U4pvsUEiGoJ0PrZ1aIh2/QyfZuHi9CcSu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqKWqHNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqKWqHNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E93C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734299753;
	bh=CMtwBW1HLLAjJ17iM2MVm2jztOV+QX/bq/ug8VvIQUE=;
	h=To:Subject:From:Date:From;
	b=EqKWqHNeVD3CESZLKPC/lQ/OBzV3QDG40bDExAR6B5vePSCW1oMcbpZlf15XoNDPZ
	 0jsxN7S81NTHmtMz3LXwu4p+zB8YTm607bd+/d3vDUVvZlIoDSEn3CEUTLoKpIRvvV
	 GawPYEMbeILQM281rTGyKwZKwDNEYlAdkUGw61xh4RYKTjqazk/OYh3OlFpbyVbJlg
	 AECJTy3IZB38pSadV4vtDEZS3PxSl+YO+Ea9EmlrfGyJkv7gnp36m+1RT6JP53E5kf
	 1xArZS4jwMc5ZaDw3A1eFvYp4BiiXwiVUqjtSCvBuv66LYvmdHQWuQUdQh7HTheLmd
	 BV766uOzftN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E6E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173429975364.25278.10857449401538546845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8706210e3eaa8bbc9a8b5ec2ffd531fe7e41d8c2a0553539d4a9c5c6d6e757
Date: Sun, 15 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734299753
