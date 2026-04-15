Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113AD31B80E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776244054; cv=none; b=tBlvmlOJNmoQFyrxiov4RfJGgKkmgCXodNHxCae0obp2XMwO08431kIHC++rDUmA75tccfqgu2NtWq6up9k021StWTQA5uWALhdAVjgX3/fdvtq6D4qTF3I2v3KCXTS9BGJQfnTuGaE1SQy+PfyuTt6MiANdkkYBNK/JBz3aS5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776244054; c=relaxed/simple;
	bh=GC3RztQBZIQ1vm1KwkiEludmElbEJACJAkDUqx7nTYA=;
	h=To:Subject:From:Message-Id:Date; b=GhpIGm8Yjj/f5ndAh0BaQkUWfCN+InofsufbrhOnVmhbbTKUjV4vYXY9XM4Qu002UdYGDbeQTXT2VzEksuJ8d18xRvg4HwImTSeIdoO7VFuiHGhQsIu6uMQAugRl960Kd9VVbDo2y21QKpFr1nn5LbUgN6EpxuXYdNXCzVmqTNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbPo4ZpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbPo4ZpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8AFC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776244053;
	bh=GC3RztQBZIQ1vm1KwkiEludmElbEJACJAkDUqx7nTYA=;
	h=To:Subject:From:Date:From;
	b=VbPo4ZpF1J5PR34AE+jrBmhx49ZxUOxC/TcfGGyoKPkM87CbqxLQxKYFtn6hQ+yw9
	 kEZNBV+uU1CURU6VCEecMFV1LJQ2AlTGS4OaaQGBSWVEfpVCoENwe/KkRDNNDa/YYq
	 JG9Ce0kKad0XfX1VBj/vosicJ0R3+PxqW5AUEVSPTjET4BGxNG9jwAblS2uPxROURw
	 u3W52MYEZuX6H1mnr59ei3uZMTzd0/7/Vh/beeAol6kA3luMsB4ZRDtEAVTROl9IPi
	 /VHo/DS810uNtGTYRZmFM7cHlhz3WpoQ4ylW1wNQQRz3VtwvZJYUazGe1PBC6Y6gJy
	 iK5Xyoql7q+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA531F531FC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624405368.9475.15813070111851850615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e161d60edb24309c506628064e0a064bc9c0f9698d834a2584cc9ae81243fec
Date: Wed, 15 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776244053
