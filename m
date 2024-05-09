Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CC7C13C
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715232743; cv=none; b=GLN1xRzO/y7fusuD1hMfAsN7kyUmB7b2V9EG8Lw6crL2VeXVzA/Rw8z4DsqpW4VoQVKwoLAzr7Y3bbCZ2xwJLpdY2iw+07XFkY5nAsOvosZcCLlii7UXxWNk0w/cj+UcIBEHsIkeCBFSko477HY4Ni2+7IsClbKM55BxNEH6a/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715232743; c=relaxed/simple;
	bh=kZtdeC6QQVq7esNTZm72URP0TFsP0MYInlF197TXcYE=;
	h=To:Subject:From:Message-Id:Date; b=mjOWCw2tAlOEI4Tw5/z7a8tc4gOGCsXnnNE2pDXBnwi6EpFM1GwVQepPAdAHysMwhsGTcz1wHqAhmRGktvpUIctoNIgJvZ1kAwnG4biXSDlqF+zQTfvarZwDWcsVOCaePhBZeYXwlMY7j4STbWnGYbLXTzFvlZwPiqsS1XR1vGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZuvesdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZuvesdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEC3C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715232742;
	bh=kZtdeC6QQVq7esNTZm72URP0TFsP0MYInlF197TXcYE=;
	h=To:Subject:From:Date:From;
	b=hZuvesdf3Zq9rMLsccjMLON3AV2W1a97fYdZ/lrEqDqH8ZecChyN5UVxwyfKjZC5C
	 /n9Zafpf6hCX5qdXbU7pXSZS2BGiEwCCZStHQ9Qsg7b4PaMhCQ/yKtAcKIHVuCycSI
	 JX0HIa2BTVzfh+rN1yAlY6P5R11gEAjCGP0JMWcLhXwUzLSeUof84C/cV8SKRCNPBm
	 vohRsU7T2uOu3IckQpmGOYftJWHQ3KZaHvjGVUlXIp9W17F9RS75jZzLbxuQEPeJdf
	 mQKkjObm4elgetIw8PFKEudvRTmGRZfEmrNBXfDocDF64WgxgN/iPTEA3+CgRx5NWQ
	 uyt9jXI6YIswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F1EC25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523274278.31475.4709346778130185503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51fad7539876e47099ee63582643452d469fbb62db3116f4629c1427f9c6846
Date: Thu, 09 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715232742
